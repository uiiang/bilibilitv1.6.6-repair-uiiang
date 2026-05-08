.class Lcom/google/common/collect/RegularContiguousSet$2;
.super Lcom/google/common/collect/AbstractSequentialIterator;
.source "RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularContiguousSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractSequentialIterator",
        "<TC;>;"
    }
.end annotation


# instance fields
.field final first:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/RegularContiguousSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularContiguousSet;Ljava/lang/Comparable;)V
    .registers 4

    .prologue
    .line 92
    .local p0, "this":Lcom/google/common/collect/RegularContiguousSet$2;, "Lcom/google/common/collect/RegularContiguousSet.2;"
    .local p2, "x0":Ljava/lang/Comparable;, "TC;"
    iput-object p1, p0, Lcom/google/common/collect/RegularContiguousSet$2;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$2;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$2;->first:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method protected computeNext(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/collect/RegularContiguousSet$2;, "Lcom/google/common/collect/RegularContiguousSet.2;"
    .local p1, "previous":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$2;->first:Ljava/lang/Comparable;

    # invokes: Lcom/google/common/collect/RegularContiguousSet;->equalsOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    invoke-static {p1, v0}, Lcom/google/common/collect/RegularContiguousSet;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$2;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    iget-object v0, v0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/DiscreteDomain;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    goto :goto_9
.end method

.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 92
    .local p0, "this":Lcom/google/common/collect/RegularContiguousSet$2;, "Lcom/google/common/collect/RegularContiguousSet.2;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularContiguousSet$2;->computeNext(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
