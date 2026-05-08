.class public final Lcom/google/common/collect/Lists;
.super Ljava/lang/Object;
.source "Lists.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Lists$RandomAccessListWrapper;,
        Lcom/google/common/collect/Lists$AbstractListWrapper;,
        Lcom/google/common/collect/Lists$RandomAccessReverseList;,
        Lcom/google/common/collect/Lists$ReverseList;,
        Lcom/google/common/collect/Lists$CharSequenceAsList;,
        Lcom/google/common/collect/Lists$StringAsImmutableList;,
        Lcom/google/common/collect/Lists$RandomAccessPartition;,
        Lcom/google/common/collect/Lists$Partition;,
        Lcom/google/common/collect/Lists$TransformingRandomAccessList;,
        Lcom/google/common/collect/Lists$TransformingSequentialList;,
        Lcom/google/common/collect/Lists$TwoPlusArrayList;,
        Lcom/google/common/collect/Lists$OnePlusArrayList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAllImpl(Ljava/util/List;ILjava/lang/Iterable;)Z
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;I",
            "Ljava/lang/Iterable",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1023
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    const/4 v0, 0x0

    .line 1024
    .local v0, "changed":Z
    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 1025
    .local v3, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1026
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {v3, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1027
    const/4 v0, 0x1

    .line 1028
    goto :goto_9

    .line 1029
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_18
    return v0
.end method

.method public static asList(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;[TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "first":Ljava/lang/Object;, "TE;"
    .local p1, "second":Ljava/lang/Object;, "TE;"
    .local p2, "rest":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Lcom/google/common/collect/Lists$TwoPlusArrayList;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/Lists$TwoPlusArrayList;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;[TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "first":Ljava/lang/Object;, "TE;"
    .local p1, "rest":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Lcom/google/common/collect/Lists$OnePlusArrayList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$OnePlusArrayList;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static cartesianProduct(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+TB;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "lists":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<+TB;>;>;"
    invoke-static {p0}, Lcom/google/common/collect/CartesianList;->create(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs cartesianProduct([Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/List",
            "<+TB;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "lists":[Ljava/util/List;, "[Ljava/util/List<+TB;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->cartesianProduct(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static cast(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1191
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    check-cast p0, Ljava/util/List;

    .end local p0    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    return-object p0
.end method

.method public static charactersOf(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 728
    new-instance v1, Lcom/google/common/collect/Lists$StringAsImmutableList;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Lists$StringAsImmutableList;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static charactersOf(Ljava/lang/CharSequence;)Ljava/util/List;
    .registers 3
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    new-instance v1, Lcom/google/common/collect/Lists$CharSequenceAsList;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Lists$CharSequenceAsList;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method static computeArrayListCapacity(I)I
    .registers 5
    .param p0, "arraySize"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 120
    const-string v0, "arraySize"

    invoke-static {p0, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 123
    const-wide/16 v0, 0x5

    int-to-long v2, p0

    add-long/2addr v0, v2

    div-int/lit8 v2, p0, 0xa

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method static equalsImpl(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "thisList":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 995
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_9

    .line 1015
    :cond_8
    :goto_8
    return v3

    .line 998
    :cond_9
    instance-of v5, p1, Ljava/util/List;

    if-nez v5, :cond_f

    move v3, v4

    .line 999
    goto :goto_8

    :cond_f
    move-object v1, p1

    .line 1001
    check-cast v1, Ljava/util/List;

    .line 1002
    .local v1, "otherList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1003
    .local v2, "size":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_1e

    move v3, v4

    .line 1004
    goto :goto_8

    .line 1006
    :cond_1e
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-eqz v5, :cond_3c

    instance-of v5, v1, Ljava/util/RandomAccess;

    if-eqz v5, :cond_3c

    .line 1008
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    if-ge v0, v2, :cond_8

    .line 1009
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    move v3, v4

    .line 1010
    goto :goto_8

    .line 1008
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1015
    .end local v0    # "i":I
    :cond_3c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/Iterators;->elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v3

    goto :goto_8
.end method

.method static hashCodeImpl(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 981
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x1

    .line 982
    .local v0, "hashCode":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 983
    .local v2, "o":Ljava/lang/Object;
    mul-int/lit8 v4, v0, 0x1f

    if-nez v2, :cond_1b

    const/4 v3, 0x0

    :goto_14
    add-int v0, v4, v3

    .line 985
    xor-int/lit8 v3, v0, -0x1

    xor-int/lit8 v0, v3, -0x1

    .line 987
    goto :goto_5

    .line 983
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_14

    .line 988
    .end local v2    # "o":Ljava/lang/Object;
    :cond_20
    return v0
.end method

.method static indexOfImpl(Ljava/util/List;Ljava/lang/Object;)I
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1036
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_9

    .line 1037
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->indexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 1045
    :goto_8
    return v1

    .line 1039
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1040
    .local v0, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_d
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1041
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1042
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    goto :goto_8

    .line 1045
    :cond_22
    const/4 v1, -0x1

    goto :goto_8
.end method

.method private static indexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I
    .registers 6
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1050
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1051
    .local v2, "size":I
    if-nez p1, :cond_1b

    .line 1052
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_8
    if-ge v1, v2, :cond_17

    .line 1053
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_13

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move v3, v1

    .line 1064
    :goto_12
    return v3

    .line 1052
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_13
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_8

    :cond_17
    move v0, v1

    .line 1064
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_18
    const/4 v1, -0x1

    move v3, v1

    goto :goto_12

    .line 1058
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_1d
    if-ge v1, v2, :cond_30

    .line 1059
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move v3, v1

    .line 1060
    goto :goto_12

    .line 1058
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_2c
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1d

    :cond_30
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_18
.end method

.method static lastIndexOfImpl(Ljava/util/List;Ljava/lang/Object;)I
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1071
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_9

    .line 1072
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->lastIndexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 1080
    :goto_8
    return v1

    .line 1074
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 1075
    .local v0, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_11
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1076
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1077
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    goto :goto_8

    .line 1080
    :cond_26
    const/4 v1, -0x1

    goto :goto_8
.end method

.method private static lastIndexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I
    .registers 5
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1085
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p1, :cond_1c

    .line 1086
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_18

    .line 1087
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move v2, v1

    .line 1098
    :goto_13
    return v2

    .line 1086
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_14
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_9

    :cond_18
    move v0, v1

    .line 1098
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_19
    const/4 v1, -0x1

    move v2, v1

    goto :goto_13

    .line 1092
    .end local v0    # "i":I
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_23
    if-ltz v1, :cond_36

    .line 1093
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move v2, v1

    .line 1094
    goto :goto_13

    .line 1092
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_32
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_23

    :cond_36
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_19
.end method

.method static listIteratorImpl(Ljava/util/List;I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1105
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Lcom/google/common/collect/Lists$AbstractListWrapper;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$AbstractListWrapper;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Lists$AbstractListWrapper;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .registers 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_10
    return-object v0

    :cond_11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_10
.end method

.method public static newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 163
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 164
    return-object v0
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 4
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    array-length v2, p0

    invoke-static {v2}, Lcom/google/common/collect/Lists;->computeArrayListCapacity(I)I

    move-result v0

    .line 113
    .local v0, "capacity":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 115
    return-object v1
.end method

.method public static newArrayListWithCapacity(I)Ljava/util/ArrayList;
    .registers 2
    .param p0, "initialArraySize"    # I
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 187
    const-string v0, "initialArraySize"

    invoke-static {p0, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static newArrayListWithExpectedSize(I)Ljava/util/ArrayList;
    .registers 3
    .param p0, "estimatedSize"    # I
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/common/collect/Lists;->computeArrayListCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static newCopyOnWriteArrayList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-object v0
.end method

.method public static newCopyOnWriteArrayList(Ljava/lang/Iterable;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_e

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 291
    .local v0, "elementsCollection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :goto_8
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 289
    .end local v0    # "elementsCollection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :cond_e
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_8
.end method

.method public static newLinkedList()Ljava/util/LinkedList;
    .registers 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public static newLinkedList(Ljava/lang/Iterable;)Ljava/util/LinkedList;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 259
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 260
    return-object v0
.end method

.method public static partition(Ljava/util/List;I)Ljava/util/List;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 680
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    if-lez p1, :cond_13

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 682
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_15

    new-instance v0, Lcom/google/common/collect/Lists$RandomAccessPartition;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$RandomAccessPartition;-><init>(Ljava/util/List;I)V

    :goto_12
    return-object v0

    .line 681
    :cond_13
    const/4 v0, 0x0

    goto :goto_6

    .line 682
    :cond_15
    new-instance v0, Lcom/google/common/collect/Lists$Partition;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$Partition;-><init>(Ljava/util/List;I)V

    goto :goto_12
.end method

.method public static reverse(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 821
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v0, p0, Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_b

    .line 822
    check-cast p0, Lcom/google/common/collect/ImmutableList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 828
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_a
    return-object v0

    .line 823
    :cond_b
    instance-of v0, p0, Lcom/google/common/collect/Lists$ReverseList;

    if-eqz v0, :cond_16

    .line 824
    check-cast p0, Lcom/google/common/collect/Lists$ReverseList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->getForwardList()Ljava/util/List;

    move-result-object v0

    goto :goto_a

    .line 825
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_16
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_20

    .line 826
    new-instance v0, Lcom/google/common/collect/Lists$RandomAccessReverseList;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$RandomAccessReverseList;-><init>(Ljava/util/List;)V

    goto :goto_a

    .line 828
    :cond_20
    new-instance v0, Lcom/google/common/collect/Lists$ReverseList;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$ReverseList;-><init>(Ljava/util/List;)V

    goto :goto_a
.end method

.method static subListImpl(Ljava/util/List;II)Ljava/util/List;
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1113
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_e

    .line 1114
    new-instance v0, Lcom/google/common/collect/Lists$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$1;-><init>(Ljava/util/List;)V

    .line 1134
    .local v0, "wrapper":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1124
    .end local v0    # "wrapper":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_e
    new-instance v0, Lcom/google/common/collect/Lists$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$2;-><init>(Ljava/util/List;)V

    .restart local v0    # "wrapper":Ljava/util/List;, "Ljava/util/List<TE;>;"
    goto :goto_9
.end method

.method public static transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TF;>;",
            "Lcom/google/common/base/Function",
            "<-TF;+TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "fromList":Ljava/util/List;, "Ljava/util/List<TF;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TF;+TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$TransformingRandomAccessList;-><init>(Ljava/util/List;Lcom/google/common/base/Function;)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/google/common/collect/Lists$TransformingSequentialList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$TransformingSequentialList;-><init>(Ljava/util/List;Lcom/google/common/base/Function;)V

    goto :goto_9
.end method
