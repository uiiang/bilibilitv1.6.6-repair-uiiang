.class Lcom/google/common/primitives/Ints$IntArrayAsList;
.super Ljava/util/AbstractList;
.source "Ints.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Ints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[I

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([I)V
    .registers 4
    .param p1, "array"    # [I

    .prologue
    .line 500
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([III)V

    .line 501
    return-void
.end method

.method constructor <init>([III)V
    .registers 4
    .param p1, "array"    # [I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 504
    iput-object p1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    .line 505
    iput p2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    .line 506
    iput p3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    .line 507
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 528
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Ints;->indexOf([IIII)I
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints;->access$000([IIII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 576
    if-ne p1, p0, :cond_5

    .line 592
    :cond_4
    :goto_4
    return v3

    .line 579
    :cond_5
    instance-of v5, p1, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v5, :cond_30

    move-object v2, p1

    .line 580
    check-cast v2, Lcom/google/common/primitives/Ints$IntArrayAsList;

    .line 581
    .local v2, "that":Lcom/google/common/primitives/Ints$IntArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    .line 582
    .local v1, "size":I
    invoke-virtual {v2}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v5

    if-eq v5, v1, :cond_18

    move v3, v4

    .line 583
    goto :goto_4

    .line 585
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v1, :cond_4

    .line 586
    iget-object v5, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v6, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v6, v0

    aget v5, v5, v6

    iget-object v6, v2, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v7, v2, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v7, v0

    aget v6, v6, v7

    if-eq v5, v6, :cond_2d

    move v3, v4

    .line 587
    goto :goto_4

    .line 585
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 592
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "that":Lcom/google/common/primitives/Ints$IntArrayAsList;
    :cond_30
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4
.end method

.method public get(I)Ljava/lang/Integer;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 522
    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Ints$IntArrayAsList;->get(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 597
    const/4 v1, 0x1

    .line 598
    .local v1, "result":I
    iget v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    .local v0, "i":I
    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    if-ge v0, v2, :cond_16

    .line 599
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/common/primitives/Ints;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 601
    :cond_16
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 7
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 534
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1b

    .line 535
    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Ints;->indexOf([IIII)I
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Ints;->access$000([IIII)I

    move-result v0

    .line 536
    .local v0, "i":I
    if-ltz v0, :cond_1b

    .line 537
    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 540
    .end local v0    # "i":I
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 7
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 546
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1b

    .line 547
    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Ints;->access$100([IIII)I

    move-result v0

    .line 548
    .local v0, "i":I
    if-ltz v0, :cond_1b

    .line 549
    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 552
    .end local v0    # "i":I
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public set(ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 7
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Integer;

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 558
    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v2, p1

    aget v0, v1, v2

    .line 560
    .local v0, "oldValue":I
    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int v3, v1, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v3

    .line 561
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 492
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Ints$IntArrayAsList;->set(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 511
    iget v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    .line 567
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 568
    if-ne p1, p2, :cond_e

    .line 569
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 571
    :goto_d
    return-object v1

    :cond_e
    new-instance v1, Lcom/google/common/primitives/Ints$IntArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([III)V

    goto :goto_d
.end method

.method toIntArray()[I
    .registers 6

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    .line 617
    .local v1, "size":I
    new-array v0, v1, [I

    .line 618
    .local v0, "result":[I
    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 607
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 608
    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_1e
    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    if-ge v1, v2, :cond_32

    .line 609
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 611
    :cond_32
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
