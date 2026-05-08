.class public final Lcom/google/common/graph/ImmutableValueGraph;
.super Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl;
.source "ImmutableValueGraph.java"

# interfaces
.implements Lcom/google/common/graph/ValueGraph;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl",
        "<TN;TV;>;",
        "Lcom/google/common/graph/ValueGraph",
        "<TN;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/graph/ValueGraph;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/graph/ImmutableValueGraph;, "Lcom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    .local p1, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-static {p1}, Lcom/google/common/graph/ValueGraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/ImmutableValueGraph;->getNodeConnections(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;Lcom/google/common/collect/ImmutableMap;J)V

    .line 48
    return-void
.end method

.method private static connectionsOf(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;TN;)",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;TV;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    new-instance v0, Lcom/google/common/graph/ImmutableValueGraph$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/ImmutableValueGraph$1;-><init>(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;)V

    .line 88
    .local v0, "successorNodeToValueFn":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TN;TV;>;"
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/graph/DirectedGraphConnections;->ofImmutable(Ljava/util/Set;Ljava/util/Map;)Lcom/google/common/graph/DirectedGraphConnections;

    move-result-object v1

    :goto_1b
    return-object v1

    :cond_1c
    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/graph/UndirectedGraphConnections;->ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedGraphConnections;

    move-result-object v1

    goto :goto_1b
.end method

.method public static copyOf(Lcom/google/common/graph/ImmutableValueGraph;)Lcom/google/common/graph/ImmutableValueGraph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ImmutableValueGraph",
            "<TN;TV;>;)",
            "Lcom/google/common/graph/ImmutableValueGraph",
            "<TN;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    .local p0, "graph":Lcom/google/common/graph/ImmutableValueGraph;, "Lcom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/ImmutableValueGraph;

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/ImmutableValueGraph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;)",
            "Lcom/google/common/graph/ImmutableValueGraph",
            "<TN;TV;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    instance-of v0, p0, Lcom/google/common/graph/ImmutableValueGraph;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/graph/ImmutableValueGraph;

    .end local p0    # "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    :goto_6
    return-object p0

    .restart local p0    # "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    :cond_7
    new-instance v0, Lcom/google/common/graph/ImmutableValueGraph;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ImmutableValueGraph;-><init>(Lcom/google/common/graph/ValueGraph;)V

    move-object p0, v0

    goto :goto_6
.end method

.method private static getNodeConnections(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/collect/ImmutableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TN;",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 73
    .local v2, "nodeConnections":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TN;Lcom/google/common/graph/GraphConnections<TN;TV;>;>;"
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

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

    .line 74
    .local v1, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v1}, Lcom/google/common/graph/ImmutableValueGraph;->connectionsOf(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_c

    .line 76
    .end local v1    # "node":Ljava/lang/Object;, "TN;"
    :cond_1e
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "nodeU"    # Ljava/lang/Object;
    .param p2, "nodeV"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/graph/ImmutableValueGraph;, "Lcom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/ImmutableValueGraph;->backingValueGraph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "nodeU"    # Ljava/lang/Object;
    .param p2, "nodeV"    # Ljava/lang/Object;
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/graph/ImmutableValueGraph;, "Lcom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/graph/ImmutableValueGraph;->backingValueGraph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    .local p0, "this":Lcom/google/common/graph/ImmutableValueGraph;, "Lcom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/ImmutableValueGraph;->backingValueGraph:Lcom/google/common/graph/ValueGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
