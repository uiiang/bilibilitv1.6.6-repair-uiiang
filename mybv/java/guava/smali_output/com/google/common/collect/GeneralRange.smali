.class final Lcom/google/common/collect/GeneralRange;
.super Ljava/lang/Object;
.source "GeneralRange.java"

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
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final hasLowerBound:Z

.field private final hasUpperBound:Z

.field private final lowerBoundType:Lcom/google/common/collect/BoundType;

.field private final lowerEndpoint:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private transient reverse:Lcom/google/common/collect/GeneralRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/GeneralRange",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final upperBoundType:Lcom/google/common/collect/BoundType;

.field private final upperEndpoint:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V
    .registers 13
    .param p2, "hasLowerBound"    # Z
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "lowerBoundType"    # Lcom/google/common/collect/BoundType;
    .param p5, "hasUpperBound"    # Z
    .param p6    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "upperBoundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;ZTT;",
            "Lcom/google/common/collect/BoundType;",
            "ZTT;",
            "Lcom/google/common/collect/BoundType;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p3, "lowerEndpoint":Ljava/lang/Object;, "TT;"
    .local p6, "upperEndpoint":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    iput-object v1, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    .line 113
    iput-boolean p2, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    .line 114
    iput-boolean p5, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    .line 115
    iput-object p3, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    .line 116
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/BoundType;

    iput-object v1, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    .line 117
    iput-object p6, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    .line 118
    invoke-static {p7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/BoundType;

    iput-object v1, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    .line 120
    if-eqz p2, :cond_2a

    .line 121
    invoke-interface {p1, p3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 123
    :cond_2a
    if-eqz p5, :cond_2f

    .line 124
    invoke-interface {p1, p6, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 126
    :cond_2f
    if-eqz p2, :cond_4e

    if-eqz p5, :cond_4e

    .line 127
    invoke-interface {p1, p3, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 129
    .local v0, "cmp":I
    if-gtz v0, :cond_4f

    move v1, v2

    :goto_3a
    const-string v4, "lowerEndpoint (%s) > upperEndpoint (%s)"

    invoke-static {v1, v4, p3, p6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    if-nez v0, :cond_4e

    .line 132
    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-eq p4, v1, :cond_51

    move v1, v2

    :goto_46
    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-eq p7, v4, :cond_53

    :goto_4a
    or-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 135
    .end local v0    # "cmp":I
    :cond_4e
    return-void

    .restart local v0    # "cmp":I
    :cond_4f
    move v1, v3

    .line 129
    goto :goto_3a

    :cond_51
    move v1, v3

    .line 132
    goto :goto_46

    :cond_53
    move v2, v3

    goto :goto_4a
.end method

.method static all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Lcom/google/common/collect/GeneralRange",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/google/common/collect/GeneralRange;

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    move-object v1, p0

    move v5, v2

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0
.end method

.method static downTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/GeneralRange",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "endpoint":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/common/collect/GeneralRange;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0
.end method

.method static from(Lcom/google/common/collect/Range;)Lcom/google/common/collect/GeneralRange;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/Range",
            "<TT;>;)",
            "Lcom/google/common/collect/GeneralRange",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TT;>;"
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v3

    .line 44
    .local v3, "lowerEndpoint":Ljava/lang/Comparable;, "TT;"
    :goto_b
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    .line 46
    .local v4, "lowerBoundType":Lcom/google/common/collect/BoundType;
    :goto_15
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v6

    .line 47
    .local v6, "upperEndpoint":Ljava/lang/Comparable;, "TT;"
    :goto_1f
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->upperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v7

    .line 48
    .local v7, "upperBoundType":Lcom/google/common/collect/BoundType;
    :goto_29
    new-instance v0, Lcom/google/common/collect/GeneralRange;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v5

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0

    .end local v3    # "lowerEndpoint":Ljava/lang/Comparable;, "TT;"
    .end local v4    # "lowerBoundType":Lcom/google/common/collect/BoundType;
    .end local v6    # "upperEndpoint":Ljava/lang/Comparable;, "TT;"
    .end local v7    # "upperBoundType":Lcom/google/common/collect/BoundType;
    :cond_3b
    move-object v3, v0

    .line 43
    goto :goto_b

    .line 44
    .restart local v3    # "lowerEndpoint":Ljava/lang/Comparable;, "TT;"
    :cond_3d
    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    goto :goto_15

    .restart local v4    # "lowerBoundType":Lcom/google/common/collect/BoundType;
    :cond_40
    move-object v6, v0

    .line 46
    goto :goto_1f

    .line 47
    .restart local v6    # "upperEndpoint":Ljava/lang/Comparable;, "TT;"
    :cond_42
    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    goto :goto_29
.end method

.method static range(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;
    .registers 13
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "lowerType"    # Lcom/google/common/collect/BoundType;
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "upperType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            "TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/GeneralRange",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "lower":Ljava/lang/Object;, "TT;"
    .local p3, "upper":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x1

    .line 93
    new-instance v0, Lcom/google/common/collect/GeneralRange;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0
.end method

.method static upTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/GeneralRange",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "endpoint":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/common/collect/GeneralRange;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0
.end method


# virtual methods
.method comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    const/4 v1, 0x0

    .line 228
    instance-of v2, p1, Lcom/google/common/collect/GeneralRange;

    if-eqz v2, :cond_57

    move-object v0, p1

    .line 229
    check-cast v0, Lcom/google/common/collect/GeneralRange;

    .line 230
    .local v0, "r":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<*>;"
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    iget-object v3, v0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, v3}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-boolean v2, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    iget-boolean v3, v0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    if-ne v2, v3, :cond_57

    iget-boolean v2, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    iget-boolean v3, v0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    if-ne v2, v3, :cond_57

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/BoundType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/BoundType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const/4 v1, 0x1

    .line 238
    .end local v0    # "r":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<*>;"
    :cond_57
    return v1
.end method

.method getLowerBoundType()Lcom/google/common/collect/BoundType;
    .registers 2

    .prologue
    .line 290
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method getLowerEndpoint()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    return-object v0
.end method

.method getUpperBoundType()Lcom/google/common/collect/BoundType;
    .registers 2

    .prologue
    .line 298
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method getUpperEndpoint()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    return-object v0
.end method

.method hasLowerBound()Z
    .registers 2

    .prologue
    .line 142
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    return v0
.end method

.method hasUpperBound()Z
    .registers 2

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 243
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/GeneralRange",
            "<TT;>;)",
            "Lcom/google/common/collect/GeneralRange",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .local p1, "other":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 183
    iget-boolean v2, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    .line 184
    .local v2, "hasLowBound":Z
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v3

    .line 185
    .local v3, "lowEnd":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    .line 186
    .local v4, "lowType":Lcom/google/common/collect/BoundType;
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v0

    if-nez v0, :cond_65

    .line 187
    iget-boolean v2, p1, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    .line 188
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v3

    .line 189
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    .line 198
    :cond_28
    :goto_28
    iget-boolean v5, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    .line 199
    .local v5, "hasUpBound":Z
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v6

    .line 200
    .local v6, "upEnd":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v7

    .line 201
    .local v7, "upType":Lcom/google/common/collect/BoundType;
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 202
    iget-boolean v5, p1, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    .line 203
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v6

    .line 204
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v7

    .line 213
    :cond_42
    :goto_42
    if-eqz v2, :cond_5d

    if-eqz v5, :cond_5d

    .line 214
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 215
    .local v8, "cmp":I
    if-gtz v8, :cond_58

    if-nez v8, :cond_5d

    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v4, v0, :cond_5d

    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v7, v0, :cond_5d

    .line 217
    :cond_58
    move-object v3, v6

    .line 218
    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    .line 219
    sget-object v7, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    .line 223
    .end local v8    # "cmp":I
    :cond_5d
    new-instance v0, Lcom/google/common/collect/GeneralRange;

    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0

    .line 190
    .end local v5    # "hasUpBound":Z
    .end local v6    # "upEnd":Ljava/lang/Object;, "TT;"
    .end local v7    # "upType":Lcom/google/common/collect/BoundType;
    :cond_65
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 191
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 192
    .restart local v8    # "cmp":I
    if-ltz v8, :cond_85

    if-nez v8, :cond_28

    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v0, v1, :cond_28

    .line 193
    :cond_85
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v3

    .line 194
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    goto :goto_28

    .line 205
    .end local v8    # "cmp":I
    .restart local v5    # "hasUpBound":Z
    .restart local v6    # "upEnd":Ljava/lang/Object;, "TT;"
    .restart local v7    # "upType":Lcom/google/common/collect/BoundType;
    :cond_8e
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 206
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 207
    .restart local v8    # "cmp":I
    if-gtz v8, :cond_ae

    if-nez v8, :cond_42

    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v0, v1, :cond_42

    .line 208
    :cond_ae
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v6

    .line 209
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v7

    goto :goto_42
.end method

.method isEmpty()Z
    .registers 2

    .prologue
    .line 150
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/GeneralRange;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_10
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/GeneralRange;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method reverse()Lcom/google/common/collect/GeneralRange;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/GeneralRange",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->reverse:Lcom/google/common/collect/GeneralRange;

    .line 258
    .local v0, "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    if-nez v0, :cond_2e

    .line 259
    new-instance v0, Lcom/google/common/collect/GeneralRange;

    .end local v0    # "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    .line 268
    .restart local v0    # "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iput-object p0, v0, Lcom/google/common/collect/GeneralRange;->reverse:Lcom/google/common/collect/GeneralRange;

    .line 269
    iput-object v0, p0, Lcom/google/common/collect/GeneralRange;->reverse:Lcom/google/common/collect/GeneralRange;

    move-object v8, v0

    .end local v0    # "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .local v8, "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    move-object v9, v0

    .line 271
    .end local v8    # "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .local v9, "result":Ljava/lang/Object;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    :goto_2d
    return-object v9

    .end local v9    # "result":Ljava/lang/Object;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .restart local v0    # "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    :cond_2e
    move-object v8, v0

    .end local v0    # "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .restart local v8    # "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    move-object v9, v0

    .restart local v9    # "result":Ljava/lang/Object;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    goto :goto_2d
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 276
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v2, :cond_48

    const/16 v0, 0x5b

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    :goto_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    :goto_33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v2, :cond_51

    const/16 v0, 0x5d

    :goto_3f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_48
    const/16 v0, 0x28

    goto :goto_19

    :cond_4b
    const-string v0, "-\u221e"

    goto :goto_23

    :cond_4e
    const-string v0, "\u221e"

    goto :goto_33

    :cond_51
    const/16 v0, 0x29

    goto :goto_3f
.end method

.method tooHigh(Ljava/lang/Object;)Z
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v2

    if-nez v2, :cond_9

    .line 169
    :goto_8
    return v4

    .line 167
    :cond_9
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v1

    .line 168
    .local v1, "ubound":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 169
    .local v0, "cmp":I
    if-lez v0, :cond_25

    move v5, v3

    :goto_16
    if-nez v0, :cond_27

    move v2, v3

    :goto_19
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v6

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v6, v7, :cond_29

    :goto_21
    and-int/2addr v2, v3

    or-int v4, v5, v2

    goto :goto_8

    :cond_25
    move v5, v4

    goto :goto_16

    :cond_27
    move v2, v4

    goto :goto_19

    :cond_29
    move v3, v4

    goto :goto_21
.end method

.method tooLow(Ljava/lang/Object;)Z
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v2

    if-nez v2, :cond_9

    .line 160
    :goto_8
    return v4

    .line 158
    :cond_9
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v1

    .line 159
    .local v1, "lbound":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 160
    .local v0, "cmp":I
    if-gez v0, :cond_25

    move v5, v3

    :goto_16
    if-nez v0, :cond_27

    move v2, v3

    :goto_19
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v6

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v6, v7, :cond_29

    :goto_21
    and-int/2addr v2, v3

    or-int v4, v5, v2

    goto :goto_8

    :cond_25
    move v5, v4

    goto :goto_16

    :cond_27
    move v2, v4

    goto :goto_19

    :cond_29
    move v3, v4

    goto :goto_21
.end method
