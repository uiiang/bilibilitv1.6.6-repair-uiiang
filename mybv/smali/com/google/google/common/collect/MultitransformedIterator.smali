.class abstract Lcom/google/common/collect/MultitransformedIterator;
.super Ljava/lang/Object;
.source "MultitransformedIterator.java"

# interfaces
.implements Ljava/util/Iterator;


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
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final backingIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TF;>;"
        }
    .end annotation
.end field

.field private current:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private removeFrom:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TF;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/collect/MultitransformedIterator;, "Lcom/google/common/collect/MultitransformedIterator<TF;TT;>;"
    .local p1, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MultitransformedIterator;->current:Ljava/util/Iterator;

    .line 39
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/MultitransformedIterator;->backingIterator:Ljava/util/Iterator;

    .line 40
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .local p0, "this":Lcom/google/common/collect/MultitransformedIterator;, "Lcom/google/common/collect/MultitransformedIterator<TF;TT;>;"
    const/4 v0, 0x1

    .line 46
    iget-object v1, p0, Lcom/google/common/collect/MultitransformedIterator;->current:Ljava/util/Iterator;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/google/common/collect/MultitransformedIterator;->current:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 57
    :goto_e
    return v0

    .line 50
    :cond_f
    iget-object v1, p0, Lcom/google/common/collect/MultitransformedIterator;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 52
    iget-object v1, p0, Lcom/google/common/collect/MultitransformedIterator;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/MultitransformedIterator;->transform(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/MultitransformedIterator;->current:Ljava/util/Iterator;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/google/common/collect/MultitransformedIterator;->current:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_e

    .line 57
    :cond_2f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/collect/MultitransformedIterator;, "Lcom/google/common/collect/MultitransformedIterator<TF;TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MultitransformedIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 63
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 65
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/MultitransformedIterator;->current:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/MultitransformedIterator;->removeFrom:Ljava/util/Iterator;

    .line 66
    iget-object v0, p0, Lcom/google/common/collect/MultitransformedIterator;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 71
    .local p0, "this":Lcom/google/common/collect/MultitransformedIterator;, "Lcom/google/common/collect/MultitransformedIterator<TF;TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/MultitransformedIterator;->removeFrom:Ljava/util/Iterator;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 72
    iget-object v0, p0, Lcom/google/common/collect/MultitransformedIterator;->removeFrom:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/MultitransformedIterator;->removeFrom:Ljava/util/Iterator;

    .line 74
    return-void

    .line 71
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method abstract transform(Ljava/lang/Object;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end method
