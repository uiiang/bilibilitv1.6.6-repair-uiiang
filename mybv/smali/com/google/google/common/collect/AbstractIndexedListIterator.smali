.class abstract Lcom/google/common/collect/AbstractIndexedListIterator;
.super Lcom/google/common/collect/UnmodifiableListIterator;
.source "AbstractIndexedListIterator.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private position:I

.field private final size:I


# direct methods
.method protected constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    .line 53
    return-void
.end method

.method protected constructor <init>(II)V
    .registers 3
    .param p1, "size"    # I
    .param p2, "position"    # I

    .prologue
    .line 66
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableListIterator;-><init>()V

    .line 67
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 68
    iput p1, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->size:I

    .line 69
    iput p2, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    .line 70
    return-void
.end method


# virtual methods
.method protected abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 3

    .prologue
    .line 74
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    iget v1, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->size:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 92
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 80
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 82
    :cond_c
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_c

    .line 98
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 100
    :cond_c
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 105
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
