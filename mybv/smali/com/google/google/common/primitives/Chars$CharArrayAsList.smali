.class Lcom/google/common/primitives/Chars$CharArrayAsList;
.super Ljava/util/AbstractList;
.source "Chars.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Chars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[C

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([C)V
    .registers 4
    .param p1, "array"    # [C

    .prologue
    .line 448
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([CII)V

    .line 449
    return-void
.end method

.method constructor <init>([CII)V
    .registers 4
    .param p1, "array"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 452
    iput-object p1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    .line 453
    iput p2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    .line 454
    iput p3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    .line 455
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 476
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Chars;->indexOf([CCII)I
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->access$000([CCII)I

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

    .line 525
    if-ne p1, p0, :cond_5

    .line 541
    :cond_4
    :goto_4
    return v3

    .line 528
    :cond_5
    instance-of v5, p1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    if-eqz v5, :cond_30

    move-object v2, p1

    .line 529
    check-cast v2, Lcom/google/common/primitives/Chars$CharArrayAsList;

    .line 530
    .local v2, "that":Lcom/google/common/primitives/Chars$CharArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v1

    .line 531
    .local v1, "size":I
    invoke-virtual {v2}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v5

    if-eq v5, v1, :cond_18

    move v3, v4

    .line 532
    goto :goto_4

    .line 534
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v1, :cond_4

    .line 535
    iget-object v5, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v6, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v6, v0

    aget-char v5, v5, v6

    iget-object v6, v2, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v7, v2, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v7, v0

    aget-char v6, v6, v7

    if-eq v5, v6, :cond_2d

    move v3, v4

    .line 536
    goto :goto_4

    .line 534
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 541
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "that":Lcom/google/common/primitives/Chars$CharArrayAsList;
    :cond_30
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4
.end method

.method public get(I)Ljava/lang/Character;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 470
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Chars$CharArrayAsList;->get(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 546
    const/4 v1, 0x1

    .line 547
    .local v1, "result":I
    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    .local v0, "i":I
    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    if-ge v0, v2, :cond_16

    .line 548
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Lcom/google/common/primitives/Chars;->hashCode(C)I

    move-result v3

    add-int v1, v2, v3

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 550
    :cond_16
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 7
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 483
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_1b

    .line 484
    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Chars;->indexOf([CCII)I
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Chars;->access$000([CCII)I

    move-result v0

    .line 485
    .local v0, "i":I
    if-ltz v0, :cond_1b

    .line 486
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 489
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
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 7
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 495
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_1b

    .line 496
    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Chars;->access$100([CCII)I

    move-result v0

    .line 497
    .local v0, "i":I
    if-ltz v0, :cond_1b

    .line 498
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 501
    .end local v0    # "i":I
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public set(ILjava/lang/Character;)Ljava/lang/Character;
    .registers 7
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Character;

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 507
    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v2, p1

    aget-char v0, v1, v2

    .line 509
    .local v0, "oldValue":C
    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int v3, v1, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    aput-char v1, v2, v3

    .line 510
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 440
    check-cast p2, Ljava/lang/Character;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Chars$CharArrayAsList;->set(ILjava/lang/Character;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 459
    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

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
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    .line 516
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 517
    if-ne p1, p2, :cond_e

    .line 518
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 520
    :goto_d
    return-object v1

    :cond_e
    new-instance v1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([CII)V

    goto :goto_d
.end method

.method toCharArray()[C
    .registers 6

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v1

    .line 566
    .local v1, "size":I
    new-array v0, v1, [C

    .line 567
    .local v0, "result":[C
    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 556
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_1e
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    if-ge v1, v2, :cond_32

    .line 558
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    aget-char v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 560
    :cond_32
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
