.class final Lcom/google/common/collect/Cut$AboveValue;
.super Lcom/google/common/collect/Cut;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Cut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AboveValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/Cut",
        "<TC;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    .local p1, "endpoint":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 375
    return-void
.end method


# virtual methods
.method canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    .local p1, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Cut$AboveValue;->leastValueAbove(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;

    move-result-object v0

    .line 441
    .local v0, "next":Ljava/lang/Comparable;, "TC;"
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/google/common/collect/Cut$AboveValue;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    goto :goto_a
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 372
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    check-cast p1, Lcom/google/common/collect/Cut;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    return v0
.end method

.method describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 420
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    return-void
.end method

.method describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 425
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    return-void
.end method

.method greatestValueBelow(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    .local p1, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 446
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isLessThan(Ljava/lang/Comparable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method leastValueAbove(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    .local p1, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 451
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method typeAsLowerBound()Lcom/google/common/collect/BoundType;
    .registers 2

    .prologue
    .line 384
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method typeAsUpperBound()Lcom/google/common/collect/BoundType;
    .registers 2

    .prologue
    .line 389
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .registers 6
    .param p1, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    .local p2, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    sget-object v1, Lcom/google/common/collect/Cut$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_24

    .line 401
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 398
    :pswitch_11
    iget-object v1, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p2, v1}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    .line 399
    .local v0, "next":Ljava/lang/Comparable;, "TC;"
    if-nez v0, :cond_1f

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    :goto_1d
    move-object p0, v1

    .end local v0    # "next":Ljava/lang/Comparable;, "TC;"
    .end local p0    # "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    :pswitch_1e
    return-object p0

    .restart local v0    # "next":Ljava/lang/Comparable;, "TC;"
    .restart local p0    # "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    :cond_1f
    invoke-static {v0}, Lcom/google/common/collect/Cut$AboveValue;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    goto :goto_1d

    .line 394
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1e
    .end packed-switch
.end method

.method withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .registers 6
    .param p1, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "this":Lcom/google/common/collect/Cut$AboveValue;, "Lcom/google/common/collect/Cut$AboveValue<TC;>;"
    .local p2, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    sget-object v1, Lcom/google/common/collect/Cut$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_26

    .line 414
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 409
    :pswitch_11
    iget-object v1, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p2, v1}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    .line 410
    .local v0, "next":Ljava/lang/Comparable;, "TC;"
    if-nez v0, :cond_1e

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    .line 412
    .end local v0    # "next":Ljava/lang/Comparable;, "TC;"
    :goto_1d
    return-object v1

    .line 410
    .restart local v0    # "next":Ljava/lang/Comparable;, "TC;"
    :cond_1e
    invoke-static {v0}, Lcom/google/common/collect/Cut$AboveValue;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    goto :goto_1d

    .end local v0    # "next":Ljava/lang/Comparable;, "TC;"
    :pswitch_23
    move-object v1, p0

    .line 412
    goto :goto_1d

    .line 407
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_11
    .end packed-switch
.end method
