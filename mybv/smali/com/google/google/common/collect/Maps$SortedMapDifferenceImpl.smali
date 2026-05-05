.class Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;
.super Lcom/google/common/collect/Maps$MapDifferenceImpl;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/SortedMapDifference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SortedMapDifferenceImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$MapDifferenceImpl",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SortedMapDifference",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/util/SortedMap",
            "<TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;, "Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    .local p1, "onlyOnLeft":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p2, "onlyOnRight":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p3, "onBoth":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p4, "differences":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;Lcom/google/common/collect/MapDifference$ValueDifference<TV;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/Maps$MapDifferenceImpl;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 671
    return-void
.end method


# virtual methods
.method public bridge synthetic entriesDiffering()Ljava/util/Map;
    .registers 2

    .prologue
    .line 663
    .local p0, "this":Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;, "Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;->entriesDiffering()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public entriesDiffering()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, "this":Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;, "Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesDiffering()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public bridge synthetic entriesInCommon()Ljava/util/Map;
    .registers 2

    .prologue
    .line 663
    .local p0, "this":Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;, "Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;->entriesInCommon()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public entriesInCommon()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 680
    .local p0, "this":Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;, "Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesInCommon()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public bridge synthetic entriesOnlyOnLeft()Ljava/util/Map;
    .registers 2

    .prologue
    .line 663
    .local p0, "this":Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;, "Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;->entriesOnlyOnLeft()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public entriesOnlyOnLeft()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 685
    .local p0, "this":Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;, "Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public bridge synthetic entriesOnlyOnRight()Ljava/util/Map;
    .registers 2

    .prologue
    .line 663
    .local p0, "this":Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;, "Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;->entriesOnlyOnRight()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public entriesOnlyOnRight()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 690
    .local p0, "this":Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;, "Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method
