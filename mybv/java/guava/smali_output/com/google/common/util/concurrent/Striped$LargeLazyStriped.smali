.class Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;
.super Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;
.source "Striped.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LargeLazyStriped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped",
        "<T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final locks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final size:I

.field final supplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/google/common/base/Supplier;)V
    .registers 5
    .param p1, "stripes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/Supplier",
            "<T",
            "L;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;, "Lcom/google/common/util/concurrent/Striped$LargeLazyStriped<TL;>;"
    .local p2, "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TL;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;-><init>(I)V

    .line 435
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;->mask:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    const v0, 0x7fffffff

    :goto_b
    iput v0, p0, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;->size:I

    .line 436
    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;->supplier:Lcom/google/common/base/Supplier;

    .line 437
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakValues()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;->locks:Ljava/util/concurrent/ConcurrentMap;

    .line 438
    return-void

    .line 435
    :cond_1f
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;->mask:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;, "Lcom/google/common/util/concurrent/Striped$LargeLazyStriped<TL;>;"
    iget v3, p0, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;->size:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_e

    .line 443
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;->size()I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 445
    :cond_e
    iget-object v3, p0, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;->locks:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 446
    .local v1, "existing":Ljava/lang/Object;, "TL;"
    if-eqz v1, :cond_1d

    move-object v2, v1

    .end local v1    # "existing":Ljava/lang/Object;, "TL;"
    .local v2, "existing":Ljava/lang/Object;, "TL;"
    move-object v3, v1

    .line 451
    :goto_1c
    return-object v3

    .line 449
    .end local v2    # "existing":Ljava/lang/Object;, "TL;"
    .restart local v1    # "existing":Ljava/lang/Object;, "TL;"
    :cond_1d
    iget-object v3, p0, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;->supplier:Lcom/google/common/base/Supplier;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 450
    .local v0, "created":Ljava/lang/Object;, "TL;"
    iget-object v3, p0, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;->locks:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 451
    invoke-static {v1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v1

    .end local v1    # "existing":Ljava/lang/Object;, "TL;"
    .restart local v2    # "existing":Ljava/lang/Object;, "TL;"
    goto :goto_1c
.end method

.method public size()I
    .registers 2

    .prologue
    .line 456
    .local p0, "this":Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;, "Lcom/google/common/util/concurrent/Striped$LargeLazyStriped<TL;>;"
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$LargeLazyStriped;->size:I

    return v0
.end method
