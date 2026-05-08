.class abstract Lcom/google/common/collect/TransformedListIterator;
.super Lcom/google/common/collect/TransformedIterator;
.source "TransformedListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/TransformedIterator",
        "<TF;TT;>;",
        "Ljava/util/ListIterator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/ListIterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<+TF;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/google/common/collect/TransformedListIterator;, "Lcom/google/common/collect/TransformedListIterator<TF;TT;>;"
    .local p1, "backingIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TF;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    .line 35
    return-void
.end method

.method private backingIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<+TF;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/collect/TransformedListIterator;, "Lcom/google/common/collect/TransformedListIterator<TF;TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/TransformedListIterator;->backingIterator:Ljava/util/Iterator;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->cast(Ljava/util/Iterator;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/google/common/collect/TransformedListIterator;, "Lcom/google/common/collect/TransformedListIterator<TF;TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 43
    .local p0, "this":Lcom/google/common/collect/TransformedListIterator;, "Lcom/google/common/collect/TransformedListIterator<TF;TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TransformedListIterator;->backingIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 53
    .local p0, "this":Lcom/google/common/collect/TransformedListIterator;, "Lcom/google/common/collect/TransformedListIterator<TF;TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TransformedListIterator;->backingIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/common/collect/TransformedListIterator;, "Lcom/google/common/collect/TransformedListIterator<TF;TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TransformedListIterator;->backingIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TransformedListIterator;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/TransformedListIterator;, "Lcom/google/common/collect/TransformedListIterator<TF;TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TransformedListIterator;->backingIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/google/common/collect/TransformedListIterator;, "Lcom/google/common/collect/TransformedListIterator<TF;TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
