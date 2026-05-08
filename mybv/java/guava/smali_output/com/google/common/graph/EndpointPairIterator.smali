.class abstract Lcom/google/common/graph/EndpointPairIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "EndpointPairIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/EndpointPairIterator$1;,
        Lcom/google/common/graph/EndpointPairIterator$Undirected;,
        Lcom/google/common/graph/EndpointPairIterator$Directed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Lcom/google/common/graph/EndpointPair",
        "<TN;>;>;"
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

.field protected node:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field private final nodeIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TN;>;"
        }
    .end annotation
.end field

.field protected successorIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/graph/Graph;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/google/common/graph/EndpointPairIterator;, "Lcom/google/common/graph/EndpointPairIterator<TN;>;"
    .local p1, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->node:Ljava/lang/Object;

    .line 37
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->successorIterator:Ljava/util/Iterator;

    .line 44
    iput-object p1, p0, Lcom/google/common/graph/EndpointPairIterator;->graph:Lcom/google/common/graph/Graph;

    .line 45
    invoke-interface {p1}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->nodeIterator:Ljava/util/Iterator;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/Graph;Lcom/google/common/graph/EndpointPairIterator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/graph/Graph;
    .param p2, "x1"    # Lcom/google/common/graph/EndpointPairIterator$1;

    .prologue
    .line 32
    .local p0, "this":Lcom/google/common/graph/EndpointPairIterator;, "Lcom/google/common/graph/EndpointPairIterator<TN;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/EndpointPairIterator;-><init>(Lcom/google/common/graph/Graph;)V

    return-void
.end method

.method static of(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/EndpointPairIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)",
            "Lcom/google/common/graph/EndpointPairIterator",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    const/4 v1, 0x0

    .line 40
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/google/common/graph/EndpointPairIterator$Directed;

    invoke-direct {v0, p0, v1}, Lcom/google/common/graph/EndpointPairIterator$Directed;-><init>(Lcom/google/common/graph/Graph;Lcom/google/common/graph/EndpointPairIterator$1;)V

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/google/common/graph/EndpointPairIterator$Undirected;

    invoke-direct {v0, p0, v1}, Lcom/google/common/graph/EndpointPairIterator$Undirected;-><init>(Lcom/google/common/graph/Graph;Lcom/google/common/graph/EndpointPairIterator$1;)V

    goto :goto_c
.end method


# virtual methods
.method protected final advance()Z
    .registers 4

    .prologue
    .local p0, "this":Lcom/google/common/graph/EndpointPairIterator;, "Lcom/google/common/graph/EndpointPairIterator<TN;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 54
    iget-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->nodeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 59
    :goto_16
    return v2

    :cond_17
    move v0, v2

    .line 53
    goto :goto_b

    .line 57
    :cond_19
    iget-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->nodeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->node:Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->graph:Lcom/google/common/graph/Graph;

    iget-object v2, p0, Lcom/google/common/graph/EndpointPairIterator;->node:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->successorIterator:Ljava/util/Iterator;

    move v2, v1

    .line 59
    goto :goto_16
.end method
