.class Lcom/google/common/graph/ImmutableNetwork$1;
.super Lcom/google/common/graph/ImmutableGraph;
.source "ImmutableNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/ImmutableNetwork;->asGraph()Lcom/google/common/graph/ImmutableGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/ImmutableGraph",
        "<TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/ImmutableNetwork;

.field final synthetic val$asGraph:Lcom/google/common/graph/Graph;


# direct methods
.method constructor <init>(Lcom/google/common/graph/ImmutableNetwork;Lcom/google/common/graph/Graph;)V
    .registers 3

    .prologue
    .line 72
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork$1;, "Lcom/google/common/graph/ImmutableNetwork.1;"
    iput-object p1, p0, Lcom/google/common/graph/ImmutableNetwork$1;->this$0:Lcom/google/common/graph/ImmutableNetwork;

    iput-object p2, p0, Lcom/google/common/graph/ImmutableNetwork$1;->val$asGraph:Lcom/google/common/graph/Graph;

    invoke-direct {p0}, Lcom/google/common/graph/ImmutableGraph;-><init>()V

    return-void
.end method


# virtual methods
.method protected delegate()Lcom/google/common/graph/Graph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Graph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork$1;, "Lcom/google/common/graph/ImmutableNetwork.1;"
    iget-object v0, p0, Lcom/google/common/graph/ImmutableNetwork$1;->val$asGraph:Lcom/google/common/graph/Graph;

    return-object v0
.end method
