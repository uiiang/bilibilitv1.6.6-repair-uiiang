.class final enum Lcom/google/common/collect/TreeMultiset$Aggregate$1;
.super Lcom/google/common/collect/TreeMultiset$Aggregate;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset$Aggregate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;-><init>(Ljava/lang/String;ILcom/google/common/collect/TreeMultiset$1;)V

    return-void
.end method


# virtual methods
.method nodeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<*>;"
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$200(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    return v0
.end method

.method treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .registers 4
    .param p1    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<*>;"
    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    :goto_4
    return-wide v0

    :cond_5
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$300(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v0

    goto :goto_4
.end method
