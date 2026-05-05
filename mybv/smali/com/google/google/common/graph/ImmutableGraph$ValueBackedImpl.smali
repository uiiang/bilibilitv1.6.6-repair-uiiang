.class Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl;
.super Lcom/google/common/graph/ImmutableGraph;
.source "ImmutableGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/ImmutableGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValueBackedImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ImmutableGraph",
        "<TN;>;"
    }
.end annotation


# instance fields
.field protected final backingValueGraph:Lcom/google/common/graph/ValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractGraphBuilder;Lcom/google/common/collect/ImmutableMap;J)V
    .registers 6
    .param p3, "edgeCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/AbstractGraphBuilder",
            "<-TN;>;",
            "Lcom/google/common/collect/ImmutableMap",
            "<TN;",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;TV;>;>;J)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl;, "Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl<TN;TV;>;"
    .local p1, "builder":Lcom/google/common/graph/AbstractGraphBuilder;, "Lcom/google/common/graph/AbstractGraphBuilder<-TN;>;"
    .local p2, "nodeConnections":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<TN;Lcom/google/common/graph/GraphConnections<TN;TV;>;>;"
    invoke-direct {p0}, Lcom/google/common/graph/ImmutableGraph;-><init>()V

    .line 96
    new-instance v0, Lcom/google/common/graph/ConfigurableValueGraph;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/graph/ConfigurableValueGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V

    iput-object v0, p0, Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl;->backingValueGraph:Lcom/google/common/graph/ValueGraph;

    .line 98
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
    .line 102
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl;, "Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl;->backingValueGraph:Lcom/google/common/graph/ValueGraph;

    return-object v0
.end method
