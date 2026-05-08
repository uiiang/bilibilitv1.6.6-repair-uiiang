.class public Lcom/google/common/collect/TreeRangeSet;
.super Lcom/google/common/collect/AbstractRangeSet;
.source "TreeRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeRangeSet$1;,
        Lcom/google/common/collect/TreeRangeSet$SubRangeSet;,
        Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;,
        Lcom/google/common/collect/TreeRangeSet$Complement;,
        Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;,
        Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;,
        Lcom/google/common/collect/TreeRangeSet$AsRanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable",
        "<*>;>",
        "Lcom/google/common/collect/AbstractRangeSet",
        "<TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient asDescendingSetOfRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private transient asRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private transient complement:Lcom/google/common/collect/RangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation
.end field

.field final rangesByLowerBound:Ljava/util/NavigableMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/NavigableMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "rangesByLowerCut":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractRangeSet;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/collect/TreeRangeSet$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/NavigableMap;
    .param p2, "x1"    # Lcom/google/common/collect/TreeRangeSet$1;

    .prologue
    .line 43
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .registers 3
    .param p0, "x0"    # Lcom/google/common/collect/TreeRangeSet;
    .param p1, "x1"    # Lcom/google/common/collect/Range;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeSet;->rangeEnclosing(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/TreeRangeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/collect/TreeRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/google/common/collect/TreeRangeSet;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/TreeRangeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)",
            "Lcom/google/common/collect/TreeRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "rangeSet":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 60
    .local v0, "result":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/TreeRangeSet;->addAll(Lcom/google/common/collect/RangeSet;)V

    .line 61
    return-object v0
.end method

.method private rangeEnclosing(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 148
    .local v0, "floorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    :goto_1f
    return-object v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private replaceRangeWithSameLowerBound(Lcom/google/common/collect/Range;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 255
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :goto_d
    return-void

    .line 257
    :cond_e
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "rangeToAdd":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 208
    :goto_9
    return-void

    .line 173
    :cond_a
    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 174
    .local v2, "lbToAdd":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 176
    .local v5, "ubToAdd":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v6, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 177
    .local v0, "entryBelowLB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_30

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Range;

    .line 180
    .local v3, "rangeBelowLB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v6, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v6, v2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v6

    if-ltz v6, :cond_30

    .line 182
    iget-object v6, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v6, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v6

    if-ltz v6, :cond_2e

    .line 184
    iget-object v5, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 190
    :cond_2e
    iget-object v2, v3, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 194
    .end local v3    # "rangeBelowLB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_30
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v6, v5}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 195
    .local v1, "entryBelowUB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v1, :cond_48

    .line 197
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Range;

    .line 198
    .local v4, "rangeBelowUB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v6, v4, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v6, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v6

    if-ltz v6, :cond_48

    .line 200
    iget-object v5, v4, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 205
    .end local v4    # "rangeBelowUB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_48
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v6, v2, v5}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/SortedMap;->clear()V

    .line 207
    invoke-static {v2, v5}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/common/collect/TreeRangeSet;->replaceRangeWithSameLowerBound(Lcom/google/common/collect/Range;)V

    goto :goto_9
.end method

.method public bridge synthetic addAll(Lcom/google/common/collect/RangeSet;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/collect/RangeSet;

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->addAll(Lcom/google/common/collect/RangeSet;)V

    return-void
.end method

.method public asDescendingSetOfRanges()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->asDescendingSetOfRanges:Ljava/util/Set;

    .line 80
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/collect/Range<TC;>;>;"
    if-nez v0, :cond_15

    new-instance v0, Lcom/google/common/collect/TreeRangeSet$AsRanges;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/collect/Range<TC;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeSet$AsRanges;-><init>(Lcom/google/common/collect/TreeRangeSet;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->asDescendingSetOfRanges:Ljava/util/Set;

    :cond_15
    return-object v0
.end method

.method public asRanges()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->asRanges:Ljava/util/Set;

    .line 74
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/collect/Range<TC;>;>;"
    if-nez v0, :cond_11

    new-instance v0, Lcom/google/common/collect/TreeRangeSet$AsRanges;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/collect/Range<TC;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeSet$AsRanges;-><init>(Lcom/google/common/collect/TreeRangeSet;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->asRanges:Ljava/util/Set;

    :cond_11
    return-object v0
.end method

.method public bridge synthetic clear()V
    .registers 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractRangeSet;->clear()V

    return-void
.end method

.method public complement()Lcom/google/common/collect/RangeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->complement:Lcom/google/common/collect/RangeSet;

    .line 266
    .local v0, "result":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/TreeRangeSet$Complement;

    .end local v0    # "result":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeSet$Complement;-><init>(Lcom/google/common/collect/TreeRangeSet;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->complement:Lcom/google/common/collect/RangeSet;

    :cond_b
    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Comparable;

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 141
    .local v0, "floorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public bridge synthetic enclosesAll(Lcom/google/common/collect/RangeSet;)Z
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/RangeSet;

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->enclosesAll(Lcom/google/common/collect/RangeSet;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public intersects(Lcom/google/common/collect/Range;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    const/4 v3, 0x1

    .line 124
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v4, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v2, v4}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 126
    .local v0, "ceilingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 132
    :goto_2a
    return v3

    .line 131
    :cond_2b
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v4, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v2, v4}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 132
    .local v1, "priorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v1, :cond_54

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_54

    move v2, v3

    :goto_52
    move v3, v2

    goto :goto_2a

    :cond_54
    const/4 v2, 0x0

    goto :goto_52
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractRangeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 114
    .local v0, "floorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 118
    :goto_21
    return-object v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "rangeToRemove":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 251
    :goto_9
    return-void

    .line 221
    :cond_a
    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v4, v5}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 222
    .local v0, "entryBelowLB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v0, :cond_4a

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 225
    .local v2, "rangeBelowLB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v4, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v4

    if-ltz v4, :cond_4a

    .line 227
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v4, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v4

    if-ltz v4, :cond_3f

    .line 230
    iget-object v4, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v5, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v4, v5}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/common/collect/TreeRangeSet;->replaceRangeWithSameLowerBound(Lcom/google/common/collect/Range;)V

    .line 233
    :cond_3f
    iget-object v4, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {v4, v5}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/common/collect/TreeRangeSet;->replaceRangeWithSameLowerBound(Lcom/google/common/collect/Range;)V

    .line 238
    .end local v2    # "rangeBelowLB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_4a
    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-interface {v4, v5}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 239
    .local v1, "entryBelowUB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v1, :cond_75

    .line 241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Range;

    .line 242
    .local v3, "rangeBelowUB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v4

    if-eqz v4, :cond_75

    iget-object v4, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v4

    if-ltz v4, :cond_75

    .line 245
    iget-object v4, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v5, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v4, v5}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/common/collect/TreeRangeSet;->replaceRangeWithSameLowerBound(Lcom/google/common/collect/Range;)V

    .line 250
    .end local v3    # "rangeBelowUB":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_75
    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v6, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-interface {v4, v5, v6}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/SortedMap;->clear()V

    goto :goto_9
.end method

.method public bridge synthetic removeAll(Lcom/google/common/collect/RangeSet;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/collect/RangeSet;

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->removeAll(Lcom/google/common/collect/RangeSet;)V

    return-void
.end method

.method public span()Lcom/google/common/collect/Range;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 156
    .local v0, "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 157
    .local v1, "lastEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-nez v0, :cond_14

    .line 158
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 160
    :cond_14
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    iget-object v3, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v3, v2}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v2

    return-object v2
.end method

.method public subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 849
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    .local p1, "view":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .end local p0    # "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    :goto_a
    return-object p0

    .restart local p0    # "this":Lcom/google/common/collect/TreeRangeSet;, "Lcom/google/common/collect/TreeRangeSet<TC;>;"
    :cond_b
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;-><init>(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)V

    move-object p0, v0

    goto :goto_a
.end method
