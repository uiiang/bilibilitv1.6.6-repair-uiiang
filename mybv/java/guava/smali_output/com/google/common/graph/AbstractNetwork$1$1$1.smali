.class Lcom/google/common/graph/AbstractNetwork$1$1$1;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractNetwork$1$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TE;",
        "Lcom/google/common/graph/EndpointPair",
        "<TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/graph/AbstractNetwork$1$1;


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractNetwork$1$1;)V
    .registers 2

    .prologue
    .line 66
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1$1$1;, "Lcom/google/common/graph/AbstractNetwork$1$1.1;"
    iput-object p1, p0, Lcom/google/common/graph/AbstractNetwork$1$1$1;->this$2:Lcom/google/common/graph/AbstractNetwork$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1$1$1;, "Lcom/google/common/graph/AbstractNetwork$1$1.1;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$1$1$1;->this$2:Lcom/google/common/graph/AbstractNetwork$1$1;

    iget-object v0, v0, Lcom/google/common/graph/AbstractNetwork$1$1;->this$1:Lcom/google/common/graph/AbstractNetwork$1;

    iget-object v0, v0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/AbstractNetwork;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 66
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork$1$1$1;, "Lcom/google/common/graph/AbstractNetwork$1$1.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork$1$1$1;->apply(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method
