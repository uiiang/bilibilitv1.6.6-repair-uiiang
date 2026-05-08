.class Lcom/google/common/graph/Graphs$TransposedGraph;
.super Lcom/google/common/graph/AbstractGraph;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposedGraph"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractGraph",
        "<TN;>;"
    }
.end annotation


# instance fields
.field private final graph:Lcom/google/common/graph/Graph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/Graph",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/Graph;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-direct {p0}, Lcom/google/common/graph/AbstractGraph;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    .line 359
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/graph/Graphs$TransposedGraph;)Lcom/google/common/graph/Graph;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/graph/Graphs$TransposedGraph;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    return-object v0
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
    .line 392
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Graph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsSelfLoops()Z
    .registers 2

    .prologue
    .line 382
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    invoke-interface {v0}, Lcom/google/common/graph/Graph;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method protected edgeCount()J
    .registers 3

    .prologue
    .line 372
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    invoke-interface {v0}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isDirected()Z
    .registers 2

    .prologue
    .line 377
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    invoke-interface {v0}, Lcom/google/common/graph/Graph;->isDirected()Z

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
    .line 387
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    invoke-interface {v0}, Lcom/google/common/graph/Graph;->nodeOrder()Lcom/google/common/graph/ElementOrder;

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
    .line 363
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    invoke-interface {v0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

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
    .line 397
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

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
    .line 402
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Graph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
