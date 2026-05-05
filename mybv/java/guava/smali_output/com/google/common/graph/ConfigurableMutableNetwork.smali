.class final Lcom/google/common/graph/ConfigurableMutableNetwork;
.super Lcom/google/common/graph/ConfigurableNetwork;
.source "ConfigurableMutableNetwork.java"

# interfaces
.implements Lcom/google/common/graph/MutableNetwork;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ConfigurableNetwork",
        "<TN;TE;>;",
        "Lcom/google/common/graph/MutableNetwork",
        "<TN;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/graph/NetworkBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/NetworkBuilder",
            "<-TN;-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "builder":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<-TN;-TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;-><init>(Lcom/google/common/graph/NetworkBuilder;)V

    .line 48
    return-void
.end method

.method private addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;
    .registers 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/NetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-direct {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->newConnections()Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    .line 71
    .local v0, "connections":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    iget-object v1, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/graph/MapIteratorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :goto_d
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 72
    return-object v0

    .line 71
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private newConnections()Lcom/google/common/graph/NetworkConnections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/NetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->of()Lcom/google/common/graph/DirectedMultiNetworkConnections;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-static {}, Lcom/google/common/graph/DirectedNetworkConnections;->of()Lcom/google/common/graph/DirectedNetworkConnections;

    move-result-object v0

    goto :goto_10

    :cond_16
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->of()Lcom/google/common/graph/UndirectedMultiNetworkConnections;

    move-result-object v0

    goto :goto_10

    :cond_21
    invoke-static {}, Lcom/google/common/graph/UndirectedNetworkConnections;->of()Lcom/google/common/graph/UndirectedNetworkConnections;

    move-result-object v0

    goto :goto_10
.end method


# virtual methods
.method public addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 13
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "edge":Ljava/lang/Object;, "TE;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 78
    const-string v5, "nodeU"

    invoke-static {p1, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v5, "nodeV"

    invoke-static {p2, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v5, "edge"

    invoke-static {p3, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, p3}, Lcom/google/common/graph/ConfigurableMutableNetwork;->containsEdge(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 83
    invoke-virtual {p0, p3}, Lcom/google/common/graph/ConfigurableMutableNetwork;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v2

    .line 84
    .local v2, "existingIncidentNodes":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-static {p0, p1, p2}, Lcom/google/common/graph/EndpointPair;->of(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v4

    .line 85
    .local v4, "newIncidentNodes":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v2, v4}, Lcom/google/common/graph/EndpointPair;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s."

    invoke-static {v5, v7, p3, v2, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .end local v2    # "existingIncidentNodes":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    .end local v4    # "newIncidentNodes":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    :goto_28
    return v6

    .line 93
    :cond_29
    iget-object v5, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v5, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    .line 94
    .local v0, "connectionsU":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsParallelEdges()Z

    move-result v5

    if-nez v5, :cond_49

    .line 95
    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/google/common/graph/NetworkConnections;->successors()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    :cond_43
    move v5, v7

    :goto_44
    const-string v8, "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder."

    invoke-static {v5, v8, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    :cond_49
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 102
    .local v3, "isSelfLoop":Z
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsSelfLoops()Z

    move-result v5

    if-nez v5, :cond_5b

    .line 103
    if-nez v3, :cond_56

    move v6, v7

    :cond_56
    const-string v5, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v6, v5, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 106
    :cond_5b
    if-nez v0, :cond_61

    .line 107
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    .line 109
    :cond_61
    invoke-interface {v0, p3, p2}, Lcom/google/common/graph/NetworkConnections;->addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    iget-object v5, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v5, p2}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/NetworkConnections;

    .line 111
    .local v1, "connectionsV":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    if-nez v1, :cond_72

    .line 112
    invoke-direct {p0, p2}, Lcom/google/common/graph/ConfigurableMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v1

    .line 114
    :cond_72
    invoke-interface {v1, p3, p1, v3}, Lcom/google/common/graph/NetworkConnections;->addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 115
    iget-object v5, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v5, p3, p1}, Lcom/google/common/graph/MapIteratorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v7

    .line 116
    goto :goto_28

    .end local v1    # "connectionsV":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    .end local v3    # "isSelfLoop":Z
    :cond_7c
    move v5, v6

    .line 95
    goto :goto_44
.end method

.method public addNode(Ljava/lang/Object;)Z
    .registers 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableMutableNetwork;->containsNode(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 56
    const/4 v0, 0x0

    .line 60
    :goto_c
    return v0

    .line 59
    :cond_d
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    .line 60
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public removeEdge(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "edge"    # Ljava/lang/Object;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    const-string v6, "edge"

    invoke-static {p1, v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v6, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v6, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 144
    .local v2, "nodeU":Ljava/lang/Object;, "TN;"
    if-nez v2, :cond_10

    .line 154
    :goto_f
    return v4

    .line 148
    :cond_10
    iget-object v6, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v6, v2}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    .line 149
    .local v0, "connectionsU":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    invoke-interface {v0, p1}, Lcom/google/common/graph/NetworkConnections;->oppositeNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 150
    .local v3, "nodeV":Ljava/lang/Object;, "TN;"
    iget-object v6, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v6, v3}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/NetworkConnections;

    .line 151
    .local v1, "connectionsV":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    invoke-interface {v0, p1}, Lcom/google/common/graph/NetworkConnections;->removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsSelfLoops()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    move v4, v5

    :cond_34
    invoke-interface {v1, p1, v4}, Lcom/google/common/graph/NetworkConnections;->removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 153
    iget-object v4, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v4, p1}, Lcom/google/common/graph/MapIteratorCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    .line 154
    goto :goto_f
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "node"    # Ljava/lang/Object;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    const-string v3, "node"

    invoke-static {p1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v3, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v3, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    .line 125
    .local v0, "connections":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    if-nez v0, :cond_11

    .line 126
    const/4 v3, 0x0

    .line 135
    :goto_10
    return v3

    .line 131
    :cond_11
    invoke-interface {v0}, Lcom/google/common/graph/NetworkConnections;->incidentEdges()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, "edge":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lcom/google/common/graph/ConfigurableMutableNetwork;->removeEdge(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 134
    .end local v1    # "edge":Ljava/lang/Object;, "TE;"
    :cond_2b
    iget-object v3, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v3, p1}, Lcom/google/common/graph/MapIteratorCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/4 v3, 0x1

    goto :goto_10
.end method
