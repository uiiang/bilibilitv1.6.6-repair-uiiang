.class final Lcom/google/common/collect/DenseImmutableTable$Column;
.super Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap",
        "<TR;TV;>;"
    }
.end annotation


# instance fields
.field private final columnIndex:I

.field final synthetic this$0:Lcom/google/common/collect/DenseImmutableTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/DenseImmutableTable;I)V
    .registers 4
    .param p2, "columnIndex"    # I

    .prologue
    .line 164
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$Column;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Column;"
    iput-object p1, p0, Lcom/google/common/collect/DenseImmutableTable$Column;->this$0:Lcom/google/common/collect/DenseImmutableTable;

    .line 165
    # getter for: Lcom/google/common/collect/DenseImmutableTable;->columnCounts:[I
    invoke-static {p1}, Lcom/google/common/collect/DenseImmutableTable;->access$500(Lcom/google/common/collect/DenseImmutableTable;)[I

    move-result-object v0

    aget v0, v0, p2

    invoke-direct {p0, v0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;-><init>(I)V

    .line 166
    iput p2, p0, Lcom/google/common/collect/DenseImmutableTable$Column;->columnIndex:I

    .line 167
    return-void
.end method


# virtual methods
.method getValue(I)Ljava/lang/Object;
    .registers 4
    .param p1, "keyIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$Column;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable$Column;->this$0:Lcom/google/common/collect/DenseImmutableTable;

    # getter for: Lcom/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/collect/DenseImmutableTable;->access$400(Lcom/google/common/collect/DenseImmutableTable;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    iget v1, p0, Lcom/google/common/collect/DenseImmutableTable$Column;->columnIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 181
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$Column;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Column;"
    const/4 v0, 0x1

    return v0
.end method

.method keyToIndex()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$Column;, "Lcom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable$Column;->this$0:Lcom/google/common/collect/DenseImmutableTable;

    # getter for: Lcom/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v0}, Lcom/google/common/collect/DenseImmutableTable;->access$600(Lcom/google/common/collect/DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
