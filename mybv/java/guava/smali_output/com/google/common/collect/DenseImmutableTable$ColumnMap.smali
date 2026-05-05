.class final Lcom/google/common/collect/DenseImmutableTable$ColumnMap;
.super Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ColumnMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/DenseImmutableTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/DenseImmutableTable;)V
    .registers 3

    .prologue
    .line 209
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ColumnMap;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    iput-object p1, p0, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;->this$0:Lcom/google/common/collect/DenseImmutableTable;

    .line 210
    # getter for: Lcom/google/common/collect/DenseImmutableTable;->columnCounts:[I
    invoke-static {p1}, Lcom/google/common/collect/DenseImmutableTable;->access$500(Lcom/google/common/collect/DenseImmutableTable;)[I

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;-><init>(I)V

    .line 211
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/DenseImmutableTable;Lcom/google/common/collect/DenseImmutableTable$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/DenseImmutableTable;
    .param p2, "x1"    # Lcom/google/common/collect/DenseImmutableTable$1;

    .prologue
    .line 208
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ColumnMap;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;-><init>(Lcom/google/common/collect/DenseImmutableTable;)V

    return-void
.end method


# virtual methods
.method bridge synthetic getValue(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 207
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ColumnMap;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;->getValue(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getValue(I)Ljava/util/Map;
    .registers 4
    .param p1, "keyIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ColumnMap;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    new-instance v0, Lcom/google/common/collect/DenseImmutableTable$Column;

    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;->this$0:Lcom/google/common/collect/DenseImmutableTable;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/DenseImmutableTable$Column;-><init>(Lcom/google/common/collect/DenseImmutableTable;I)V

    return-object v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 225
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ColumnMap;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    const/4 v0, 0x0

    return v0
.end method

.method keyToIndex()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ColumnMap;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable$ColumnMap;->this$0:Lcom/google/common/collect/DenseImmutableTable;

    # getter for: Lcom/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v0}, Lcom/google/common/collect/DenseImmutableTable;->access$300(Lcom/google/common/collect/DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
