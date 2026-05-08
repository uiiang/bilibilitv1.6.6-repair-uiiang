.class public abstract Lcom/google/common/graph/AbstractNetwork;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lcom/google/common/graph/Network;


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
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/Network",
        "<TN;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private edgeIncidentNodesMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    new-instance v0, Lcom/google/common/graph/AbstractNetwork$2;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractNetwork$2;-><init>(Lcom/google/common/graph/AbstractNetwork;)V

    .line 171
    .local v0, "edgeToIncidentNodesFn":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TE;Lcom/google/common/graph/EndpointPair<TN;>;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public adjacentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .registers 6
    .param p1, "edge"    # Ljava/lang/Object;
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
    .line 147
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    .line 148
    .local v0, "endpointPair":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<*>;"
    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/common/graph/AbstractNetwork;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/graph/AbstractNetwork;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v1

    .line 150
    .local v1, "endpointPairIncidentEdges":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v2

    return-object v2
.end method

.method public asGraph()Lcom/google/common/graph/Graph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Graph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    new-instance v0, Lcom/google/common/graph/AbstractNetwork$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractNetwork$1;-><init>(Lcom/google/common/graph/AbstractNetwork;)V

    return-object v0
.end method

.method public degree(Ljava/lang/Object;)I
    .registers 4
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 128
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v0

    .line 131
    :goto_1a
    return v0

    :cond_1b
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, p1, p1}, Lcom/google/common/graph/AbstractNetwork;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v0

    goto :goto_1a
.end method

.method public inDegree(Ljava/lang/Object;)I
    .registers 3
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 137
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->degree(Ljava/lang/Object;)I

    move-result v0

    goto :goto_e
.end method

.method public outDegree(Ljava/lang/Object;)I
    .registers 3
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 142
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->degree(Ljava/lang/Object;)I

    move-result v0

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    const-string v1, "isDirected: %s, allowsParallelEdges: %s, allowsSelfLoops: %s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->allowsParallelEdges()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->allowsSelfLoops()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "propertiesString":Ljava/lang/String;
    const-string v1, "%s, nodes: %s, edges: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->nodes()Ljava/util/Set;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0}, Lcom/google/common/graph/AbstractNetwork;->edgeIncidentNodesMap()Ljava/util/Map;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
