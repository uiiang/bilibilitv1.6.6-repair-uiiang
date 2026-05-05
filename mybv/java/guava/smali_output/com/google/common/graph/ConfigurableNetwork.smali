.class Lcom/google/common/graph/ConfigurableNetwork;
.super Lcom/google/common/graph/AbstractNetwork;
.source "ConfigurableNetwork.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractNetwork",
        "<TN;TE;>;"
    }
.end annotation


# instance fields
.field private final allowsParallelEdges:Z

.field private final allowsSelfLoops:Z

.field private final edgeOrder:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected final edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MapIteratorCache",
            "<TE;TN;>;"
        }
    .end annotation
.end field

.field private final isDirected:Z

.field protected final nodeConnections:Lcom/google/common/graph/MapIteratorCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MapIteratorCache",
            "<TN;",
            "Lcom/google/common/graph/NetworkConnections",
            "<TN;TE;>;>;"
        }
    .end annotation
.end field

.field private final nodeOrder:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/NetworkBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/NetworkBuilder",
            "<-TN;-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    .local p1, "builder":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<-TN;-TE;>;"
    iget-object v1, p1, Lcom/google/common/graph/NetworkBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    iget-object v0, p1, Lcom/google/common/graph/NetworkBuilder;->expectedNodeCount:Lcom/google/common/base/Optional;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/common/graph/ElementOrder;->createMap(I)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/graph/NetworkBuilder;->edgeOrder:Lcom/google/common/graph/ElementOrder;

    iget-object v0, p1, Lcom/google/common/graph/NetworkBuilder;->expectedEdgeCount:Lcom/google/common/base/Optional;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/common/graph/ElementOrder;->createMap(I)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/graph/ConfigurableNetwork;-><init>(Lcom/google/common/graph/NetworkBuilder;Ljava/util/Map;Ljava/util/Map;)V

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/google/common/graph/NetworkBuilder;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/NetworkBuilder",
            "<-TN;-TE;>;",
            "Ljava/util/Map",
            "<TN;",
            "Lcom/google/common/graph/NetworkConnections",
            "<TN;TE;>;>;",
            "Ljava/util/Map",
            "<TE;TN;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    .local p1, "builder":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<-TN;-TE;>;"
    .local p2, "nodeConnections":Ljava/util/Map;, "Ljava/util/Map<TN;Lcom/google/common/graph/NetworkConnections<TN;TE;>;>;"
    .local p3, "edgeToReferenceNode":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    invoke-direct {p0}, Lcom/google/common/graph/AbstractNetwork;-><init>()V

    .line 81
    iget-boolean v0, p1, Lcom/google/common/graph/NetworkBuilder;->directed:Z

    iput-boolean v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->isDirected:Z

    .line 82
    iget-boolean v0, p1, Lcom/google/common/graph/NetworkBuilder;->allowsParallelEdges:Z

    iput-boolean v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->allowsParallelEdges:Z

    .line 83
    iget-boolean v0, p1, Lcom/google/common/graph/NetworkBuilder;->allowsSelfLoops:Z

    iput-boolean v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->allowsSelfLoops:Z

    .line 84
    iget-object v0, p1, Lcom/google/common/graph/NetworkBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {v0}, Lcom/google/common/graph/ElementOrder;->cast()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    .line 85
    iget-object v0, p1, Lcom/google/common/graph/NetworkBuilder;->edgeOrder:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {v0}, Lcom/google/common/graph/ElementOrder;->cast()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->edgeOrder:Lcom/google/common/graph/ElementOrder;

    .line 88
    instance-of v0, p2, Ljava/util/TreeMap;

    if-eqz v0, :cond_32

    new-instance v0, Lcom/google/common/graph/MapRetrievalCache;

    invoke-direct {v0, p2}, Lcom/google/common/graph/MapRetrievalCache;-><init>(Ljava/util/Map;)V

    :goto_28
    iput-object v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    .line 92
    new-instance v0, Lcom/google/common/graph/MapIteratorCache;

    invoke-direct {v0, p3}, Lcom/google/common/graph/MapIteratorCache;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    .line 93
    return-void

    .line 88
    :cond_32
    new-instance v0, Lcom/google/common/graph/MapIteratorCache;

    invoke-direct {v0, p2}, Lcom/google/common/graph/MapIteratorCache;-><init>(Ljava/util/Map;)V

    goto :goto_28
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/NetworkConnections;->adjacentNodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsParallelEdges()Z
    .registers 2

    .prologue
    .line 112
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    iget-boolean v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->allowsParallelEdges:Z

    return v0
.end method

.method public allowsSelfLoops()Z
    .registers 2

    .prologue
    .line 117
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    iget-boolean v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->allowsSelfLoops:Z

    return v0
.end method

.method protected final checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;
    .registers 7
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/graph/NetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    iget-object v1, p0, Lcom/google/common/graph/ConfigurableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    .line 179
    .local v0, "connections":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    if-nez v0, :cond_1f

    .line 180
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Node %s is not an element of this graph."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_1f
    return-object v0
.end method

.method protected final checkedReferenceNode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "edge"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TN;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    iget-object v1, p0, Lcom/google/common/graph/ConfigurableNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, "referenceNode":Ljava/lang/Object;, "TN;"
    if-nez v0, :cond_1d

    .line 189
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Edge %s is not an element of this graph."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_1d
    return-object v0
.end method

.method protected final containsEdge(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "edge"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 200
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final containsNode(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "node"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 196
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public edgeOrder()Lcom/google/common/graph/ElementOrder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->edgeOrder:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method

.method public edges()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0}, Lcom/google/common/graph/MapIteratorCache;->unmodifiableKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 6
    .param p1, "nodeU"    # Ljava/lang/Object;
    .param p2, "nodeV"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    .line 150
    .local v0, "connectionsU":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    iget-boolean v1, p0, Lcom/google/common/graph/ConfigurableNetwork;->allowsSelfLoops:Z

    if-nez v1, :cond_f

    if-ne p1, p2, :cond_f

    .line 151
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 154
    :goto_e
    return-object v1

    .line 153
    :cond_f
    invoke-virtual {p0, p2}, Lcom/google/common/graph/ConfigurableNetwork;->containsNode(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Node %s is not an element of this graph."

    invoke-static {v1, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 154
    invoke-interface {v0, p2}, Lcom/google/common/graph/NetworkConnections;->edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    goto :goto_e
.end method

.method public inEdges(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
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
    .line 159
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/NetworkConnections;->inEdges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
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
    .line 132
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/NetworkConnections;->incidentEdges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 5
    .param p1, "edge"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->checkedReferenceNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "nodeU":Ljava/lang/Object;, "TN;"
    iget-object v2, p0, Lcom/google/common/graph/ConfigurableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v2, v0}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/NetworkConnections;

    invoke-interface {v2, p1}, Lcom/google/common/graph/NetworkConnections;->oppositeNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v0, v1}, Lcom/google/common/graph/EndpointPair;->of(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v2

    return-object v2
.end method

.method public isDirected()Z
    .registers 2

    .prologue
    .line 107
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    iget-boolean v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->isDirected:Z

    return v0
.end method

.method public nodeOrder()Lcom/google/common/graph/ElementOrder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method

.method public nodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0}, Lcom/google/common/graph/MapIteratorCache;->unmodifiableKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public outEdges(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
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
    .line 164
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/NetworkConnections;->outEdges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/NetworkConnections;->predecessors()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/google/common/graph/ConfigurableNetwork;, "Lcom/google/common/graph/ConfigurableNetwork<TN;TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/NetworkConnections;->successors()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
