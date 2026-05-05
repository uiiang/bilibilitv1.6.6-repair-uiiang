.class public abstract Lcom/google/common/collect/ForwardingIterator;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingObject;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 43
    .local p0, "this":Lcom/google/common/collect/ForwardingIterator;, "Lcom/google/common/collect/ForwardingIterator<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/collect/ForwardingIterator;, "Lcom/google/common/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 50
    .local p0, "this":Lcom/google/common/collect/ForwardingIterator;, "Lcom/google/common/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/google/common/collect/ForwardingIterator;, "Lcom/google/common/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ForwardingIterator;, "Lcom/google/common/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 62
    return-void
.end method
