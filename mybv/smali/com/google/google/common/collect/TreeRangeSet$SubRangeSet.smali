.class final Lcom/google/common/collect/TreeRangeSet$SubRangeSet;
.super Lcom/google/common/collect/TreeRangeSet;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubRangeSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TreeRangeSet",
        "<TC;>;"
    }
.end annotation


# instance fields
.field private final restriction:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeRangeSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p2, "restriction":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    const/4 v3, 0x0

    .line 855
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lcom/google/common/collect/TreeRangeSet;

    .line 856
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;Lcom/google/common/collect/TreeRangeSet$1;)V

    invoke-direct {p0, v0, v3}, Lcom/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/TreeRangeSet$1;)V

    .line 859
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    .line 860
    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "rangeToAdd":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    const-string v1, "Cannot add range %s to subRangeSet(%s)"

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-static {v0, v1, p1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 888
    invoke-super {p0, p1}, Lcom/google/common/collect/TreeRangeSet;->add(Lcom/google/common/collect/Range;)V

    .line 889
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 905
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lcom/google/common/collect/TreeRangeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeRangeSet;->remove(Lcom/google/common/collect/Range;)V

    .line 906
    return-void
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .line 900
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lcom/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    const/4 v1, 0x0

    .line 864
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 865
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lcom/google/common/collect/TreeRangeSet;

    # invokes: Lcom/google/common/collect/TreeRangeSet;->rangeEnclosing(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    invoke-static {v2, p1}, Lcom/google/common/collect/TreeRangeSet;->access$600(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 866
    .local v0, "enclosing":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    if-eqz v0, :cond_26

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    const/4 v1, 0x1

    .line 868
    .end local v0    # "enclosing":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_26
    return v1
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    const/4 v1, 0x0

    .line 874
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 878
    :cond_9
    :goto_9
    return-object v1

    .line 877
    :cond_a
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lcom/google/common/collect/TreeRangeSet;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/TreeRangeSet;->rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 878
    .local v0, "result":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    goto :goto_9
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 893
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "rangeToRemove":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 894
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lcom/google/common/collect/TreeRangeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeRangeSet;->remove(Lcom/google/common/collect/Range;)V

    .line 896
    :cond_13
    return-void
.end method

.method public subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 910
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "view":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 915
    .end local p0    # "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    :goto_8
    return-object p0

    .line 912
    .restart local p0    # "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    :cond_9
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 913
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;-><init>(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)V

    move-object p0, v0

    goto :goto_8

    .line 915
    :cond_1e
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    goto :goto_8
.end method
