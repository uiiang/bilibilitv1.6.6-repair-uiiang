.class Lcom/google/common/primitives/Booleans$BooleanArrayAsList;
.super Ljava/util/AbstractList;
.source "Booleans.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Booleans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BooleanArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[Z

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([Z)V
    .registers 4
    .param p1, "array"    # [Z

    .prologue
    .line 335
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([ZII)V

    .line 336
    return-void
.end method

.method constructor <init>([ZII)V
    .registers 4
    .param p1, "array"    # [Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    .line 340
    iput p2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    .line 341
    iput p3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    .line 342
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 363
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Booleans;->access$000([ZZII)I

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

    .line 412
    if-ne p1, p0, :cond_5

    .line 428
    :cond_4
    :goto_4
    return v3

    .line 415
    :cond_5
    instance-of v5, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    if-eqz v5, :cond_30

    move-object v2, p1

    .line 416
    check-cast v2, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    .line 417
    .local v2, "that":Lcom/google/common/primitives/Booleans$BooleanArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v1

    .line 418
    .local v1, "size":I
    invoke-virtual {v2}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v5

    if-eq v5, v1, :cond_18

    move v3, v4

    .line 419
    goto :goto_4

    .line 421
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v1, :cond_4

    .line 422
    iget-object v5, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v6, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v6, v0

    aget-boolean v5, v5, v6

    iget-object v6, v2, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v7, v2, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v7, v0

    aget-boolean v6, v6, v7

    if-eq v5, v6, :cond_2d

    move v3, v4

    .line 423
    goto :goto_4

    .line 421
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 428
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "that":Lcom/google/common/primitives/Booleans$BooleanArrayAsList;
    :cond_30
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4
.end method

.method public get(I)Ljava/lang/Boolean;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 357
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-boolean v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->get(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 433
    const/4 v1, 0x1

    .line 434
    .local v1, "result":I
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    .local v0, "i":I
    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    if-ge v0, v2, :cond_16

    .line 435
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    aget-boolean v3, v3, v0

    invoke-static {v3}, Lcom/google/common/primitives/Booleans;->hashCode(Z)I

    move-result v3

    add-int v1, v2, v3

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 437
    :cond_16
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 7
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 370
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1b

    .line 371
    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Booleans;->access$000([ZZII)I

    move-result v0

    .line 372
    .local v0, "i":I
    if-ltz v0, :cond_1b

    .line 373
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 376
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
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 7
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 382
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1b

    .line 383
    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Booleans;->access$100([ZZII)I

    move-result v0

    .line 384
    .local v0, "i":I
    if-ltz v0, :cond_1b

    .line 385
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 388
    .end local v0    # "i":I
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public set(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 7
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Boolean;

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 394
    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v2, p1

    aget-boolean v0, v1, v2

    .line 396
    .local v0, "oldValue":Z
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int v3, v1, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v2, v3

    .line 397
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 327
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->set(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 346
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    .line 403
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 404
    if-ne p1, p2, :cond_e

    .line 405
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 407
    :goto_d
    return-object v1

    :cond_e
    new-instance v1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([ZII)V

    goto :goto_d
.end method

.method toBooleanArray()[Z
    .registers 6

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v1

    .line 453
    .local v1, "size":I
    new-array v0, v1, [Z

    .line 454
    .local v0, "result":[Z
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 443
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_2e

    const-string v2, "[true"

    :goto_15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_1c
    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    if-ge v1, v2, :cond_34

    .line 445
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_31

    const-string v2, ", true"

    :goto_28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 443
    .end local v1    # "i":I
    :cond_2e
    const-string v2, "[false"

    goto :goto_15

    .line 445
    .restart local v1    # "i":I
    :cond_31
    const-string v2, ", false"

    goto :goto_28

    .line 447
    :cond_34
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
