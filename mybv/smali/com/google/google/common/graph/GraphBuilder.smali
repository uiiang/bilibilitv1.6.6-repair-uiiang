.class public final Lcom/google/common/graph/GraphBuilder;
.super Lcom/google/common/graph/AbstractGraphBuilder;
.source "GraphBuilder.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractGraphBuilder",
        "<TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Z)V
    .registers 2
    .param p1, "directed"    # Z

    .prologue
    .line 53
    .local p0, "this":Lcom/google/common/graph/GraphBuilder;, "Lcom/google/common/graph/GraphBuilder<TN;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/AbstractGraphBuilder;-><init>(Z)V

    .line 54
    return-void
.end method

.method private cast()Lcom/google/common/graph/GraphBuilder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "Lcom/google/common/graph/GraphBuilder",
            "<TN1;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/google/common/graph/GraphBuilder;, "Lcom/google/common/graph/GraphBuilder<TN;>;"
    return-object p0
.end method

.method public static directed()Lcom/google/common/graph/GraphBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/GraphBuilder",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/google/common/graph/GraphBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/graph/GraphBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/GraphBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)",
            "Lcom/google/common/graph/GraphBuilder",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    new-instance v0, Lcom/google/common/graph/GraphBuilder;

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/graph/GraphBuilder;-><init>(Z)V

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/GraphBuilder;->allowsSelfLoops(Z)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/GraphBuilder;->nodeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static undirected()Lcom/google/common/graph/GraphBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/GraphBuilder",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/google/common/graph/GraphBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/graph/GraphBuilder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public allowsSelfLoops(Z)Lcom/google/common/graph/GraphBuilder;
    .registers 2
    .param p1, "allowsSelfLoops"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/graph/GraphBuilder",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/google/common/graph/GraphBuilder;, "Lcom/google/common/graph/GraphBuilder<TN;>;"
    iput-boolean p1, p0, Lcom/google/common/graph/GraphBuilder;->allowsSelfLoops:Z

    .line 86
    return-object p0
.end method

.method public build()Lcom/google/common/graph/MutableGraph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "Lcom/google/common/graph/MutableGraph",
            "<TN1;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/google/common/graph/GraphBuilder;, "Lcom/google/common/graph/GraphBuilder<TN;>;"
    new-instance v0, Lcom/google/common/graph/ConfigurableMutableGraph;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ConfigurableMutableGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;)V

    return-object v0
.end method

.method public expectedNodeCount(I)Lcom/google/common/graph/GraphBuilder;
    .registers 3
    .param p1, "expectedNodeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/graph/GraphBuilder",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/google/common/graph/GraphBuilder;, "Lcom/google/common/graph/GraphBuilder<TN;>;"
    invoke-static {p1}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/GraphBuilder;->expectedNodeCount:Lcom/google/common/base/Optional;

    .line 96
    return-object p0
.end method

.method public nodeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/GraphBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lcom/google/common/graph/ElementOrder",
            "<TN1;>;)",
            "Lcom/google/common/graph/GraphBuilder",
            "<TN1;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/graph/GraphBuilder;, "Lcom/google/common/graph/GraphBuilder<TN;>;"
    .local p1, "nodeOrder":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<TN1;>;"
    invoke-direct {p0}, Lcom/google/common/graph/GraphBuilder;->cast()Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    .line 102
    .local v0, "newBuilder":Lcom/google/common/graph/GraphBuilder;, "Lcom/google/common/graph/GraphBuilder<TN1;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/ElementOrder;

    iput-object v1, v0, Lcom/google/common/graph/GraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    .line 103
    return-object v0
.end method
