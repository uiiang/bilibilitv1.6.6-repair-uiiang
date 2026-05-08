.class Lcom/google/common/graph/DirectedGraphConnections$2;
.super Ljava/util/AbstractSet;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/DirectedGraphConnections;->successors()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/DirectedGraphConnections;


# direct methods
.method constructor <init>(Lcom/google/common/graph/DirectedGraphConnections;)V
    .registers 2

    .prologue
    .line 137
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$2;, "Lcom/google/common/graph/DirectedGraphConnections.2;"
    iput-object p1, p0, Lcom/google/common/graph/DirectedGraphConnections$2;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 162
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$2;, "Lcom/google/common/graph/DirectedGraphConnections.2;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$2;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    # getter for: Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$000(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    # invokes: Lcom/google/common/graph/DirectedGraphConnections;->isSuccessor(Ljava/lang/Object;)Z
    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$300(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$2;, "Lcom/google/common/graph/DirectedGraphConnections.2;"
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections$2;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    # getter for: Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/common/graph/DirectedGraphConnections;->access$000(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 141
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TN;Ljava/lang/Object;>;>;"
    new-instance v1, Lcom/google/common/graph/DirectedGraphConnections$2$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/DirectedGraphConnections$2$1;-><init>(Lcom/google/common/graph/DirectedGraphConnections$2;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 137
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$2;, "Lcom/google/common/graph/DirectedGraphConnections.2;"
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections$2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 157
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$2;, "Lcom/google/common/graph/DirectedGraphConnections.2;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$2;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    # getter for: Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I
    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$400(Lcom/google/common/graph/DirectedGraphConnections;)I

    move-result v0

    return v0
.end method
