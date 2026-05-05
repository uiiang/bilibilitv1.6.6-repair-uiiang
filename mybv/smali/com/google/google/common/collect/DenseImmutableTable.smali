.class final Lcom/google/common/collect/DenseImmutableTable;
.super Lcom/google/common/collect/RegularImmutableTable;
.source "DenseImmutableTable.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/DenseImmutableTable$1;,
        Lcom/google/common/collect/DenseImmutableTable$ColumnMap;,
        Lcom/google/common/collect/DenseImmutableTable$RowMap;,
        Lcom/google/common/collect/DenseImmutableTable$Column;,
        Lcom/google/common/collect/DenseImmutableTable$Row;,
        Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
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
        "Lcom/google/common/collect/RegularImmutableTable",
        "<TR;TC;TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final cellColumnIndices:[I

.field private final cellRowIndices:[I

.field private final columnCounts:[I

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

.field private final columnMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final rowCounts:[I

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

.field private final rowMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final values:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TR;>;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    .local p1, "cellList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    .local p2, "rowSpace":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TR;>;"
    .local p3, "columnSpace":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TC;>;"
    invoke-direct {p0}, Lcom/google/common/collect/RegularImmutableTable;-><init>()V

    .line 49
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v10

    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v11

    filled-new-array {v10, v11}, [I

    move-result-object v10

    const-class v11, Ljava/lang/Object;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [[Ljava/lang/Object;

    .line 50
    .local v0, "array":[[Ljava/lang/Object;, "[[TV;"
    iput-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 51
    invoke-static {p2}, Lcom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v10

    iput-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 52
    invoke-static {p3}, Lcom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v10

    iput-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 53
    iget-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->rowCounts:[I

    .line 54
    iget-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->columnCounts:[I

    .line 55
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v10

    new-array v3, v10, [I

    .line 56
    .local v3, "cellRowIndices":[I
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v10

    new-array v2, v10, [I

    .line 57
    .local v2, "cellColumnIndices":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_49
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v10

    if-ge v7, v10, :cond_a6

    .line 58
    invoke-virtual {p1, v7}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Table$Cell;

    .line 59
    .local v1, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v9

    .line 60
    .local v9, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v5

    .line 61
    .local v5, "columnKey":Ljava/lang/Object;, "TC;"
    iget-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v10, v9}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 62
    .local v8, "rowIndex":I
    iget-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v10, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 63
    .local v4, "columnIndex":I
    iget-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v10, v10, v8

    aget-object v6, v10, v4

    .line 64
    .local v6, "existingValue":Ljava/lang/Object;, "TV;"
    if-nez v6, :cond_a4

    const/4 v10, 0x1

    :goto_7e
    const-string v11, "duplicate key: (%s, %s)"

    invoke-static {v10, v11, v9, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    iget-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v10, v10, v8

    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v10, v4

    .line 66
    iget-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->rowCounts:[I

    aget v11, v10, v8

    add-int/lit8 v11, v11, 0x1

    aput v11, v10, v8

    .line 67
    iget-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->columnCounts:[I

    aget v11, v10, v4

    add-int/lit8 v11, v11, 0x1

    aput v11, v10, v4

    .line 68
    aput v8, v3, v7

    .line 69
    aput v4, v2, v7

    .line 57
    add-int/lit8 v7, v7, 0x1

    goto :goto_49

    .line 64
    :cond_a4
    const/4 v10, 0x0

    goto :goto_7e

    .line 71
    .end local v1    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    .end local v4    # "columnIndex":I
    .end local v5    # "columnKey":Ljava/lang/Object;, "TC;"
    .end local v6    # "existingValue":Ljava/lang/Object;, "TV;"
    .end local v8    # "rowIndex":I
    .end local v9    # "rowKey":Ljava/lang/Object;, "TR;"
    :cond_a6
    iput-object v3, p0, Lcom/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    .line 72
    iput-object v2, p0, Lcom/google/common/collect/DenseImmutableTable;->cellColumnIndices:[I

    .line 73
    new-instance v10, Lcom/google/common/collect/DenseImmutableTable$RowMap;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/google/common/collect/DenseImmutableTable$RowMap;-><init>(Lcom/google/common/collect/DenseImmutableTable;Lcom/google/common/collect/DenseImmutableTable$1;)V

    iput-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    .line 74
    new-instance v10, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;-><init>(Lcom/google/common/collect/DenseImmutableTable;Lcom/google/common/collect/DenseImmutableTable$1;)V

    iput-object v10, p0, Lcom/google/common/collect/DenseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    .line 75
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/DenseImmutableTable;)[I
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/DenseImmutableTable;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->rowCounts:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/DenseImmutableTable;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/DenseImmutableTable;)[[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/DenseImmutableTable;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/DenseImmutableTable;)[I
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/DenseImmutableTable;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->columnCounts:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/DenseImmutableTable;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method


# virtual methods
.method public columnMap()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 29
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method createSerializedForm()Lcom/google/common/collect/ImmutableTable$SerializedForm;
    .registers 3

    .prologue
    .line 268
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable;->cellColumnIndices:[I

    invoke-static {p0, v0, v1}, Lcom/google/common/collect/ImmutableTable$SerializedForm;->create(Lcom/google/common/collect/ImmutableTable;[I[I)Lcom/google/common/collect/ImmutableTable$SerializedForm;

    move-result-object v0

    return-object v0
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
    .line 241
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 242
    .local v1, "rowIndex":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 243
    .local v0, "columnIndex":Ljava/lang/Integer;
    if-eqz v1, :cond_14

    if-nez v0, :cond_16

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return-object v2

    :cond_16
    iget-object v2, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    goto :goto_15
.end method

.method getCell(I)Lcom/google/common/collect/Table$Cell;
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v5, p0, Lcom/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    aget v2, v5, p1

    .line 254
    .local v2, "rowIndex":I
    iget-object v5, p0, Lcom/google/common/collect/DenseImmutableTable;->cellColumnIndices:[I

    aget v0, v5, p1

    .line 255
    .local v0, "columnIndex":I
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 256
    .local v3, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 257
    .local v1, "columnKey":Ljava/lang/Object;, "TC;"
    iget-object v5, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v5, v5, v2

    aget-object v4, v5, v0

    .line 258
    .local v4, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v3, v1, v4}, Lcom/google/common/collect/DenseImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v5

    return-object v5
.end method

.method getValue(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable;->cellColumnIndices:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 29
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 248
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    array-length v0, v0

    return v0
.end method
