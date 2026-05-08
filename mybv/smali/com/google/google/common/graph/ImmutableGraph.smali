.class public abstract Lcom/google/common/graph/ImmutableGraph;
.super Lcom/google/common/graph/ForwardingGraph;
.source "ImmutableGraph.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ForwardingGraph",
        "<TN;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 48
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-direct {p0}, Lcom/google/common/graph/ForwardingGraph;-><init>()V

    return-void
.end method

.method private static connectionsOf(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;TN;)",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;",
            "Lcom/google/common/graph/GraphConstants$Presence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    sget-object v1, Lcom/google/common/graph/GraphConstants$Presence;->EDGE_EXISTS:Lcom/google/common/graph/GraphConstants$Presence;

    invoke-static {v1}, Lcom/google/common/base/Functions;->constant(Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    .line 82
    .local v0, "edgeValueFn":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Ljava/lang/Object;Lcom/google/common/graph/GraphConstants$Presence;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0, p1}, Lcom/google/common/graph/Graph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, p1}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/graph/DirectedGraphConnections;->ofImmutable(Ljava/util/Set;Ljava/util/Map;)Lcom/google/common/graph/DirectedGraphConnections;

    move-result-object v1

    :goto_1c
    return-object v1

    :cond_1d
    invoke-interface {p0, p1}, Lcom/google/common/graph/Graph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/graph/UndirectedGraphConnections;->ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedGraphConnections;

    move-result-object v1

    goto :goto_1c
.end method

.method public static copyOf(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/ImmutableGraph;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)",
            "Lcom/google/common/graph/ImmutableGraph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    instance-of v0, p0, Lcom/google/common/graph/ImmutableGraph;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/graph/ImmutableGraph;

    .end local p0    # "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    :goto_6
    return-object p0

    .restart local p0    # "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    :cond_7
    new-instance v0, Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl;

    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/google/common/graph/ImmutableGraph;->getNodeConnections(Lcom/google/common/graph/Graph;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;Lcom/google/common/collect/ImmutableMap;J)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static copyOf(Lcom/google/common/graph/ImmutableGraph;)Lcom/google/common/graph/ImmutableGraph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ImmutableGraph",
            "<TN;>;)",
            "Lcom/google/common/graph/ImmutableGraph",
            "<TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    .local p0, "graph":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/ImmutableGraph;

    return-object v0
.end method

.method private static getNodeConnections(Lcom/google/common/graph/Graph;)Lcom/google/common/collect/ImmutableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TN;",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;",
            "Lcom/google/common/graph/GraphConstants$Presence;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 74
    .local v2, "nodeConnections":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TN;Lcom/google/common/graph/GraphConnections<TN;Lcom/google/common/graph/GraphConstants$Presence;>;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

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

    .line 75
    .local v1, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v1}, Lcom/google/common/graph/ImmutableGraph;->connectionsOf(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_c

    .line 77
    .end local v1    # "node":Ljava/lang/Object;, "TN;"
    :cond_1e
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public bridge synthetic adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic allowsSelfLoops()Z
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lcom/google/common/graph/ForwardingGraph;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic degree(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic edges()Ljava/util/Set;
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lcom/google/common/graph/ForwardingGraph;->edges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inDegree(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isDirected()Z
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lcom/google/common/graph/ForwardingGraph;->isDirected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nodeOrder()Lcom/google/common/graph/ElementOrder;
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lcom/google/common/graph/ForwardingGraph;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nodes()Ljava/util/Set;
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lcom/google/common/graph/ForwardingGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic outDegree(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
