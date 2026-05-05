.class public final Lcom/google/common/graph/ImmutableNetwork;
.super Lcom/google/common/graph/ConfigurableNetwork;
.source "ImmutableNetwork.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ConfigurableNetwork",
        "<TN;TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/graph/Network;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    .local p1, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    invoke-static {p1}, Lcom/google/common/graph/NetworkBuilder;->from(Lcom/google/common/graph/Network;)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/ImmutableNetwork;->getNodeConnections(Lcom/google/common/graph/Network;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/graph/ImmutableNetwork;->getEdgeToReferenceNode(Lcom/google/common/graph/Network;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/graph/ConfigurableNetwork;-><init>(Lcom/google/common/graph/NetworkBuilder;Ljava/util/Map;Ljava/util/Map;)V

    .line 50
    return-void
.end method

.method private static adjacentNodeFn(Lcom/google/common/graph/Network;Ljava/lang/Object;)Lcom/google/common/base/Function;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;TN;)",
            "Lcom/google/common/base/Function",
            "<TE;TN;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    new-instance v0, Lcom/google/common/graph/ImmutableNetwork$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/ImmutableNetwork$4;-><init>(Lcom/google/common/graph/Network;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static connectionsOf(Lcom/google/common/graph/Network;Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;TN;)",
            "Lcom/google/common/graph/NetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 104
    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {p0}, Lcom/google/common/graph/ImmutableNetwork;->sourceNodeFn(Lcom/google/common/graph/Network;)Lcom/google/common/base/Function;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    .line 105
    .local v0, "inEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {p0}, Lcom/google/common/graph/ImmutableNetwork;->targetNodeFn(Lcom/google/common/graph/Network;)Lcom/google/common/base/Function;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v2

    .line 106
    .local v2, "outEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    invoke-interface {p0, p1, p1}, Lcom/google/common/graph/Network;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    .line 107
    .local v3, "selfLoopCount":I
    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-static {v0, v2, v3}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->ofImmutable(Ljava/util/Map;Ljava/util/Map;I)Lcom/google/common/graph/DirectedMultiNetworkConnections;

    move-result-object v4

    .line 113
    .end local v0    # "inEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    .end local v2    # "outEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    .end local v3    # "selfLoopCount":I
    :goto_30
    return-object v4

    .line 107
    .restart local v0    # "inEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    .restart local v2    # "outEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    .restart local v3    # "selfLoopCount":I
    :cond_31
    invoke-static {v0, v2, v3}, Lcom/google/common/graph/DirectedNetworkConnections;->ofImmutable(Ljava/util/Map;Ljava/util/Map;I)Lcom/google/common/graph/DirectedNetworkConnections;

    move-result-object v4

    goto :goto_30

    .line 111
    .end local v0    # "inEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    .end local v2    # "outEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    .end local v3    # "selfLoopCount":I
    :cond_36
    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {p0, p1}, Lcom/google/common/graph/ImmutableNetwork;->adjacentNodeFn(Lcom/google/common/graph/Network;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    .line 113
    .local v1, "incidentEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-static {v1}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedMultiNetworkConnections;

    move-result-object v4

    goto :goto_30

    :cond_4d
    invoke-static {v1}, Lcom/google/common/graph/UndirectedNetworkConnections;->ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedNetworkConnections;

    move-result-object v4

    goto :goto_30
.end method

.method public static copyOf(Lcom/google/common/graph/ImmutableNetwork;)Lcom/google/common/graph/ImmutableNetwork;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ImmutableNetwork",
            "<TN;TE;>;)",
            "Lcom/google/common/graph/ImmutableNetwork",
            "<TN;TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    .local p0, "network":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/ImmutableNetwork;

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/graph/Network;)Lcom/google/common/graph/ImmutableNetwork;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;)",
            "Lcom/google/common/graph/ImmutableNetwork",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    instance-of v0, p0, Lcom/google/common/graph/ImmutableNetwork;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/graph/ImmutableNetwork;

    .end local p0    # "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    :goto_6
    return-object p0

    .restart local p0    # "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    :cond_7
    new-instance v0, Lcom/google/common/graph/ImmutableNetwork;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ImmutableNetwork;-><init>(Lcom/google/common/graph/Network;)V

    move-object p0, v0

    goto :goto_6
.end method

.method private static getEdgeToReferenceNode(Lcom/google/common/graph/Network;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;)",
            "Ljava/util/Map",
            "<TE;TN;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 96
    .local v1, "edgeToReferenceNode":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TE;TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "edge":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v0}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_c

    .line 99
    .end local v0    # "edge":Ljava/lang/Object;, "TE;"
    :cond_22
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method private static getNodeConnections(Lcom/google/common/graph/Network;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;)",
            "Ljava/util/Map",
            "<TN;",
            "Lcom/google/common/graph/NetworkConnections",
            "<TN;TE;>;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 85
    .local v2, "nodeConnections":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TN;Lcom/google/common/graph/NetworkConnections<TN;TE;>;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 86
    .local v1, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v1}, Lcom/google/common/graph/ImmutableNetwork;->connectionsOf(Lcom/google/common/graph/Network;Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_c

    .line 88
    .end local v1    # "node":Ljava/lang/Object;, "TN;"
    :cond_1e
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method private static sourceNodeFn(Lcom/google/common/graph/Network;)Lcom/google/common/base/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;)",
            "Lcom/google/common/base/Function",
            "<TE;TN;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    new-instance v0, Lcom/google/common/graph/ImmutableNetwork$2;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ImmutableNetwork$2;-><init>(Lcom/google/common/graph/Network;)V

    return-object v0
.end method

.method private static targetNodeFn(Lcom/google/common/graph/Network;)Lcom/google/common/base/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;)",
            "Lcom/google/common/base/Function",
            "<TE;TN;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    new-instance v0, Lcom/google/common/graph/ImmutableNetwork$3;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ImmutableNetwork$3;-><init>(Lcom/google/common/graph/Network;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic allowsParallelEdges()Z
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->allowsParallelEdges()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic allowsSelfLoops()Z
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic asGraph()Lcom/google/common/graph/Graph;
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ImmutableNetwork;->asGraph()Lcom/google/common/graph/ImmutableGraph;

    move-result-object v0

    return-object v0
.end method

.method public asGraph()Lcom/google/common/graph/ImmutableGraph;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ImmutableGraph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->asGraph()Lcom/google/common/graph/Graph;

    move-result-object v0

    .line 72
    .local v0, "asGraph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    new-instance v1, Lcom/google/common/graph/ImmutableNetwork$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/ImmutableNetwork$1;-><init>(Lcom/google/common/graph/ImmutableNetwork;Lcom/google/common/graph/Graph;)V

    return-object v1
.end method

.method public bridge synthetic edgeOrder()Lcom/google/common/graph/ElementOrder;
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->edgeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic edges()Ljava/util/Set;
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->edges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/ConfigurableNetwork;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inEdges(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDirected()Z
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->isDirected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nodeOrder()Lcom/google/common/graph/ElementOrder;
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nodes()Ljava/util/Set;
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lcom/google/common/graph/ConfigurableNetwork;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic outEdges(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork;, "Lcom/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
