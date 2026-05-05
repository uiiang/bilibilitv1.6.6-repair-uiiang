.class final Lcom/google/common/collect/CompoundOrdering;
.super Lcom/google/common/collect/Ordering;
.source "CompoundOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final comparators:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/Comparator",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Comparator",
            "<-TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<TT;>;"
    .local p1, "comparators":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Comparator<-TT;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<TT;>;"
    .local p1, "primary":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p2, "secondary":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 29
    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    .line 30
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<TT;>;"
    .local p1, "left":Ljava/lang/Object;, "TT;"
    .local p2, "right":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    .line 40
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_1b

    .line 41
    iget-object v3, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Comparator;

    invoke-interface {v3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 42
    .local v1, "result":I
    if-eqz v1, :cond_18

    .line 46
    .end local v1    # "result":I
    :goto_17
    return v1

    .line 40
    .restart local v1    # "result":I
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 46
    .end local v1    # "result":I
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 51
    .local p0, "this":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<TT;>;"
    if-ne p1, p0, :cond_4

    .line 52
    const/4 v1, 0x1

    .line 58
    :goto_3
    return v1

    .line 54
    :cond_4
    instance-of v1, p1, Lcom/google/common/collect/CompoundOrdering;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 55
    check-cast v0, Lcom/google/common/collect/CompoundOrdering;

    .line 56
    .local v0, "that":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<*>;"
    iget-object v1, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 58
    .end local v0    # "that":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<*>;"
    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 63
    .local p0, "this":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    .local p0, "this":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ordering.compound("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
