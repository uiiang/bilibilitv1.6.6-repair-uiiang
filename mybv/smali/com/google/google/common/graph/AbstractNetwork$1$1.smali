.class Lcom/google/common/graph/AbstractNetwork$1$1;
.super Ljava/util/AbstractSet;
.source "AbstractNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractNetwork$1;->edges()Ljava/util/Set;
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
.field final synthetic this$1:Lcom/google/common/graph/AbstractNetwork$1;


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractNetwork$1;)V
    .registers 2

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1$1;, "Lcom/google/common/graph/AbstractNetwork$1.1;"
    iput-object p1, p0, Lcom/google/common/graph/AbstractNetwork$1$1;->this$1:Lcom/google/common/graph/AbstractNetwork$1;

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
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1$1;, "Lcom/google/common/graph/AbstractNetwork$1.1;"
    const/4 v1, 0x0

    .line 81
    instance-of v2, p1, Lcom/google/common/graph/EndpointPair;

    if-nez v2, :cond_6

    .line 85
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 84
    check-cast v0, Lcom/google/common/graph/EndpointPair;

    .line 85
    .local v0, "endpointPair":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<*>;"
    iget-object v2, p0, Lcom/google/common/graph/AbstractNetwork$1$1;->this$1:Lcom/google/common/graph/AbstractNetwork$1;

    invoke-virtual {v2}, Lcom/google/common/graph/AbstractNetwork$1;->isDirected()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/common/graph/AbstractNetwork$1$1;->this$1:Lcom/google/common/graph/AbstractNetwork$1;

    invoke-virtual {v2}, Lcom/google/common/graph/AbstractNetwork$1;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/common/graph/AbstractNetwork$1$1;->this$1:Lcom/google/common/graph/AbstractNetwork$1;

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/graph/AbstractNetwork$1;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1$1;, "Lcom/google/common/graph/AbstractNetwork$1.1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$1$1;->this$1:Lcom/google/common/graph/AbstractNetwork$1;

    iget-object v0, v0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractNetwork;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/AbstractNetwork$1$1$1;

    invoke-direct {v1, p0}, Lcom/google/common/graph/AbstractNetwork$1$1$1;-><init>(Lcom/google/common/graph/AbstractNetwork$1$1;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1$1;, "Lcom/google/common/graph/AbstractNetwork$1.1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$1$1;->this$1:Lcom/google/common/graph/AbstractNetwork$1;

    iget-object v0, v0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractNetwork;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
