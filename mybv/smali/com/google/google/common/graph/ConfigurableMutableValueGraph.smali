.class final Lcom/google/common/graph/ConfigurableMutableValueGraph;
.super Lcom/google/common/graph/ConfigurableValueGraph;
.source "ConfigurableMutableValueGraph.java"

# interfaces
.implements Lcom/google/common/graph/MutableValueGraph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ConfigurableValueGraph",
        "<TN;TV;>;",
        "Lcom/google/common/graph/MutableValueGraph",
        "<TN;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractGraphBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/AbstractGraphBuilder",
            "<-TN;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableValueGraph;, "Lcom/google/common/graph/ConfigurableMutableValueGraph<TN;TV;>;"
    .local p1, "builder":Lcom/google/common/graph/AbstractGraphBuilder;, "Lcom/google/common/graph/AbstractGraphBuilder<-TN;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableValueGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;)V

    .line 47
    return-void
.end method

.method private addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;
    .registers 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;TV;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableValueGraph;, "Lcom/google/common/graph/ConfigurableMutableValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-direct {p0}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->newConnections()Lcom/google/common/graph/GraphConnections;

    move-result-object v0

    .line 70
    .local v0, "connections":Lcom/google/common/graph/GraphConnections;, "Lcom/google/common/graph/GraphConnections<TN;TV;>;"
    iget-object v1, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/graph/MapIteratorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :goto_d
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 71
    return-object v0

    .line 70
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private newConnections()Lcom/google/common/graph/GraphConnections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;TV;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableValueGraph;, "Lcom/google/common/graph/ConfigurableMutableValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/common/graph/DirectedGraphConnections;->of()Lcom/google/common/graph/DirectedGraphConnections;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/google/common/graph/UndirectedGraphConnections;->of()Lcom/google/common/graph/UndirectedGraphConnections;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
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
    .line 52
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableValueGraph;, "Lcom/google/common/graph/ConfigurableMutableValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->containsNode(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 55
    const/4 v0, 0x0

    .line 59
    :goto_c
    return v0

    .line 58
    :cond_d
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    .line 59
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableValueGraph;, "Lcom/google/common/graph/ConfigurableMutableValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const-string v3, "nodeU"

    invoke-static {p1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v3, "nodeV"

    invoke-static {p2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v3, "value"

    invoke-static {p3, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->allowsSelfLoops()Z

    move-result v3

    if-nez v3, :cond_21

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    const/4 v3, 0x1

    :goto_1c
    const-string v4, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v3, v4, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 85
    :cond_21
    iget-object v3, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v3, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    .line 86
    .local v0, "connectionsU":Lcom/google/common/graph/GraphConnections;, "Lcom/google/common/graph/GraphConnections<TN;TV;>;"
    if-nez v0, :cond_2f

    .line 87
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v0

    .line 89
    :cond_2f
    invoke-interface {v0, p2, p3}, Lcom/google/common/graph/GraphConnections;->addSuccessor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 90
    .local v2, "previousValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v3, p2}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/GraphConnections;

    .line 91
    .local v1, "connectionsV":Lcom/google/common/graph/GraphConnections;, "Lcom/google/common/graph/GraphConnections<TN;TV;>;"
    if-nez v1, :cond_41

    .line 92
    invoke-direct {p0, p2}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v1

    .line 94
    :cond_41
    invoke-interface {v1, p1, p3}, Lcom/google/common/graph/GraphConnections;->addPredecessor(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    if-nez v2, :cond_50

    .line 96
    iget-wide v4, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    invoke-static {v4, v5}, Lcom/google/common/graph/Graphs;->checkPositive(J)J

    .line 98
    :cond_50
    return-object v2

    .line 82
    .end local v0    # "connectionsU":Lcom/google/common/graph/GraphConnections;, "Lcom/google/common/graph/GraphConnections<TN;TV;>;"
    .end local v1    # "connectionsV":Lcom/google/common/graph/GraphConnections;, "Lcom/google/common/graph/GraphConnections<TN;TV;>;"
    .end local v2    # "previousValue":Ljava/lang/Object;, "TV;"
    :cond_51
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method public removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "nodeU"    # Ljava/lang/Object;
    .param p2, "nodeV"    # Ljava/lang/Object;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableValueGraph;, "Lcom/google/common/graph/ConfigurableMutableValueGraph<TN;TV;>;"
    const-string v3, "nodeU"

    invoke-static {p1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v3, "nodeV"

    invoke-static {p2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v3, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v3, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    .line 141
    .local v0, "connectionsU":Lcom/google/common/graph/GraphConnections;, "Lcom/google/common/graph/GraphConnections<TN;TV;>;"
    iget-object v3, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v3, p2}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/GraphConnections;

    .line 142
    .local v1, "connectionsV":Lcom/google/common/graph/GraphConnections;, "Lcom/google/common/graph/GraphConnections<TN;TV;>;"
    if-eqz v0, :cond_1e

    if-nez v1, :cond_20

    .line 143
    :cond_1e
    const/4 v2, 0x0

    .line 151
    :cond_1f
    :goto_1f
    return-object v2

    .line 146
    :cond_20
    invoke-interface {v0, p2}, Lcom/google/common/graph/GraphConnections;->removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 147
    .local v2, "previousValue":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_1f

    .line 148
    invoke-interface {v1, p1}, Lcom/google/common/graph/GraphConnections;->removePredecessor(Ljava/lang/Object;)V

    .line 149
    iget-wide v4, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    invoke-static {v4, v5}, Lcom/google/common/graph/Graphs;->checkNonNegative(J)J

    goto :goto_1f
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "node"    # Ljava/lang/Object;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableValueGraph;, "Lcom/google/common/graph/ConfigurableMutableValueGraph<TN;TV;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v10, 0x1

    .line 104
    const-string v4, "node"

    invoke-static {p1, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v4, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v4, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    .line 107
    .local v0, "connections":Lcom/google/common/graph/GraphConnections;, "Lcom/google/common/graph/GraphConnections<TN;TV;>;"
    if-nez v0, :cond_14

    .line 131
    :goto_13
    return v6

    .line 111
    :cond_14
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->allowsSelfLoops()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 113
    invoke-interface {v0, p1}, Lcom/google/common/graph/GraphConnections;->removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 114
    invoke-interface {v0, p1}, Lcom/google/common/graph/GraphConnections;->removePredecessor(Ljava/lang/Object;)V

    .line 115
    iget-wide v8, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    .line 119
    :cond_28
    invoke-interface {v0}, Lcom/google/common/graph/GraphConnections;->successors()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 120
    .local v3, "successor":Ljava/lang/Object;, "TN;"
    iget-object v4, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v4, v3}, Lcom/google/common/graph/MapIteratorCache;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/graph/GraphConnections;

    invoke-interface {v4, p1}, Lcom/google/common/graph/GraphConnections;->removePredecessor(Ljava/lang/Object;)V

    .line 121
    iget-wide v8, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    goto :goto_30

    .line 123
    .end local v3    # "successor":Ljava/lang/Object;, "TN;"
    :cond_4b
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableValueGraph;->isDirected()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 124
    invoke-interface {v0}, Lcom/google/common/graph/GraphConnections;->predecessors()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 125
    .local v2, "predecessor":Ljava/lang/Object;, "TN;"
    iget-object v4, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v4, v2}, Lcom/google/common/graph/MapIteratorCache;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/graph/GraphConnections;

    invoke-interface {v4, p1}, Lcom/google/common/graph/GraphConnections;->removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7b

    move v4, v5

    :goto_72
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 126
    iget-wide v8, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    goto :goto_59

    :cond_7b
    move v4, v6

    .line 125
    goto :goto_72

    .line 129
    .end local v2    # "predecessor":Ljava/lang/Object;, "TN;"
    :cond_7d
    iget-object v4, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v4, p1}, Lcom/google/common/graph/MapIteratorCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-wide v6, p0, Lcom/google/common/graph/ConfigurableMutableValueGraph;->edgeCount:J

    invoke-static {v6, v7}, Lcom/google/common/graph/Graphs;->checkNonNegative(J)J

    move v6, v5

    .line 131
    goto :goto_13
.end method
