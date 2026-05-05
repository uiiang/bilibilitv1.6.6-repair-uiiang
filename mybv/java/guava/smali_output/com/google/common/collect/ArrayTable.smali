.class public final Lcom/google/common/collect/ArrayTable;
.super Lcom/google/common/collect/AbstractTable;
.source "ArrayTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ArrayTable$RowMap;,
        Lcom/google/common/collect/ArrayTable$Row;,
        Lcom/google/common/collect/ArrayTable$ColumnMap;,
        Lcom/google/common/collect/ArrayTable$Column;,
        Lcom/google/common/collect/ArrayTable$ArrayMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractTable",
        "<TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final array:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field

.field private final columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final columnList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TC;>;"
        }
    .end annotation
.end field

.field private transient columnMap:Lcom/google/common/collect/ArrayTable$ColumnMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ArrayTable",
            "<TR;TC;TV;>.ColumnMap;"
        }
    .end annotation
.end field

.field private final rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rowList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TR;>;"
        }
    .end annotation
.end field

.field private transient rowMap:Lcom/google/common/collect/ArrayTable$RowMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ArrayTable",
            "<TR;TC;TV;>.RowMap;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ArrayTable",
            "<TR;TC;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "table":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    const/4 v5, 0x0

    .line 171
    invoke-direct {p0}, Lcom/google/common/collect/AbstractTable;-><init>()V

    .line 172
    iget-object v2, p1, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    iput-object v2, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    .line 173
    iget-object v2, p1, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    iput-object v2, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    .line 174
    iget-object v2, p1, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    iput-object v2, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 175
    iget-object v2, p1, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    iput-object v2, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 177
    iget-object v2, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/Object;

    .line 178
    .local v0, "copy":[[Ljava/lang/Object;, "[[TV;"
    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    .line 180
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->eraseAll()V

    .line 181
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_35
    iget-object v2, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 182
    iget-object v2, p1, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    aget-object v3, v0, v1

    iget-object v4, p1, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v4, v4, v1

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 184
    :cond_4e
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/Table;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Table;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ArrayTable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable;->putAll(Lcom/google/common/collect/Table;)V

    .line 169
    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TR;>;",
            "Ljava/lang/Iterable",
            "<+TC;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "rowKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .local p2, "columnKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TC;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    invoke-direct {p0}, Lcom/google/common/collect/AbstractTable;-><init>()V

    .line 146
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    .line 147
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    .line 148
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    move v1, v2

    :goto_1a
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 149
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    :goto_25
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 156
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1}, Lcom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 157
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1}, Lcom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 160
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [[Ljava/lang/Object;

    .line 161
    .local v0, "tmpArray":[[Ljava/lang/Object;, "[[TV;"
    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    .line 163
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->eraseAll()V

    .line 164
    return-void

    .end local v0    # "tmpArray":[[Ljava/lang/Object;, "[[TV;"
    :cond_59
    move v1, v3

    .line 148
    goto :goto_1a

    :cond_5b
    move v2, v3

    .line 149
    goto :goto_25
.end method

.method static synthetic access$000(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/ArrayTable;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/ArrayTable;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/ArrayTable;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/ArrayTable;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Table;)Lcom/google/common/collect/ArrayTable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;)",
            "Lcom/google/common/collect/ArrayTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV;>;"
    instance-of v0, p0, Lcom/google/common/collect/ArrayTable;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/common/collect/ArrayTable;

    check-cast p0, Lcom/google/common/collect/ArrayTable;

    .end local p0    # "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/ArrayTable;-><init>(Lcom/google/common/collect/ArrayTable;)V

    .restart local p0    # "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV;>;"
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ArrayTable;-><init>(Lcom/google/common/collect/Table;)V

    goto :goto_b
.end method

.method public static create(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/ArrayTable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TR;>;",
            "Ljava/lang/Iterable",
            "<+TC;>;)",
            "Lcom/google/common/collect/ArrayTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "rowKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .local p1, "columnKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TC;>;"
    new-instance v0, Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayTable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public at(II)Ljava/lang/Object;
    .registers 4
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TV;"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 316
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 317
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method cellIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/ArrayTable$1;

    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$1;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    return-object v0
.end method

.method public cellSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 585
    .local v0, "columnIndex":Ljava/lang/Integer;
    if-nez v0, :cond_12

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    :goto_11
    return-object v1

    :cond_12
    new-instance v1, Lcom/google/common/collect/ArrayTable$Column;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/ArrayTable$Column;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    goto :goto_11
.end method

.method public columnKeyList()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public columnKeySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 620
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 85
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnMap:Lcom/google/common/collect/ArrayTable$ColumnMap;

    .line 628
    .local v0, "map":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/ArrayTable$ColumnMap;

    .end local v0    # "map":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$ColumnMap;-><init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnMap:Lcom/google/common/collect/ArrayTable$ColumnMap;

    :cond_c
    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 393
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p2}, Lcom/google/common/collect/ArrayTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 411
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 416
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    .local v0, "arr$":[[Ljava/lang/Object;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_5
    if-ge v4, v5, :cond_1f

    aget-object v7, v0, v4

    .line 417
    .local v7, "row":[Ljava/lang/Object;, "[TV;"
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_c
    if-ge v3, v6, :cond_1b

    aget-object v2, v1, v3

    .line 418
    .local v2, "element":Ljava/lang/Object;, "TV;"
    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 419
    const/4 v8, 0x1

    .line 423
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "element":Ljava/lang/Object;, "TV;"
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "row":[Ljava/lang/Object;, "[TV;"
    :goto_17
    return v8

    .line 417
    .restart local v1    # "arr$":[Ljava/lang/Object;
    .restart local v2    # "element":Ljava/lang/Object;, "TV;"
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "row":[Ljava/lang/Object;, "[TV;"
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 416
    .end local v2    # "element":Ljava/lang/Object;, "TV;"
    :cond_1b
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_5

    .line 423
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v6    # "len$":I
    .end local v7    # "row":[Ljava/lang/Object;, "[TV;"
    :cond_1f
    const/4 v8, 0x0

    goto :goto_17
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 85
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractTable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public erase(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    const/4 v2, 0x0

    .line 508
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 509
    .local v1, "rowIndex":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 510
    .local v0, "columnIndex":Ljava/lang/Integer;
    if-eqz v1, :cond_15

    if-nez v0, :cond_16

    .line 513
    :cond_15
    :goto_15
    return-object v2

    :cond_16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_15
.end method

.method public eraseAll()V
    .registers 6

    .prologue
    .line 382
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    .local v0, "arr$":[[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_f

    aget-object v3, v0, v1

    .line 383
    .local v3, "row":[Ljava/lang/Object;, "[TV;"
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 385
    .end local v3    # "row":[Ljava/lang/Object;, "[TV;"
    :cond_f
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 429
    .local v1, "rowIndex":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 430
    .local v0, "columnIndex":Ljava/lang/Integer;
    if-eqz v1, :cond_14

    if-nez v0, :cond_16

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return-object v2

    :cond_16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v2

    goto :goto_15
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 85
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 438
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 450
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v2, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 453
    .local v1, "rowIndex":Ljava/lang/Integer;
    if-eqz v1, :cond_38

    move v2, v3

    :goto_13
    const-string v5, "Row %s not in %s"

    iget-object v6, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2, v5, p1, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 454
    iget-object v2, p0, Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 455
    .local v0, "columnIndex":Ljava/lang/Integer;
    if-eqz v0, :cond_3a

    :goto_24
    const-string v2, "Column %s not in %s"

    iget-object v4, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-static {v3, v2, p2, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 456
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3, p3}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .end local v0    # "columnIndex":Ljava/lang/Integer;
    :cond_38
    move v2, v4

    .line 453
    goto :goto_13

    .restart local v0    # "columnIndex":Ljava/lang/Integer;
    :cond_3a
    move v3, v4

    .line 455
    goto :goto_24
.end method

.method public putAll(Lcom/google/common/collect/Table;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<+TR;+TC;+TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractTable;->putAll(Lcom/google/common/collect/Table;)V

    .line 478
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 490
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 675
    .local v0, "rowIndex":Ljava/lang/Integer;
    if-nez v0, :cond_12

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    :goto_11
    return-object v1

    :cond_12
    new-instance v1, Lcom/google/common/collect/ArrayTable$Row;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/ArrayTable$Row;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    goto :goto_11
.end method

.method public rowKeyList()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public rowKeySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 710
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 85
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 717
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowMap:Lcom/google/common/collect/ArrayTable$RowMap;

    .line 718
    .local v0, "map":Lcom/google/common/collect/ArrayTable$RowMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/ArrayTable$RowMap;

    .end local v0    # "map":Lcom/google/common/collect/ArrayTable$RowMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$RowMap;-><init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowMap:Lcom/google/common/collect/ArrayTable$RowMap;

    :cond_c
    return-object v0
.end method

.method public set(IILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)TV;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 339
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 340
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v1, v1, p1

    aget-object v0, v1, p2

    .line 341
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v1, v1, p1

    aput-object p3, v1, p2

    .line 342
    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 520
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public toArray(Ljava/lang/Class;)[[Ljava/lang/Object;
    .registers 8
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TV;>;)[[TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v5, 0x0

    .line 358
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    aput v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    aput v4, v2, v3

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/Object;

    .line 359
    .local v0, "copy":[[Ljava/lang/Object;, "[[TV;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    iget-object v2, p0, Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 360
    iget-object v2, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v4, v4, v1

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 362
    :cond_38
    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, "this":Lcom/google/common/collect/ArrayTable;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
