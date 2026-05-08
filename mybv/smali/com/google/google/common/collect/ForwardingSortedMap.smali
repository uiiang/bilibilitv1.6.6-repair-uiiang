.class public abstract Lcom/google/common/collect/ForwardingSortedMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "ForwardingSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ForwardingSortedMap$StandardKeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 63
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method

.method private unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p1, "k1"    # Ljava/lang/Object;
    .param p2, "k2"    # Ljava/lang/Object;

    .prologue
    .line 116
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 117
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_d

    .line 118
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "k1":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 120
    :goto_c
    return v1

    .restart local p1    # "k1":Ljava/lang/Object;
    :cond_d
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_c
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
    .line 70
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .registers 2

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected standardContainsKey(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 138
    move-object v2, p0

    .line 139
    .local v2, "self":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Object;TV;>;"
    :try_start_2
    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "ceilingKey":Ljava/lang/Object;
    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/ForwardingSortedMap;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_d} :catch_12
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_d} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_d} :catch_16

    move-result v4

    if-nez v4, :cond_11

    const/4 v3, 0x1

    .line 146
    .end local v0    # "ceilingKey":Ljava/lang/Object;
    :cond_11
    :goto_11
    return v3

    .line 141
    :catch_12
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_11

    .line 143
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_14
    move-exception v1

    .line 144
    .local v1, "e":Ljava/util/NoSuchElementException;
    goto :goto_11

    .line 145
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :catch_16
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_11
.end method

.method protected standardSubMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ForwardingSortedMap;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_15

    const/4 v0, 0x1

    :goto_7
    const-string v1, "fromKey must be <= toKey"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingSortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0

    .line 160
    :cond_15
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
