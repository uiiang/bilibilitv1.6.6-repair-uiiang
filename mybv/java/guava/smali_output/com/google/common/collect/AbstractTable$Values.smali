.class Lcom/google/common/collect/AbstractTable$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractTable;)V
    .registers 2

    .prologue
    .line 186
    .local p0, "this":Lcom/google/common/collect/AbstractTable$Values;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>.Values;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 199
    .local p0, "this":Lcom/google/common/collect/AbstractTable$Values;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractTable;->clear()V

    .line 200
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 194
    .local p0, "this":Lcom/google/common/collect/AbstractTable$Values;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractTable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/google/common/collect/AbstractTable$Values;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractTable;->valuesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 204
    .local p0, "this":Lcom/google/common/collect/AbstractTable$Values;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractTable;->size()I

    move-result v0

    return v0
.end method
