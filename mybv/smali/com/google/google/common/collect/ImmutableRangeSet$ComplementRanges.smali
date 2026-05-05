.class final Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComplementRanges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Lcom/google/common/collect/Range",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field private final positiveBoundedAbove:Z

.field private final positiveBoundedBelow:Z

.field private final size:I

.field final synthetic this$0:Lcom/google/common/collect/ImmutableRangeSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeSet;)V
    .registers 5

    .prologue
    .line 257
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 258
    # getter for: Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;
    invoke-static {p1}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedBelow:Z

    .line 259
    # getter for: Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;
    invoke-static {p1}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedAbove:Z

    .line 261
    # getter for: Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;
    invoke-static {p1}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 262
    .local v0, "size":I
    iget-boolean v1, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedBelow:Z

    if-eqz v1, :cond_36

    .line 263
    add-int/lit8 v0, v0, 0x1

    .line 265
    :cond_36
    iget-boolean v1, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedAbove:Z

    if-eqz v1, :cond_3c

    .line 266
    add-int/lit8 v0, v0, 0x1

    .line 268
    :cond_3c
    iput v0, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->size:I

    .line 269
    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/common/collect/Range;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    iget v2, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->size:I

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 281
    iget-boolean v2, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedBelow:Z

    if-eqz v2, :cond_33

    .line 282
    if-nez p1, :cond_22

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    .line 288
    .local v0, "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_f
    iget-boolean v2, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedAbove:Z

    if-eqz v2, :cond_42

    iget v2, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->size:I

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_42

    .line 289
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    .line 294
    .local v1, "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_1d
    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v2

    return-object v2

    .line 282
    .end local v0    # "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .end local v1    # "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_22
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    # getter for: Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;
    invoke-static {v2}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    iget-object v0, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    goto :goto_f

    .line 284
    :cond_33
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    # getter for: Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;
    invoke-static {v2}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    iget-object v0, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .restart local v0    # "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    goto :goto_f

    .line 291
    :cond_42
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    # getter for: Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;
    invoke-static {v2}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iget-boolean v2, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedBelow:Z

    if-eqz v2, :cond_57

    const/4 v2, 0x0

    :goto_4d
    add-int/2addr v2, p1

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    iget-object v1, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .restart local v1    # "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    goto :goto_1d

    .end local v1    # "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_57
    const/4 v2, 0x1

    goto :goto_4d
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 248
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->get(I)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 299
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 273
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->size:I

    return v0
.end method
