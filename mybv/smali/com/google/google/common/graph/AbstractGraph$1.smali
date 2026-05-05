.class Lcom/google/common/graph/AbstractGraph$1;
.super Ljava/util/AbstractSet;
.source "AbstractGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractGraph;->edges()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/graph/EndpointPair",
        "<TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/AbstractGraph;


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractGraph;)V
    .registers 2

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/graph/AbstractGraph$1;, "Lcom/google/common/graph/AbstractGraph.1;"
    iput-object p1, p0, Lcom/google/common/graph/AbstractGraph$1;->this$0:Lcom/google/common/graph/AbstractGraph;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/graph/AbstractGraph$1;, "Lcom/google/common/graph/AbstractGraph.1;"
    const/4 v1, 0x0

    .line 75
    instance-of v2, p1, Lcom/google/common/graph/EndpointPair;

    if-nez v2, :cond_6

    .line 79
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 78
    check-cast v0, Lcom/google/common/graph/EndpointPair;

    .line 79
    .local v0, "endpointPair":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<*>;"
    iget-object v2, p0, Lcom/google/common/graph/AbstractGraph$1;->this$0:Lcom/google/common/graph/AbstractGraph;

    invoke-virtual {v2}, Lcom/google/common/graph/AbstractGraph;->isDirected()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/common/graph/AbstractGraph$1;->this$0:Lcom/google/common/graph/AbstractGraph;

    invoke-virtual {v2}, Lcom/google/common/graph/AbstractGraph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/common/graph/AbstractGraph$1;->this$0:Lcom/google/common/graph/AbstractGraph;

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/graph/AbstractGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/graph/AbstractGraph$1;, "Lcom/google/common/graph/AbstractGraph.1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractGraph$1;->this$0:Lcom/google/common/graph/AbstractGraph;

    invoke-static {v0}, Lcom/google/common/graph/EndpointPairIterator;->of(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/EndpointPairIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/graph/AbstractGraph$1;, "Lcom/google/common/graph/AbstractGraph.1;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 70
    .local p0, "this":Lcom/google/common/graph/AbstractGraph$1;, "Lcom/google/common/graph/AbstractGraph.1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractGraph$1;->this$0:Lcom/google/common/graph/AbstractGraph;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractGraph;->edgeCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
