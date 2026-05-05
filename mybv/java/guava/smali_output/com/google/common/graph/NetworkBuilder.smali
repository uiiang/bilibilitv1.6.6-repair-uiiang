.class public final Lcom/google/common/graph/NetworkBuilder;
.super Lcom/google/common/graph/AbstractGraphBuilder;
.source "NetworkBuilder.java"


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
        "Lcom/google/common/graph/AbstractGraphBuilder",
        "<TN;>;"
    }
.end annotation


# instance fields
.field allowsParallelEdges:Z

.field edgeOrder:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder",
            "<-TE;>;"
        }
    .end annotation
.end field

.field expectedEdgeCount:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z)V
    .registers 3
    .param p1, "directed"    # Z

    .prologue
    .line 59
    .local p0, "this":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<TN;TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/AbstractGraphBuilder;-><init>(Z)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/graph/NetworkBuilder;->allowsParallelEdges:Z

    .line 54
    invoke-static {}, Lcom/google/common/graph/ElementOrder;->insertion()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/NetworkBuilder;->edgeOrder:Lcom/google/common/graph/ElementOrder;

    .line 55
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/NetworkBuilder;->expectedEdgeCount:Lcom/google/common/base/Optional;

    .line 60
    return-void
.end method

.method private cast()Lcom/google/common/graph/NetworkBuilder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "Lcom/google/common/graph/NetworkBuilder",
            "<TN1;TE1;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<TN;TE;>;"
    return-object p0
.end method

.method public static directed()Lcom/google/common/graph/NetworkBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/NetworkBuilder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/google/common/graph/NetworkBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/graph/NetworkBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static from(Lcom/google/common/graph/Network;)Lcom/google/common/graph/NetworkBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;)",
            "Lcom/google/common/graph/NetworkBuilder",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    new-instance v0, Lcom/google/common/graph/NetworkBuilder;

    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/graph/NetworkBuilder;-><init>(Z)V

    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/NetworkBuilder;->allowsParallelEdges(Z)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/NetworkBuilder;->allowsSelfLoops(Z)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/NetworkBuilder;->nodeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->edgeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/NetworkBuilder;->edgeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static undirected()Lcom/google/common/graph/NetworkBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/NetworkBuilder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/google/common/graph/NetworkBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/graph/NetworkBuilder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public allowsParallelEdges(Z)Lcom/google/common/graph/NetworkBuilder;
    .registers 2
    .param p1, "allowsParallelEdges"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/graph/NetworkBuilder",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<TN;TE;>;"
    iput-boolean p1, p0, Lcom/google/common/graph/NetworkBuilder;->allowsParallelEdges:Z

    .line 94
    return-object p0
.end method

.method public allowsSelfLoops(Z)Lcom/google/common/graph/NetworkBuilder;
    .registers 2
    .param p1, "allowsSelfLoops"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/graph/NetworkBuilder",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<TN;TE;>;"
    iput-boolean p1, p0, Lcom/google/common/graph/NetworkBuilder;->allowsSelfLoops:Z

    .line 104
    return-object p0
.end method

.method public build()Lcom/google/common/graph/MutableNetwork;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "Lcom/google/common/graph/MutableNetwork",
            "<TN1;TE1;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<TN;TE;>;"
    new-instance v0, Lcom/google/common/graph/ConfigurableMutableNetwork;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;-><init>(Lcom/google/common/graph/NetworkBuilder;)V

    return-object v0
.end method

.method public edgeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/NetworkBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:TE;>(",
            "Lcom/google/common/graph/ElementOrder",
            "<TE1;>;)",
            "Lcom/google/common/graph/NetworkBuilder",
            "<TN;TE1;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<TN;TE;>;"
    .local p1, "edgeOrder":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<TE1;>;"
    invoke-direct {p0}, Lcom/google/common/graph/NetworkBuilder;->cast()Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 137
    .local v0, "newBuilder":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<TN;TE1;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/ElementOrder;

    iput-object v1, v0, Lcom/google/common/graph/NetworkBuilder;->edgeOrder:Lcom/google/common/graph/ElementOrder;

    .line 138
    return-object v0
.end method

.method public expectedEdgeCount(I)Lcom/google/common/graph/NetworkBuilder;
    .registers 3
    .param p1, "expectedEdgeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/graph/NetworkBuilder",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<TN;TE;>;"
    invoke-static {p1}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/NetworkBuilder;->expectedEdgeCount:Lcom/google/common/base/Optional;

    .line 124
    return-object p0
.end method

.method public expectedNodeCount(I)Lcom/google/common/graph/NetworkBuilder;
    .registers 3
    .param p1, "expectedNodeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/graph/NetworkBuilder",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<TN;TE;>;"
    invoke-static {p1}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/NetworkBuilder;->expectedNodeCount:Lcom/google/common/base/Optional;

    .line 114
    return-object p0
.end method

.method public nodeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/NetworkBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lcom/google/common/graph/ElementOrder",
            "<TN1;>;)",
            "Lcom/google/common/graph/NetworkBuilder",
            "<TN1;TE;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<TN;TE;>;"
    .local p1, "nodeOrder":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<TN1;>;"
    invoke-direct {p0}, Lcom/google/common/graph/NetworkBuilder;->cast()Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 130
    .local v0, "newBuilder":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<TN1;TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/ElementOrder;

    iput-object v1, v0, Lcom/google/common/graph/NetworkBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    .line 131
    return-object v0
.end method
