.class public final Lcom/google/common/graph/ElementOrder;
.super Ljava/lang/Object;
.source "ElementOrder.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/ElementOrder$1;,
        Lcom/google/common/graph/ElementOrder$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final type:Lcom/google/common/graph/ElementOrder$Type;


# direct methods
.method private constructor <init>(Lcom/google/common/graph/ElementOrder$Type;Ljava/util/Comparator;)V
    .registers 7
    .param p1, "type"    # Lcom/google/common/graph/ElementOrder$Type;
    .param p2    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/ElementOrder$Type;",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/ElementOrder$Type;

    iput-object v0, p0, Lcom/google/common/graph/ElementOrder;->type:Lcom/google/common/graph/ElementOrder$Type;

    .line 70
    iput-object p2, p0, Lcom/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    .line 71
    sget-object v0, Lcom/google/common/graph/ElementOrder$Type;->SORTED:Lcom/google/common/graph/ElementOrder$Type;

    if-ne p1, v0, :cond_1e

    move v3, v1

    :goto_14
    if-eqz p2, :cond_20

    move v0, v1

    :goto_17
    if-ne v3, v0, :cond_22

    move v0, v1

    :goto_1a
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 72
    return-void

    :cond_1e
    move v3, v2

    .line 71
    goto :goto_14

    :cond_20
    move v0, v2

    goto :goto_17

    :cond_22
    move v0, v2

    goto :goto_1a
.end method

.method public static insertion()Lcom/google/common/graph/ElementOrder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/graph/ElementOrder",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/google/common/graph/ElementOrder;

    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->INSERTION:Lcom/google/common/graph/ElementOrder$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/ElementOrder;-><init>(Lcom/google/common/graph/ElementOrder$Type;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static natural()Lcom/google/common/graph/ElementOrder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable",
            "<-TS;>;>()",
            "Lcom/google/common/graph/ElementOrder",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/google/common/graph/ElementOrder;

    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->SORTED:Lcom/google/common/graph/ElementOrder$Type;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/ElementOrder;-><init>(Lcom/google/common/graph/ElementOrder$Type;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static sorted(Ljava/util/Comparator;)Lcom/google/common/graph/ElementOrder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TS;>;)",
            "Lcom/google/common/graph/ElementOrder",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TS;>;"
    new-instance v0, Lcom/google/common/graph/ElementOrder;

    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->SORTED:Lcom/google/common/graph/ElementOrder$Type;

    invoke-direct {v0, v1, p0}, Lcom/google/common/graph/ElementOrder;-><init>(Lcom/google/common/graph/ElementOrder$Type;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static unordered()Lcom/google/common/graph/ElementOrder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/graph/ElementOrder",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/google/common/graph/ElementOrder;

    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->UNORDERED:Lcom/google/common/graph/ElementOrder$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/ElementOrder;-><init>(Lcom/google/common/graph/ElementOrder$Type;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method cast()Lcom/google/common/graph/ElementOrder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:TT;>()",
            "Lcom/google/common/graph/ElementOrder",
            "<TT1;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<TT;>;"
    return-object p0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<TT;>;"
    iget-object v0, p0, Lcom/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_7

    .line 111
    iget-object v0, p0, Lcom/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    return-object v0

    .line 113
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This ordering does not define a comparator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createMap(I)Ljava/util/Map;
    .registers 4
    .param p1, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TT;V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<TT;>;"
    sget-object v0, Lcom/google/common/graph/ElementOrder$1;->$SwitchMap$com$google$common$graph$ElementOrder$Type:[I

    iget-object v1, p0, Lcom/google/common/graph/ElementOrder;->type:Lcom/google/common/graph/ElementOrder$Type;

    invoke-virtual {v1}, Lcom/google/common/graph/ElementOrder$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 153
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 147
    :pswitch_13
    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 151
    :goto_17
    return-object v0

    .line 149
    :pswitch_18
    invoke-static {p1}, Lcom/google/common/collect/Maps;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto :goto_17

    .line 151
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/common/graph/ElementOrder;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v0

    goto :goto_17

    .line 145
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_13
        :pswitch_18
        :pswitch_1d
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    if-ne p1, p0, :cond_5

    .line 126
    :cond_4
    :goto_4
    return v1

    .line 121
    :cond_5
    instance-of v3, p1, Lcom/google/common/graph/ElementOrder;

    if-nez v3, :cond_b

    move v1, v2

    .line 122
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 125
    check-cast v0, Lcom/google/common/graph/ElementOrder;

    .line 126
    .local v0, "other":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<*>;"
    iget-object v3, p0, Lcom/google/common/graph/ElementOrder;->type:Lcom/google/common/graph/ElementOrder$Type;

    iget-object v4, v0, Lcom/google/common/graph/ElementOrder;->type:Lcom/google/common/graph/ElementOrder$Type;

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Lcom/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    iget-object v4, v0, Lcom/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1e
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 131
    .local p0, "this":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/graph/ElementOrder;->type:Lcom/google/common/graph/ElementOrder$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 136
    .local p0, "this":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "type"

    iget-object v3, p0, Lcom/google/common/graph/ElementOrder;->type:Lcom/google/common/graph/ElementOrder$Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 137
    .local v0, "helper":Lcom/google/common/base/MoreObjects$ToStringHelper;
    iget-object v1, p0, Lcom/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    if-eqz v1, :cond_17

    .line 138
    const-string v1, "comparator"

    iget-object v2, p0, Lcom/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 140
    :cond_17
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public type()Lcom/google/common/graph/ElementOrder$Type;
    .registers 2

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<TT;>;"
    iget-object v0, p0, Lcom/google/common/graph/ElementOrder;->type:Lcom/google/common/graph/ElementOrder$Type;

    return-object v0
.end method
