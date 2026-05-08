.class final Lcom/google/common/graph/DirectedMultiNetworkConnections;
.super Lcom/google/common/graph/AbstractDirectedNetworkConnections;
.source "DirectedMultiNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractDirectedNetworkConnections",
        "<TN;TE;>;"
    }
.end annotation


# instance fields
.field private transient predecessorsReference:Ljava/lang/ref/Reference;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/google/common/collect/Multiset",
            "<TN;>;>;"
        }
    .end annotation
.end field

.field private transient successorsReference:Ljava/lang/ref/Reference;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/google/common/collect/Multiset",
            "<TN;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .registers 4
    .param p3, "selfLoopCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;TN;>;",
            "Ljava/util/Map",
            "<TE;TN;>;I)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/graph/DirectedMultiNetworkConnections;, "Lcom/google/common/graph/DirectedMultiNetworkConnections<TN;TE;>;"
    .local p1, "inEdges":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    .local p2, "outEdges":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/graph/DirectedMultiNetworkConnections;)Lcom/google/common/collect/Multiset;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/graph/DirectedMultiNetworkConnections;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsMultiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method private static getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;
    .registers 2
    .param p0    # Ljava/lang/ref/Reference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/Reference",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 146
    .local p0, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method static of()Lcom/google/common/graph/DirectedMultiNetworkConnections;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/graph/DirectedMultiNetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 50
    new-instance v0, Lcom/google/common/graph/DirectedMultiNetworkConnections;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4, v3}, Ljava/util/HashMap;-><init>(IF)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v4, v3}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/graph/DirectedMultiNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v0
.end method

.method static ofImmutable(Ljava/util/Map;Ljava/util/Map;I)Lcom/google/common/graph/DirectedMultiNetworkConnections;
    .registers 6
    .param p2, "selfLoopCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TE;TN;>;",
            "Ljava/util/Map",
            "<TE;TN;>;I)",
            "Lcom/google/common/graph/DirectedMultiNetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "inEdges":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    .local p1, "outEdges":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    new-instance v0, Lcom/google/common/graph/DirectedMultiNetworkConnections;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/google/common/graph/DirectedMultiNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v0
.end method

.method private predecessorsMultiset()Lcom/google/common/collect/Multiset;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/common/graph/DirectedMultiNetworkConnections;, "Lcom/google/common/graph/DirectedMultiNetworkConnections<TN;TE;>;"
    iget-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsReference:Ljava/lang/ref/Reference;

    invoke-static {v1}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 72
    .local v0, "predecessors":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TN;>;"
    if-nez v0, :cond_1b

    .line 73
    iget-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->inEdgeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsReference:Ljava/lang/ref/Reference;

    .line 76
    :cond_1b
    return-object v0
.end method

.method private successorsMultiset()Lcom/google/common/collect/Multiset;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/google/common/graph/DirectedMultiNetworkConnections;, "Lcom/google/common/graph/DirectedMultiNetworkConnections<TN;TE;>;"
    iget-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsReference:Ljava/lang/ref/Reference;

    invoke-static {v1}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 89
    .local v0, "successors":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TN;>;"
    if-nez v0, :cond_1b

    .line 90
    iget-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsReference:Ljava/lang/ref/Reference;

    .line 93
    :cond_1b
    return-object v0
.end method


# virtual methods
.method public addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 6
    .param p3, "isSelfLoop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;Z)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/google/common/graph/DirectedMultiNetworkConnections;, "Lcom/google/common/graph/DirectedMultiNetworkConnections<TN;TE;>;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    .local p2, "node":Ljava/lang/Object;, "TN;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 129
    iget-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsReference:Ljava/lang/ref/Reference;

    invoke-static {v1}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 130
    .local v0, "predecessors":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TN;>;"
    if-eqz v0, :cond_14

    .line 131
    invoke-interface {v0, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 133
    :cond_14
    return-void
.end method

.method public addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/google/common/graph/DirectedMultiNetworkConnections;, "Lcom/google/common/graph/DirectedMultiNetworkConnections<TN;TE;>;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    .local p2, "node":Ljava/lang/Object;, "TN;"
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsReference:Ljava/lang/ref/Reference;

    invoke-static {v1}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 139
    .local v0, "successors":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TN;>;"
    if-eqz v0, :cond_14

    .line 140
    invoke-interface {v0, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 142
    :cond_14
    return-void
.end method

.method public edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
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
    .line 98
    .local p0, "this":Lcom/google/common/graph/DirectedMultiNetworkConnections;, "Lcom/google/common/graph/DirectedMultiNetworkConnections<TN;TE;>;"
    new-instance v0, Lcom/google/common/graph/DirectedMultiNetworkConnections$1;

    iget-object v1, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/common/graph/DirectedMultiNetworkConnections$1;-><init>(Lcom/google/common/graph/DirectedMultiNetworkConnections;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public predecessors()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/graph/DirectedMultiNetworkConnections;, "Lcom/google/common/graph/DirectedMultiNetworkConnections<TN;TE;>;"
    invoke-direct {p0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsMultiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 6
    .param p1, "edge"    # Ljava/lang/Object;
    .param p2, "isSelfLoop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)TN;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/google/common/graph/DirectedMultiNetworkConnections;, "Lcom/google/common/graph/DirectedMultiNetworkConnections<TN;TE;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "node":Ljava/lang/Object;, "TN;"
    iget-object v2, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->predecessorsReference:Ljava/lang/ref/Reference;

    invoke-static {v2}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset;

    .line 110
    .local v1, "predecessors":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TN;>;"
    if-eqz v1, :cond_15

    .line 111
    invoke-interface {v1, v0}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 113
    :cond_15
    return-object v0
.end method

.method public removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "edge"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TN;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/google/common/graph/DirectedMultiNetworkConnections;, "Lcom/google/common/graph/DirectedMultiNetworkConnections<TN;TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "node":Ljava/lang/Object;, "TN;"
    iget-object v2, p0, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsReference:Ljava/lang/ref/Reference;

    invoke-static {v2}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->getReference(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset;

    .line 120
    .local v1, "successors":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TN;>;"
    if-eqz v1, :cond_15

    .line 121
    invoke-interface {v1, v0}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 123
    :cond_15
    return-object v0
.end method

.method public successors()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/google/common/graph/DirectedMultiNetworkConnections;, "Lcom/google/common/graph/DirectedMultiNetworkConnections<TN;TE;>;"
    invoke-direct {p0}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->successorsMultiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
