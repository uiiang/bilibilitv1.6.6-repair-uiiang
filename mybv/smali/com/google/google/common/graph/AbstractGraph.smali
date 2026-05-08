.class public abstract Lcom/google/common/graph/AbstractGraph;
.super Ljava/lang/Object;
.source "AbstractGraph.java"

# interfaces
.implements Lcom/google/common/graph/Graph;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/Graph",
        "<TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public degree(Ljava/lang/Object;)I
    .registers 6
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 88
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->isDirected()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v2

    .line 93
    :goto_1a
    return v2

    .line 91
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 92
    .local v0, "neighbors":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->allowsSelfLoops()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v1, 0x1

    .line 93
    .local v1, "selfLoopCount":I
    :goto_2c
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v2

    goto :goto_1a

    .line 92
    .end local v1    # "selfLoopCount":I
    :cond_35
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method protected edgeCount()J
    .registers 11

    .prologue
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    const/4 v5, 0x1

    .line 47
    const-wide/16 v0, 0x0

    .line 48
    .local v0, "degreeSum":J
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 49
    .local v3, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, v3}, Lcom/google/common/graph/AbstractGraph;->degree(Ljava/lang/Object;)I

    move-result v4

    int-to-long v6, v4

    add-long/2addr v0, v6

    .line 50
    goto :goto_b

    .line 52
    .end local v3    # "node":Ljava/lang/Object;, "TN;"
    :cond_1c
    const-wide/16 v6, 0x1

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_2c

    move v4, v5

    :goto_26
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 53
    ushr-long v4, v0, v5

    return-wide v4

    .line 52
    :cond_2c
    const/4 v4, 0x0

    goto :goto_26
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
    .line 62
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    new-instance v0, Lcom/google/common/graph/AbstractGraph$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractGraph$1;-><init>(Lcom/google/common/graph/AbstractGraph;)V

    return-object v0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .registers 3
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 99
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    goto :goto_e
.end method

.method public outDegree(Ljava/lang/Object;)I
    .registers 3
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 104
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    const-string v1, "isDirected: %s, allowsSelfLoops: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->isDirected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->allowsSelfLoops()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "propertiesString":Ljava/lang/String;
    const-string v1, "%s, nodes: %s, edges: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->nodes()Ljava/util/Set;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->edges()Ljava/util/Set;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
