.class Lcom/google/common/collect/Maps$SortedKeySet;
.super Lcom/google/common/collect/Maps$KeySet;
.source "Maps.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SortedKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$KeySet",
        "<TK;TV;>;",
        "Ljava/util/SortedSet",
        "<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/SortedMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3677
    .local p0, "this":Lcom/google/common/collect/Maps$SortedKeySet;, "Lcom/google/common/collect/Maps$SortedKeySet<TK;TV;>;"
    .local p1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 3678
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 3687
    .local p0, "this":Lcom/google/common/collect/Maps$SortedKeySet;, "Lcom/google/common/collect/Maps$SortedKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedKeySet;->map()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3707
    .local p0, "this":Lcom/google/common/collect/Maps$SortedKeySet;, "Lcom/google/common/collect/Maps$SortedKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedKeySet;->map()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3697
    .local p0, "this":Lcom/google/common/collect/Maps$SortedKeySet;, "Lcom/google/common/collect/Maps$SortedKeySet<TK;TV;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/google/common/collect/Maps$SortedKeySet;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedKeySet;->map()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/Maps$SortedKeySet;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3712
    .local p0, "this":Lcom/google/common/collect/Maps$SortedKeySet;, "Lcom/google/common/collect/Maps$SortedKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedKeySet;->map()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic map()Ljava/util/Map;
    .registers 2

    .prologue
    .line 3675
    .local p0, "this":Lcom/google/common/collect/Maps$SortedKeySet;, "Lcom/google/common/collect/Maps$SortedKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedKeySet;->map()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3682
    .local p0, "this":Lcom/google/common/collect/Maps$SortedKeySet;, "Lcom/google/common/collect/Maps$SortedKeySet<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3692
    .local p0, "this":Lcom/google/common/collect/Maps$SortedKeySet;, "Lcom/google/common/collect/Maps$SortedKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p2, "toElement":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/google/common/collect/Maps$SortedKeySet;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedKeySet;->map()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/Maps$SortedKeySet;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3702
    .local p0, "this":Lcom/google/common/collect/Maps$SortedKeySet;, "Lcom/google/common/collect/Maps$SortedKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/google/common/collect/Maps$SortedKeySet;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedKeySet;->map()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/Maps$SortedKeySet;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method
