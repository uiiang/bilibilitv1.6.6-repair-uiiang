.class final Lcom/google/common/collect/Sets$PowerSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PowerSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Set",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final inputSet:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1338
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet;, "Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    .local p1, "input":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1339
    invoke-static {p1}, Lcom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    .line 1340
    iget-object v0, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_20

    const/4 v0, 0x1

    :goto_14
    const-string v1, "Too many elements to create power set: %s > 30"

    iget-object v2, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 1342
    return-void

    .line 1340
    :cond_20
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1366
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet;, "Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_12

    move-object v0, p1

    .line 1367
    check-cast v0, Ljava/util/Set;

    .line 1368
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    .line 1370
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1375
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet;, "Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    instance-of v1, p1, Lcom/google/common/collect/Sets$PowerSet;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 1376
    check-cast v0, Lcom/google/common/collect/Sets$PowerSet;

    .line 1377
    .local v0, "that":Lcom/google/common/collect/Sets$PowerSet;, "Lcom/google/common/collect/Sets$PowerSet<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    iget-object v2, v0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1379
    .end local v0    # "that":Lcom/google/common/collect/Sets$PowerSet;, "Lcom/google/common/collect/Sets$PowerSet<*>;"
    :goto_f
    return v1

    :cond_10
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_f
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1389
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet;, "Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1351
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet;, "Lcom/google/common/collect/Sets$PowerSet<TE;>;"
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
            "Ljava/util/Set",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 1356
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet;, "Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/Sets$PowerSet$1;

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$PowerSet;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Sets$PowerSet$1;-><init>(Lcom/google/common/collect/Sets$PowerSet;I)V

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 1346
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet;, "Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1394
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet;, "Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "powerSet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
