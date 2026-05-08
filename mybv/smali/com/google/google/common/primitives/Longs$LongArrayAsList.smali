.class Lcom/google/common/primitives/Longs$LongArrayAsList;
.super Ljava/util/AbstractList;
.source "Longs.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[J

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([J)V
    .registers 4
    .param p1, "array"    # [J

    .prologue
    .line 586
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    .line 587
    return-void
.end method

.method constructor <init>([JII)V
    .registers 4
    .param p1, "array"    # [J
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 590
    iput-object p1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    .line 591
    iput p2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    .line 592
    iput p3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    .line 593
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 614
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Longs;->indexOf([JJII)I
    invoke-static {v0, v2, v3, v1, v4}, Lcom/google/common/primitives/Longs;->access$000([JJII)I

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
    .registers 12
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 662
    if-ne p1, p0, :cond_5

    .line 678
    :cond_4
    :goto_4
    return v3

    .line 665
    :cond_5
    instance-of v5, p1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v5, :cond_32

    move-object v2, p1

    .line 666
    check-cast v2, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .line 667
    .local v2, "that":Lcom/google/common/primitives/Longs$LongArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v1

    .line 668
    .local v1, "size":I
    invoke-virtual {v2}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v5

    if-eq v5, v1, :cond_18

    move v3, v4

    .line 669
    goto :goto_4

    .line 671
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v1, :cond_4

    .line 672
    iget-object v5, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v6, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v6, v0

    aget-wide v6, v5, v6

    iget-object v5, v2, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v8, v2, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v8, v0

    aget-wide v8, v5, v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2f

    move v3, v4

    .line 673
    goto :goto_4

    .line 671
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 678
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "that":Lcom/google/common/primitives/Longs$LongArrayAsList;
    :cond_32
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4
.end method

.method public get(I)Ljava/lang/Long;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 608
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Longs$LongArrayAsList;->get(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 683
    const/4 v1, 0x1

    .line 684
    .local v1, "result":I
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    .local v0, "i":I
    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v0, v2, :cond_16

    .line 685
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v4, v3, v0

    invoke-static {v4, v5}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v3

    add-int v1, v2, v3

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 687
    :cond_16
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 8
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 620
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_1b

    .line 621
    iget-object v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v5, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Longs;->indexOf([JJII)I
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/primitives/Longs;->access$000([JJII)I

    move-result v0

    .line 622
    .local v0, "i":I
    if-ltz v0, :cond_1b

    .line 623
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 626
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
    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 8
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 632
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_1b

    .line 633
    iget-object v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v5, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/primitives/Longs;->access$100([JJII)I

    move-result v0

    .line 634
    .local v0, "i":I
    if-ltz v0, :cond_1b

    .line 635
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 638
    .end local v0    # "i":I
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public set(ILjava/lang/Long;)Ljava/lang/Long;
    .registers 11
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Long;

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 644
    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v3, p1

    aget-wide v0, v2, v3

    .line 646
    .local v0, "oldValue":J
    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int v4, v2, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 647
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 578
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Longs$LongArrayAsList;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 597
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    .line 653
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 654
    if-ne p1, p2, :cond_e

    .line 655
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 657
    :goto_d
    return-object v1

    :cond_e
    new-instance v1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    goto :goto_d
.end method

.method toLongArray()[J
    .registers 6

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v1

    .line 703
    .local v1, "size":I
    new-array v0, v1, [J

    .line 704
    .local v0, "result":[J
    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 693
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 694
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_1e
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v1, v2, :cond_32

    .line 695
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v4, v3, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 697
    :cond_32
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
