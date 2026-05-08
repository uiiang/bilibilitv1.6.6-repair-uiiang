.class public final Lcom/google/common/graph/Graphs;
.super Ljava/lang/Object;
.source "Graphs.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Graphs$NodeVisitState;,
        Lcom/google/common/graph/Graphs$TransposedNetwork;,
        Lcom/google/common/graph/Graphs$TransposedValueGraph;,
        Lcom/google/common/graph/Graphs$TransposedGraph;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canTraverseWithoutReusingEdge(Lcom/google/common/graph/Graph;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "nextNode"    # Ljava/lang/Object;
    .param p2, "previousNode"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 132
    :cond_c
    const/4 v0, 0x1

    .line 136
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static checkNonNegative(I)I
    .registers 3
    .param p0, "value"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 706
    if-ltz p0, :cond_9

    const/4 v0, 0x1

    :goto_3
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 707
    return p0

    .line 706
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static checkNonNegative(J)J
    .registers 4
    .param p0, "value"    # J
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 718
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    :goto_7
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 719
    return-wide p0

    .line 718
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static checkPositive(I)I
    .registers 3
    .param p0, "value"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 712
    if-lez p0, :cond_9

    const/4 v0, 0x1

    :goto_3
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 713
    return p0

    .line 712
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static checkPositive(J)J
    .registers 4
    .param p0, "value"    # J
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 724
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_7
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 725
    return-wide p0

    .line 724
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static copyOf(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/MutableGraph;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)",
            "Lcom/google/common/graph/MutableGraph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 664
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/graph/GraphBuilder;->expectedNodeCount(I)Lcom/google/common/graph/GraphBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/graph/GraphBuilder;->build()Lcom/google/common/graph/MutableGraph;

    move-result-object v0

    .line 665
    .local v0, "copy":Lcom/google/common/graph/MutableGraph;, "Lcom/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 666
    .local v3, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v3}, Lcom/google/common/graph/MutableGraph;->addNode(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 668
    .end local v3    # "node":Ljava/lang/Object;, "TN;"
    :cond_2a
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/EndpointPair;

    .line 669
    .local v1, "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_32

    .line 671
    .end local v1    # "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    :cond_4a
    return-object v0
.end method

.method public static copyOf(Lcom/google/common/graph/Network;)Lcom/google/common/graph/MutableNetwork;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;)",
            "Lcom/google/common/graph/MutableNetwork",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 689
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    invoke-static {p0}, Lcom/google/common/graph/NetworkBuilder;->from(Lcom/google/common/graph/Network;)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/graph/NetworkBuilder;->expectedNodeCount(I)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/graph/NetworkBuilder;->expectedEdgeCount(I)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/graph/NetworkBuilder;->build()Lcom/google/common/graph/MutableNetwork;

    move-result-object v0

    .line 694
    .local v0, "copy":Lcom/google/common/graph/MutableNetwork;, "Lcom/google/common/graph/MutableNetwork<TN;TE;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 695
    .local v4, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v4}, Lcom/google/common/graph/MutableNetwork;->addNode(Ljava/lang/Object;)Z

    goto :goto_28

    .line 697
    .end local v4    # "node":Ljava/lang/Object;, "TN;"
    :cond_36
    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 698
    .local v1, "edge":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v2

    .line 699
    .local v2, "endpointPair":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6, v1}, Lcom/google/common/graph/MutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3e

    .line 701
    .end local v1    # "edge":Ljava/lang/Object;, "TE;"
    .end local v2    # "endpointPair":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    :cond_58
    return-object v0
.end method

.method public static copyOf(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/MutableValueGraph;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;)",
            "Lcom/google/common/graph/MutableValueGraph",
            "<TN;TV;>;"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-static {p0}, Lcom/google/common/graph/ValueGraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/graph/ValueGraphBuilder;->expectedNodeCount(I)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/graph/ValueGraphBuilder;->build()Lcom/google/common/graph/MutableValueGraph;

    move-result-object v0

    .line 678
    .local v0, "copy":Lcom/google/common/graph/MutableValueGraph;, "Lcom/google/common/graph/MutableValueGraph<TN;TV;>;"
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 679
    .local v3, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v3}, Lcom/google/common/graph/MutableValueGraph;->addNode(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 681
    .end local v3    # "node":Ljava/lang/Object;, "TN;"
    :cond_2a
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/EndpointPair;

    .line 682
    .local v1, "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v4, v5, v6}, Lcom/google/common/graph/MutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 684
    .end local v1    # "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    :cond_56
    return-object v0
.end method

.method public static equivalent(Lcom/google/common/graph/Graph;Lcom/google/common/graph/Graph;)Z
    .registers 6
    .param p0    # Lcom/google/common/graph/Graph;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/common/graph/Graph;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph",
            "<*>;",
            "Lcom/google/common/graph/Graph",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "graphA":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    .local p1, "graphB":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    if-ne p0, p1, :cond_5

    .line 238
    :cond_4
    :goto_4
    return v0

    .line 234
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    .line 235
    goto :goto_4

    .line 238
    :cond_b
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v2

    invoke-interface {p1}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v3

    if-ne v2, v3, :cond_31

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_31
    move v0, v1

    goto :goto_4
.end method

.method public static equivalent(Lcom/google/common/graph/Network;Lcom/google/common/graph/Network;)Z
    .registers 8
    .param p0    # Lcom/google/common/graph/Network;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/common/graph/Network;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Network",
            "<**>;",
            "Lcom/google/common/graph/Network",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "networkA":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<**>;"
    .local p1, "networkB":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<**>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 312
    if-ne p0, p1, :cond_5

    .line 331
    :cond_4
    :goto_4
    return v2

    .line 315
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v2, v3

    .line 316
    goto :goto_4

    .line 319
    :cond_b
    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v4

    invoke-interface {p1}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v5

    if-ne v4, v5, :cond_31

    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    :cond_31
    move v2, v3

    .line 322
    goto :goto_4

    .line 325
    :cond_33
    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 326
    .local v0, "edge":Ljava/lang/Object;
    invoke-interface {p0, v0}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v4

    invoke-interface {p1, v0}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/graph/EndpointPair;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    move v2, v3

    .line 327
    goto :goto_4
.end method

.method public static equivalent(Lcom/google/common/graph/ValueGraph;Lcom/google/common/graph/ValueGraph;)Z
    .registers 9
    .param p0    # Lcom/google/common/graph/ValueGraph;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/common/graph/ValueGraph;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/ValueGraph",
            "<**>;",
            "Lcom/google/common/graph/ValueGraph",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "graphA":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<**>;"
    .local p1, "graphB":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<**>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    if-ne p0, p1, :cond_5

    .line 287
    :cond_4
    :goto_4
    return v2

    .line 269
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v2, v3

    .line 270
    goto :goto_4

    .line 273
    :cond_b
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v4

    invoke-interface {p1}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v5

    if-ne v4, v5, :cond_31

    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    :cond_31
    move v2, v3

    .line 276
    goto :goto_4

    .line 279
    :cond_33
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/EndpointPair;

    .line 280
    .local v0, "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<*>;"
    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    move v2, v3

    .line 283
    goto :goto_4
.end method

.method public static hasCycle(Lcom/google/common/graph/Graph;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v2

    .line 59
    .local v2, "numEdges":I
    if-nez v2, :cond_d

    .line 73
    :cond_c
    :goto_c
    return v4

    .line 62
    :cond_d
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-lt v2, v6, :cond_1f

    move v4, v5

    .line 63
    goto :goto_c

    .line 66
    :cond_1f
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v3

    .line 68
    .local v3, "visitedNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/google/common/graph/Graphs$NodeVisitState;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, "node":Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {p0, v3, v1, v6}, Lcom/google/common/graph/Graphs;->subgraphHasCycle(Lcom/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    move v4, v5

    .line 70
    goto :goto_c
.end method

.method public static hasCycle(Lcom/google/common/graph/Network;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Network",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<**>;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->asGraph()Lcom/google/common/graph/Graph;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_24

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_23
    return v0

    :cond_24
    invoke-interface {p0}, Lcom/google/common/graph/Network;->asGraph()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/graph/Graphs;->hasCycle(Lcom/google/common/graph/Graph;)Z

    move-result v0

    goto :goto_23
.end method

.method public static inducedSubgraph(Lcom/google/common/graph/Graph;Ljava/lang/Iterable;)Lcom/google/common/graph/MutableGraph;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;",
            "Ljava/lang/Iterable",
            "<+TN;>;)",
            "Lcom/google/common/graph/MutableGraph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/graph/GraphBuilder;->build()Lcom/google/common/graph/MutableGraph;

    move-result-object v3

    .line 600
    .local v3, "subgraph":Lcom/google/common/graph/MutableGraph;, "Lcom/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 601
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v3, v2}, Lcom/google/common/graph/MutableGraph;->addNode(Ljava/lang/Object;)Z

    goto :goto_c

    .line 603
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    :cond_1a
    invoke-interface {v3}, Lcom/google/common/graph/MutableGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 604
    .restart local v2    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v2}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 605
    .local v4, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v3}, Lcom/google/common/graph/MutableGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 606
    invoke-interface {v3, v2, v4}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_34

    .line 610
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    .end local v4    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_4c
    return-object v3
.end method

.method public static inducedSubgraph(Lcom/google/common/graph/Network;Ljava/lang/Iterable;)Lcom/google/common/graph/MutableNetwork;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;",
            "Ljava/lang/Iterable",
            "<+TN;>;)",
            "Lcom/google/common/graph/MutableNetwork",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/NetworkBuilder;->from(Lcom/google/common/graph/Network;)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/graph/NetworkBuilder;->build()Lcom/google/common/graph/MutableNetwork;

    move-result-object v4

    .line 648
    .local v4, "subgraph":Lcom/google/common/graph/MutableNetwork;, "Lcom/google/common/graph/MutableNetwork<TN;TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 649
    .local v3, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v4, v3}, Lcom/google/common/graph/MutableNetwork;->addNode(Ljava/lang/Object;)Z

    goto :goto_c

    .line 651
    .end local v3    # "node":Ljava/lang/Object;, "TN;"
    :cond_1a
    invoke-interface {v4}, Lcom/google/common/graph/MutableNetwork;->nodes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 652
    .restart local v3    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v3}, Lcom/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 653
    .local v0, "edge":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v0}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/common/graph/EndpointPair;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 654
    .local v5, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v4}, Lcom/google/common/graph/MutableNetwork;->nodes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 655
    invoke-interface {v4, v3, v5, v0}, Lcom/google/common/graph/MutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_34

    .line 659
    .end local v0    # "edge":Ljava/lang/Object;, "TE;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "node":Ljava/lang/Object;, "TN;"
    .end local v5    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_54
    return-object v4
.end method

.method public static inducedSubgraph(Lcom/google/common/graph/ValueGraph;Ljava/lang/Iterable;)Lcom/google/common/graph/MutableValueGraph;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;",
            "Ljava/lang/Iterable",
            "<+TN;>;)",
            "Lcom/google/common/graph/MutableValueGraph",
            "<TN;TV;>;"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/ValueGraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/graph/ValueGraphBuilder;->build()Lcom/google/common/graph/MutableValueGraph;

    move-result-object v3

    .line 624
    .local v3, "subgraph":Lcom/google/common/graph/MutableValueGraph;, "Lcom/google/common/graph/MutableValueGraph<TN;TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 625
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v3, v2}, Lcom/google/common/graph/MutableValueGraph;->addNode(Ljava/lang/Object;)Z

    goto :goto_c

    .line 627
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    :cond_1a
    invoke-interface {v3}, Lcom/google/common/graph/MutableValueGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 628
    .restart local v2    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v2}, Lcom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 629
    .local v4, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v3}, Lcom/google/common/graph/MutableValueGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 630
    invoke-interface {p0, v2, v4}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v2, v4, v5}, Lcom/google/common/graph/MutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 634
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    .end local v4    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_50
    return-object v3
.end method

.method public static reachableNodes(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;
    .registers 9
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Node %s is not an element of this graph."

    invoke-static {v5, v6, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 196
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 197
    .local v4, "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 198
    .local v2, "queuedNodes":Ljava/util/Queue;, "Ljava/util/Queue<TN;>;"
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_1d
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_43

    .line 202
    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 203
    .local v0, "currentNode":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v0}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 204
    .local v3, "successor":Ljava/lang/Object;, "TN;"
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 205
    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 209
    .end local v0    # "currentNode":Ljava/lang/Object;, "TN;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "successor":Ljava/lang/Object;, "TN;"
    :cond_43
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    return-object v5
.end method

.method private static subgraphHasCycle(Lcom/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .param p2, "node"    # Ljava/lang/Object;
    .param p3, "previousNode"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/common/graph/Graphs$NodeVisitState;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    .local p1, "visitedNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/google/common/graph/Graphs$NodeVisitState;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/Graphs$NodeVisitState;

    .line 105
    .local v2, "state":Lcom/google/common/graph/Graphs$NodeVisitState;
    sget-object v5, Lcom/google/common/graph/Graphs$NodeVisitState;->COMPLETE:Lcom/google/common/graph/Graphs$NodeVisitState;

    if-ne v2, v5, :cond_d

    .line 120
    :goto_c
    return v3

    .line 108
    :cond_d
    sget-object v5, Lcom/google/common/graph/Graphs$NodeVisitState;->PENDING:Lcom/google/common/graph/Graphs$NodeVisitState;

    if-ne v2, v5, :cond_13

    move v3, v4

    .line 109
    goto :goto_c

    .line 112
    :cond_13
    sget-object v5, Lcom/google/common/graph/Graphs$NodeVisitState;->PENDING:Lcom/google/common/graph/Graphs$NodeVisitState;

    invoke-interface {p1, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {p0, p2}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, "nextNode":Ljava/lang/Object;
    invoke-static {p0, v1, p3}, Lcom/google/common/graph/Graphs;->canTraverseWithoutReusingEdge(Lcom/google/common/graph/Graph;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-static {p0, p1, v1, p2}, Lcom/google/common/graph/Graphs;->subgraphHasCycle(Lcom/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    move v3, v4

    .line 116
    goto :goto_c

    .line 119
    .end local v1    # "nextNode":Ljava/lang/Object;
    :cond_38
    sget-object v4, Lcom/google/common/graph/Graphs$NodeVisitState;->COMPLETE:Lcom/google/common/graph/Graphs$NodeVisitState;

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method

.method public static transitiveClosure(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/Graph;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)",
            "Lcom/google/common/graph/Graph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/google/common/graph/GraphBuilder;->allowsSelfLoops(Z)Lcom/google/common/graph/GraphBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/common/graph/GraphBuilder;->build()Lcom/google/common/graph/MutableGraph;

    move-result-object v10

    .line 154
    .local v10, "transitiveClosure":Lcom/google/common/graph/MutableGraph;, "Lcom/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 156
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 157
    .local v3, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v3}, Lcom/google/common/graph/Graphs;->reachableNodes(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 158
    .local v8, "reachableNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v10, v3, v8}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2d

    .line 164
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "node":Ljava/lang/Object;, "TN;"
    .end local v8    # "reachableNode":Ljava/lang/Object;, "TN;"
    :cond_3b
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 165
    .local v11, "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 166
    .restart local v3    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_48

    .line 167
    invoke-static {p0, v3}, Lcom/google/common/graph/Graphs;->reachableNodes(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    .line 168
    .local v9, "reachableNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-interface {v11, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 169
    const/4 v6, 0x1

    .line 170
    .local v6, "pairwiseMatch":I
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 171
    .local v4, "nodeU":Ljava/lang/Object;, "TN;"
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pairwiseMatch":I
    .local v7, "pairwiseMatch":I
    invoke-static {v9, v6}, Lcom/google/common/collect/Iterables;->limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 172
    .local v5, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-interface {v10, v4, v5}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_78

    .end local v5    # "nodeV":Ljava/lang/Object;, "TN;"
    :cond_86
    move v6, v7

    .line 174
    .end local v7    # "pairwiseMatch":I
    .restart local v6    # "pairwiseMatch":I
    goto :goto_64

    .line 179
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "node":Ljava/lang/Object;, "TN;"
    .end local v4    # "nodeU":Ljava/lang/Object;, "TN;"
    .end local v6    # "pairwiseMatch":I
    .end local v9    # "reachableNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    .end local v11    # "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    :cond_88
    return-object v10
.end method

.method public static transpose(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/Graph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)",
            "Lcom/google/common/graph/Graph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_7

    .line 351
    .end local p0    # "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    :goto_6
    return-object p0

    .line 347
    .restart local p0    # "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    :cond_7
    instance-of v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;

    if-eqz v0, :cond_12

    .line 348
    check-cast p0, Lcom/google/common/graph/Graphs$TransposedGraph;

    .end local p0    # "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    # getter for: Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;
    invoke-static {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->access$000(Lcom/google/common/graph/Graphs$TransposedGraph;)Lcom/google/common/graph/Graph;

    move-result-object p0

    goto :goto_6

    .line 351
    .restart local p0    # "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    :cond_12
    new-instance v0, Lcom/google/common/graph/Graphs$TransposedGraph;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Graphs$TransposedGraph;-><init>(Lcom/google/common/graph/Graph;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static transpose(Lcom/google/common/graph/Network;)Lcom/google/common/graph/Network;
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
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v0

    if-nez v0, :cond_7

    .line 497
    .end local p0    # "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    :goto_6
    return-object p0

    .line 493
    .restart local p0    # "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    :cond_7
    instance-of v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;

    if-eqz v0, :cond_12

    .line 494
    check-cast p0, Lcom/google/common/graph/Graphs$TransposedNetwork;

    .end local p0    # "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    # getter for: Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;
    invoke-static {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->access$200(Lcom/google/common/graph/Graphs$TransposedNetwork;)Lcom/google/common/graph/Network;

    move-result-object p0

    goto :goto_6

    .line 497
    .restart local p0    # "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    :cond_12
    new-instance v0, Lcom/google/common/graph/Graphs$TransposedNetwork;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;-><init>(Lcom/google/common/graph/Network;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static transpose(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/ValueGraph;
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
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_7

    .line 419
    .end local p0    # "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    :goto_6
    return-object p0

    .line 415
    .restart local p0    # "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    :cond_7
    instance-of v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;

    if-eqz v0, :cond_12

    .line 416
    check-cast p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;

    .end local p0    # "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    # getter for: Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;
    invoke-static {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->access$100(Lcom/google/common/graph/Graphs$TransposedValueGraph;)Lcom/google/common/graph/ValueGraph;

    move-result-object p0

    goto :goto_6

    .line 419
    .restart local p0    # "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    :cond_12
    new-instance v0, Lcom/google/common/graph/Graphs$TransposedValueGraph;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;-><init>(Lcom/google/common/graph/ValueGraph;)V

    move-object p0, v0

    goto :goto_6
.end method
