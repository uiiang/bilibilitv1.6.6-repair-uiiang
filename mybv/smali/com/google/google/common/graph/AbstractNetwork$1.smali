.class Lcom/google/common/graph/AbstractNetwork$1;
.super Lcom/google/common/graph/AbstractGraph;
.source "AbstractNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractNetwork;->asGraph()Lcom/google/common/graph/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/AbstractGraph",
        "<TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/AbstractNetwork;


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractNetwork;)V
    .registers 2

    .prologue
    .line 48
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1;, "Lcom/google/common/graph/AbstractNetwork.1;"
    iput-object p1, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-direct {p0}, Lcom/google/common/graph/AbstractGraph;-><init>()V

    return-void
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
    .line 109
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1;, "Lcom/google/common/graph/AbstractNetwork.1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/AbstractNetwork;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsSelfLoops()Z
    .registers 2

    .prologue
    .line 104
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1;, "Lcom/google/common/graph/AbstractNetwork.1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractNetwork;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public edges()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1;, "Lcom/google/common/graph/AbstractNetwork.1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractNetwork;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 57
    invoke-super {p0}, Lcom/google/common/graph/AbstractGraph;->edges()Ljava/util/Set;

    move-result-object v0

    .line 61
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/google/common/graph/AbstractNetwork$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractNetwork$1$1;-><init>(Lcom/google/common/graph/AbstractNetwork$1;)V

    goto :goto_c
.end method

.method public isDirected()Z
    .registers 2

    .prologue
    .line 99
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1;, "Lcom/google/common/graph/AbstractNetwork.1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractNetwork;->isDirected()Z

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
    .line 94
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1;, "Lcom/google/common/graph/AbstractNetwork.1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractNetwork;->nodeOrder()Lcom/google/common/graph/ElementOrder;

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
    .line 51
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1;, "Lcom/google/common/graph/AbstractNetwork.1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractNetwork;->nodes()Ljava/util/Set;

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
    .line 114
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1;, "Lcom/google/common/graph/AbstractNetwork.1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/AbstractNetwork;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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
    .line 119
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1;, "Lcom/google/common/graph/AbstractNetwork.1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/AbstractNetwork;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
