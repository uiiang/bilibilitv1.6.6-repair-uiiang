.class final Lcom/google/common/collect/Collections2$PermutationCollection;
.super Ljava/util/AbstractCollection;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermutationCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final inputList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationCollection;, "Lcom/google/common/collect/Collections2$PermutationCollection<TE;>;"
    .local p1, "input":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 566
    iput-object p1, p0, Lcom/google/common/collect/Collections2$PermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    .line 567
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 586
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationCollection;, "Lcom/google/common/collect/Collections2$PermutationCollection<TE;>;"
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_e

    move-object v0, p1

    .line 587
    check-cast v0, Ljava/util/List;

    .line 588
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Collections2$PermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    # invokes: Lcom/google/common/collect/Collections2;->isPermutation(Ljava/util/List;Ljava/util/List;)Z
    invoke-static {v1, v0}, Lcom/google/common/collect/Collections2;->access$100(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    .line 590
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 576
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationCollection;, "Lcom/google/common/collect/Collections2$PermutationCollection<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationCollection;, "Lcom/google/common/collect/Collections2$PermutationCollection<TE;>;"
    new-instance v0, Lcom/google/common/collect/Collections2$PermutationIterator;

    iget-object v1, p0, Lcom/google/common/collect/Collections2$PermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Lcom/google/common/collect/Collections2$PermutationIterator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 571
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationCollection;, "Lcom/google/common/collect/Collections2$PermutationCollection<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/IntMath;->factorial(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 595
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationCollection;, "Lcom/google/common/collect/Collections2$PermutationCollection<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "permutations("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Collections2$PermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
