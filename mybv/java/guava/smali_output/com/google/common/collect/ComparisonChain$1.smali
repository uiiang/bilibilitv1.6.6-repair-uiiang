.class final Lcom/google/common/collect/ComparisonChain$1;
.super Lcom/google/common/collect/ComparisonChain;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComparisonChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ComparisonChain;-><init>(Lcom/google/common/collect/ComparisonChain$1;)V

    return-void
.end method


# virtual methods
.method classify(I)Lcom/google/common/collect/ComparisonChain;
    .registers 3
    .param p1, "result"    # I

    .prologue
    .line 118
    if-gez p1, :cond_7

    # getter for: Lcom/google/common/collect/ComparisonChain;->LESS:Lcom/google/common/collect/ComparisonChain;
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->access$100()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    if-lez p1, :cond_e

    # getter for: Lcom/google/common/collect/ComparisonChain;->GREATER:Lcom/google/common/collect/ComparisonChain;
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->access$200()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    goto :goto_6

    :cond_e
    # getter for: Lcom/google/common/collect/ComparisonChain;->ACTIVE:Lcom/google/common/collect/ComparisonChain;
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->access$300()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    goto :goto_6
.end method

.method public compare(DD)Lcom/google/common/collect/ComparisonChain;
    .registers 6
    .param p1, "left"    # D
    .param p3, "right"    # D

    .prologue
    .line 104
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public compare(FF)Lcom/google/common/collect/ComparisonChain;
    .registers 4
    .param p1, "left"    # F
    .param p2, "right"    # F

    .prologue
    .line 99
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public compare(II)Lcom/google/common/collect/ComparisonChain;
    .registers 4
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 89
    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public compare(JJ)Lcom/google/common/collect/ComparisonChain;
    .registers 6
    .param p1, "left"    # J
    .param p3, "right"    # J

    .prologue
    .line 94
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;
    .registers 4
    .param p1, "left"    # Ljava/lang/Comparable;
    .param p2, "right"    # Ljava/lang/Comparable;

    .prologue
    .line 78
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcom/google/common/collect/ComparisonChain;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "left":Ljava/lang/Object;, "TT;"
    .local p2, "right":Ljava/lang/Object;, "TT;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .registers 4
    .param p1, "left"    # Z
    .param p2, "right"    # Z

    .prologue
    .line 114
    invoke-static {p1, p2}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .registers 4
    .param p1, "left"    # Z
    .param p2, "right"    # Z

    .prologue
    .line 109
    invoke-static {p2, p1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public result()I
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method
