.class Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableRangeSet$AsSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TC;>;"
    }
.end annotation


# instance fields
.field elemItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TC;>;"
        }
    .end annotation
.end field

.field final rangeItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/ImmutableRangeSet$AsSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeSet$AsSet;)V
    .registers 3

    .prologue
    .line 470
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;, "Lcom/google/common/collect/ImmutableRangeSet$AsSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;->this$1:Lcom/google/common/collect/ImmutableRangeSet$AsSet;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 471
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;->this$1:Lcom/google/common/collect/ImmutableRangeSet$AsSet;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    # getter for: Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;->rangeItr:Ljava/util/Iterator;

    .line 472
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;->elemItr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Comparable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;, "Lcom/google/common/collect/ImmutableRangeSet$AsSet.1;"
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;->elemItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_30

    .line 477
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;->rangeItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 478
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;->rangeItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;->this$1:Lcom/google/common/collect/ImmutableRangeSet$AsSet;

    # getter for: Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;
    invoke-static {v1}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->access$100(Lcom/google/common/collect/ImmutableRangeSet$AsSet;)Lcom/google/common/collect/DiscreteDomain;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ContiguousSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;->elemItr:Ljava/util/Iterator;

    goto :goto_0

    .line 480
    :cond_29
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 483
    :goto_2f
    return-object v0

    :cond_30
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;->elemItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    goto :goto_2f
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 470
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;, "Lcom/google/common/collect/ImmutableRangeSet$AsSet.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;->computeNext()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
