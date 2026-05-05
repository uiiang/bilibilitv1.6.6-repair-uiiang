.class Lcom/google/common/graph/Graphs$TransposedNetwork;
.super Lcom/google/common/graph/AbstractNetwork;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposedNetwork"
.end annotation

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
.field private final network:Lcom/google/common/graph/Network;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/Network;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    invoke-direct {p0}, Lcom/google/common/graph/AbstractNetwork;-><init>()V

    .line 504
    iput-object p1, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    .line 505
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/graph/Graphs$TransposedNetwork;)Lcom/google/common/graph/Network;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/graph/Graphs$TransposedNetwork;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    return-object v0
.end method


# virtual methods
.method public adjacentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
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
    .line 580
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->adjacentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

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
    .line 544
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsParallelEdges()Z
    .registers 2

    .prologue
    .line 524
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0}, Lcom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v0

    return v0
.end method

.method public allowsSelfLoops()Z
    .registers 2

    .prologue
    .line 529
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0}, Lcom/google/common/graph/Network;->allowsSelfLoops()Z

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
    .line 539
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0}, Lcom/google/common/graph/Network;->edgeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

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
    .line 514
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
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
    .line 585
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/Network;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
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
    .line 564
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

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
    .line 559
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 6
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
    .line 574
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v1, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v1, p1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    .line 575
    .local v0, "endpointPair":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    iget-object v1, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/common/graph/EndpointPair;->of(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v1

    return-object v1
.end method

.method public isDirected()Z
    .registers 2

    .prologue
    .line 519
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v0

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
    .line 534
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0}, Lcom/google/common/graph/Network;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

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
    .line 509
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

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
    .line 569
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

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
    .line 549
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->successors(Ljava/lang/Object;)Ljava/util/Set;

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
    .line 554
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedNetwork;, "Lcom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;->network:Lcom/google/common/graph/Network;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
