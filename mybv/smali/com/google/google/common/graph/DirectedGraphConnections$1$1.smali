.class Lcom/google/common/graph/DirectedGraphConnections$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/DirectedGraphConnections$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/graph/DirectedGraphConnections$1;

.field final synthetic val$entries:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/graph/DirectedGraphConnections$1;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 109
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$1$1;, "Lcom/google/common/graph/DirectedGraphConnections$1.1;"
    iput-object p1, p0, Lcom/google/common/graph/DirectedGraphConnections$1$1;->this$1:Lcom/google/common/graph/DirectedGraphConnections$1;

    iput-object p2, p0, Lcom/google/common/graph/DirectedGraphConnections$1$1;->val$entries:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$1$1;, "Lcom/google/common/graph/DirectedGraphConnections$1.1;"
    :cond_0
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections$1$1;->val$entries:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 113
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections$1$1;->val$entries:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TN;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/google/common/graph/DirectedGraphConnections;->isPredecessor(Ljava/lang/Object;)Z
    invoke-static {v1}, Lcom/google/common/graph/DirectedGraphConnections;->access$100(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 118
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TN;Ljava/lang/Object;>;"
    :goto_1e
    return-object v1

    :cond_1f
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1e
.end method
