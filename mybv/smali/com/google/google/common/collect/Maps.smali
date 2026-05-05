.class public final Lcom/google/common/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Maps$DescendingMap;,
        Lcom/google/common/collect/Maps$EntrySet;,
        Lcom/google/common/collect/Maps$Values;,
        Lcom/google/common/collect/Maps$NavigableKeySet;,
        Lcom/google/common/collect/Maps$SortedKeySet;,
        Lcom/google/common/collect/Maps$KeySet;,
        Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;,
        Lcom/google/common/collect/Maps$ViewCachingAbstractMap;,
        Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;,
        Lcom/google/common/collect/Maps$FilteredEntryBiMap;,
        Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;,
        Lcom/google/common/collect/Maps$FilteredEntrySortedMap;,
        Lcom/google/common/collect/Maps$FilteredEntryMap;,
        Lcom/google/common/collect/Maps$FilteredKeyMap;,
        Lcom/google/common/collect/Maps$FilteredMapValues;,
        Lcom/google/common/collect/Maps$AbstractFilteredMap;,
        Lcom/google/common/collect/Maps$TransformedEntriesNavigableMap;,
        Lcom/google/common/collect/Maps$TransformedEntriesSortedMap;,
        Lcom/google/common/collect/Maps$TransformedEntriesMap;,
        Lcom/google/common/collect/Maps$EntryTransformer;,
        Lcom/google/common/collect/Maps$UnmodifiableBiMap;,
        Lcom/google/common/collect/Maps$BiMapConverter;,
        Lcom/google/common/collect/Maps$UnmodifiableEntrySet;,
        Lcom/google/common/collect/Maps$UnmodifiableEntries;,
        Lcom/google/common/collect/Maps$NavigableAsMapView;,
        Lcom/google/common/collect/Maps$SortedAsMapView;,
        Lcom/google/common/collect/Maps$AsMapView;,
        Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;,
        Lcom/google/common/collect/Maps$ValueDifferenceImpl;,
        Lcom/google/common/collect/Maps$MapDifferenceImpl;,
        Lcom/google/common/collect/Maps$EntryFunction;
    }
.end annotation


# static fields
.field static final STANDARD_JOINER:Lcom/google/common/base/Joiner$MapJoiner;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3599
    sget-object v0, Lcom/google/common/collect/Collections2;->STANDARD_JOINER:Lcom/google/common/base/Joiner;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Maps;->STANDARD_JOINER:Lcom/google/common/base/Joiner$MapJoiner;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/common/collect/Maps;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Ljava/util/Set;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/common/collect/Maps;->removeOnlySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2
    .param p0, "x0"    # Ljava/util/SortedSet;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/common/collect/Maps;->removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .registers 2
    .param p0, "x0"    # Ljava/util/NavigableSet;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/common/collect/Maps;->removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 2
    .param p0, "x0"    # Ljava/util/Map$Entry;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/common/collect/Maps;->unmodifiableOrNull(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static asConverter(Lcom/google/common/collect/BiMap;)Lcom/google/common/base/Converter;
    .registers 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<TA;TB;>;)",
            "Lcom/google/common/base/Converter",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 1411
    .local p0, "bimap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TA;TB;>;"
    new-instance v0, Lcom/google/common/collect/Maps$BiMapConverter;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$BiMapConverter;-><init>(Lcom/google/common/collect/BiMap;)V

    return-object v0
.end method

.method static asEntryToEntryFunction(Lcom/google/common/collect/Maps$EntryTransformer;)Lcom/google/common/base/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 1950
    .local p0, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    new-instance v0, Lcom/google/common/collect/Maps$11;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$11;-><init>(Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static asEntryToValueFunction(Lcom/google/common/collect/Maps$EntryTransformer;)Lcom/google/common/base/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1916
    .local p0, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    new-instance v0, Lcom/google/common/collect/Maps$9;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$9;-><init>(Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static asEntryTransformer(Lcom/google/common/base/Function;)Lcom/google/common/collect/Maps$EntryTransformer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;)",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<TK;TV1;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1891
    .local p0, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    new-instance v0, Lcom/google/common/collect/Maps$7;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$7;-><init>(Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$AsMapView;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$AsMapView;-><init>(Ljava/util/Set;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/NavigableSet;Lcom/google/common/base/Function;)Ljava/util/NavigableMap;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 797
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TK;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$NavigableAsMapView;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$NavigableAsMapView;-><init>(Ljava/util/NavigableSet;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 765
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$SortedAsMapView;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$SortedAsMapView;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method static asMapEntryIterator(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 881
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$1;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/Maps$1;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method static asValueToValueFunction(Lcom/google/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)Lcom/google/common/base/Function;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;TV1;TV2;>;TK;)",
            "Lcom/google/common/base/Function",
            "<TV1;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1902
    .local p0, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    new-instance v0, Lcom/google/common/collect/Maps$8;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$8;-><init>(Lcom/google/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)V

    return-object v0
.end method

.method static capacity(I)I
    .registers 3
    .param p0, "expectedSize"    # I

    .prologue
    .line 195
    const/4 v0, 0x3

    if-ge p0, v0, :cond_b

    .line 196
    const-string v0, "expectedSize"

    invoke-static {p0, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 197
    add-int/lit8 v0, p0, 0x1

    .line 205
    :goto_a
    return v0

    .line 199
    :cond_b
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_18

    .line 203
    int-to-float v0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_a

    .line 205
    :cond_18
    const v0, 0x7fffffff

    goto :goto_a
.end method

.method static containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3560
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    .line 3561
    const/4 v0, 0x0

    .line 3563
    .end local p1    # "o":Ljava/lang/Object;
    :goto_5
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method static containsKeyImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3536
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static containsValueImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3543
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;)Lcom/google/common/collect/MapDifference;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/MapDifference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "left":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v2, p0, Ljava/util/SortedMap;

    if-eqz v2, :cond_c

    move-object v1, p0

    .line 431
    check-cast v1, Ljava/util/SortedMap;

    .line 432
    .local v1, "sortedLeft":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->difference(Ljava/util/SortedMap;Ljava/util/Map;)Lcom/google/common/collect/SortedMapDifference;

    move-result-object v0

    .line 435
    .end local v1    # "sortedLeft":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    :goto_b
    return-object v0

    :cond_c
    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/google/common/collect/Maps;->difference(Ljava/util/Map;Ljava/util/Map;Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapDifference;

    move-result-object v0

    goto :goto_b
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapDifference;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Lcom/google/common/base/Equivalence",
            "<-TV;>;)",
            "Lcom/google/common/collect/MapDifference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "left":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p2, "valueEquivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<-TV;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 464
    .local v3, "onlyOnLeft":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 465
    .local v4, "onlyOnRight":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 466
    .local v5, "onBoth":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v6

    .local v6, "differences":Ljava/util/Map;, "Ljava/util/Map<TK;Lcom/google/common/collect/MapDifference$ValueDifference<TV;>;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 467
    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/Maps;->doDifference(Ljava/util/Map;Ljava/util/Map;Lcom/google/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 468
    new-instance v0, Lcom/google/common/collect/Maps$MapDifferenceImpl;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/common/collect/Maps$MapDifferenceImpl;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public static difference(Ljava/util/SortedMap;Ljava/util/Map;)Lcom/google/common/collect/SortedMapDifference;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/SortedMapDifference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 651
    .local p0, "left":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v7

    .line 654
    .local v7, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {v7}, Lcom/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v3

    .line 655
    .local v3, "onlyOnLeft":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {v7}, Lcom/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v4

    .line 656
    .local v4, "onlyOnRight":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-interface {v4, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 657
    invoke-static {v7}, Lcom/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v5

    .line 658
    .local v5, "onBoth":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {v7}, Lcom/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v6

    .line 659
    .local v6, "differences":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;Lcom/google/common/collect/MapDifference$ValueDifference<TV;>;>;"
    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/Maps;->doDifference(Ljava/util/Map;Ljava/util/Map;Lcom/google/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 660
    new-instance v0, Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;-><init>(Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method private static doDifference(Ljava/util/Map;Ljava/util/Map;Lcom/google/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Lcom/google/common/base/Equivalence",
            "<-TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "left":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p2, "valueEquivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<-TV;>;"
    .local p3, "onlyOnLeft":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p4, "onlyOnRight":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p5, "onBoth":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p6, "differences":Ljava/util/Map;, "Ljava/util/Map<TK;Lcom/google/common/collect/MapDifference$ValueDifference<TV;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 480
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 481
    .local v2, "leftKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 482
    .local v3, "leftValue":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 483
    invoke-interface {p4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 484
    .local v4, "rightValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p2, v3, v4}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 485
    invoke-interface {p5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 487
    :cond_30
    invoke-static {v3, v4}, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/MapDifference$ValueDifference;

    move-result-object v5

    invoke-interface {p6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 490
    .end local v4    # "rightValue":Ljava/lang/Object;, "TV;"
    :cond_38
    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 493
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v2    # "leftKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "leftValue":Ljava/lang/Object;, "TV;"
    :cond_3c
    return-void
.end method

.method static equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3590
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-ne p0, p1, :cond_4

    .line 3591
    const/4 v1, 0x1

    .line 3596
    :goto_3
    return v1

    .line 3592
    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_18

    move-object v0, p1

    .line 3593
    check-cast v0, Ljava/util/Map;

    .line 3594
    .local v0, "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 3596
    .end local v0    # "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_18
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public static filterEntries(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2626
    .local p0, "unfiltered":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2627
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2628
    instance-of v0, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;

    .end local p0    # "unfiltered":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/Maps$FilteredEntryBiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;

    move-result-object v0

    :goto_10
    return-object v0

    .restart local p0    # "unfiltered":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    :cond_11
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)V

    goto :goto_10
.end method

.method public static filterEntries(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2512
    .local p0, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2513
    instance-of v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/Maps$AbstractFilteredMap;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    :goto_d
    return-object v0

    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_e
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    move-object v0, v1

    goto :goto_d
.end method

.method public static filterEntries(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;
    .registers 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2591
    .local p0, "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2592
    instance-of v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;

    .end local p0    # "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    :goto_d
    return-object v0

    .restart local p0    # "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :cond_e
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;-><init>(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)V

    move-object v0, v1

    goto :goto_d
.end method

.method public static filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2551
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2552
    instance-of v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    .end local p0    # "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/Maps$FilteredEntrySortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    :goto_d
    return-object v0

    .restart local p0    # "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    :cond_e
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V

    move-object v0, v1

    goto :goto_d
.end method

.method private static filterFiltered(Lcom/google/common/collect/Maps$FilteredEntryBiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$FilteredEntryBiMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3134
    .local p0, "map":Lcom/google/common/collect/Maps$FilteredEntryBiMap;, "Lcom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v1, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 3135
    .local v0, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->unfiltered()Lcom/google/common/collect/BiMap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)V

    return-object v1
.end method

.method private static filterFiltered(Lcom/google/common/collect/Maps$AbstractFilteredMap;Lcom/google/common/base/Predicate;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$AbstractFilteredMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2639
    .local p0, "map":Lcom/google/common/collect/Maps$AbstractFilteredMap;, "Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v2, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method private static filterFiltered(Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;
    .registers 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$FilteredEntryNavigableMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2985
    .local p0, "map":Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lcom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    # getter for: Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lcom/google/common/base/Predicate;
    invoke-static {p0}, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->access$600(Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 2987
    .local v0, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;

    # getter for: Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;
    invoke-static {p0}, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->access$700(Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;-><init>(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)V

    return-object v1
.end method

.method private static filterFiltered(Lcom/google/common/collect/Maps$FilteredEntrySortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$FilteredEntrySortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2879
    .local p0, "map":Lcom/google/common/collect/Maps$FilteredEntrySortedMap;, "Lcom/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v1, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 2880
    .local v0, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V

    return-object v1
.end method

.method public static filterKeys(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2337
    .local p0, "unfiltered":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    .local p1, "keyPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TK;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2338
    invoke-static {p1}, Lcom/google/common/collect/Maps;->keyPredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterKeys(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2228
    .local p0, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keyPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TK;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    invoke-static {p1}, Lcom/google/common/collect/Maps;->keyPredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 2230
    .local v0, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;*>;>;"
    instance-of v1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    if-eqz v1, :cond_12

    check-cast p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/Maps$AbstractFilteredMap;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v1

    :goto_11
    return-object v1

    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_12
    new-instance v2, Lcom/google/common/collect/Maps$FilteredKeyMap;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, v1, p1, v0}, Lcom/google/common/collect/Maps$FilteredKeyMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)V

    move-object v1, v2

    goto :goto_11
.end method

.method public static filterKeys(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2307
    .local p0, "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "keyPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TK;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->keyPredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterKeys(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2269
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "keyPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TK;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->keyPredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TV;>;)",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2478
    .local p0, "unfiltered":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    .local p1, "valuePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->valuePredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2372
    .local p0, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "valuePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->valuePredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TV;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2445
    .local p0, "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "valuePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->valuePredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2408
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "valuePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->valuePredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static fromProperties(Ljava/util/Properties;)Lcom/google/common/collect/ImmutableMap;
    .registers 5
    .param p0, "properties"    # Ljava/util/Properties;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1272
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 1274
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1275
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1276
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_8

    .line 1279
    .end local v2    # "key":Ljava/lang/String;
    :cond_1c
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method public static immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1293
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static immutableEnumMap(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    .registers 5
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    instance-of v3, p0, Lcom/google/common/collect/ImmutableEnumMap;

    if-eqz v3, :cond_8

    move-object v2, p0

    .line 139
    check-cast v2, Lcom/google/common/collect/ImmutableEnumMap;

    .line 148
    :goto_7
    return-object v2

    .line 141
    :cond_8
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 142
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    goto :goto_7

    .line 144
    :cond_13
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 148
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    :cond_36
    new-instance v3, Ljava/util/EnumMap;

    invoke-direct {v3, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Lcom/google/common/collect/ImmutableEnumMap;->asImmutable(Ljava/util/EnumMap;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    goto :goto_7
.end method

.method static indexMap(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4144
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v0, v5}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 4145
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TE;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 4146
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4147
    .local v1, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move v2, v3

    .line 4148
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_e

    .line 4149
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_23
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    return-object v5
.end method

.method static keyFunction()Lcom/google/common/base/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;*>;TK;>;"
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lcom/google/common/collect/Maps$EntryFunction;->KEY:Lcom/google/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->keyFunction()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 2
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;*>;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3667
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;*>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method static keyPredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;*>;>;"
        }
    .end annotation

    .prologue
    .line 2191
    .local p0, "keyPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TK;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->keyFunction()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public static newEnumMap(Ljava/lang/Class;)Ljava/util/EnumMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;)",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v1, Ljava/util/EnumMap;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method

.method public static newEnumMap(Ljava/util/Map;)Ljava/util/EnumMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;+TV;>;)",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static newHashMap(Ljava/util/Map;)Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMapWithExpectedSize(I)Ljava/util/HashMap;
    .registers 3
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static newIdentityHashMap()Ljava/util/IdentityHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap()Ljava/util/LinkedHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;
    .registers 3
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method public static newTreeMap()Ljava/util/TreeMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .registers 2
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "K:TC;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TC;>;)",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TC;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/SortedMap;)Ljava/util/TreeMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method static orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 1
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 701
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-eqz p0, :cond_3

    .line 704
    .end local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :goto_2
    return-object p0

    .restart local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :cond_3
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object p0

    goto :goto_2
.end method

.method static putAllImpl(Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3614
    .local p0, "self":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3615
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 3617
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_20
    return-void
.end method

.method static removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3580
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    .line 3581
    const/4 v0, 0x0

    .line 3583
    .end local p1    # "o":Ljava/lang/Object;
    :goto_5
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private static removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<TE;>;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1070
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/Maps$4;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$4;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method private static removeOnlySet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1016
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lcom/google/common/collect/Maps$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$2;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1035
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/Maps$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$3;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method static safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v1, 0x0

    .line 3507
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3509
    :try_start_4
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_7} :catch_b

    move-result v1

    .line 3513
    :goto_8
    return v1

    .line 3510
    :catch_9
    move-exception v0

    .line 3511
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_8

    .line 3512
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_b
    move-exception v0

    .line 3513
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_8
.end method

.method static safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    const/4 v1, 0x0

    .line 3492
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3494
    :try_start_4
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_7} :catch_b

    move-result-object v1

    .line 3498
    :goto_8
    return-object v1

    .line 3495
    :catch_9
    move-exception v0

    .line 3496
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_8

    .line 3497
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_b
    move-exception v0

    .line 3498
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_8
.end method

.method static safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    const/4 v1, 0x0

    .line 3522
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3524
    :try_start_4
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_7} :catch_b

    move-result-object v1

    .line 3528
    :goto_8
    return-object v1

    .line 3525
    :catch_9
    move-exception v0

    .line 3526
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_8

    .line 3527
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_b
    move-exception v0

    .line 3528
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_8
.end method

.method public static subMap(Ljava/util/NavigableMap;Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;
    .registers 9
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;",
            "Lcom/google/common/collect/Range",
            "<TK;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4173
    invoke-interface {p0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    if-eq v0, v3, :cond_36

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 4177
    invoke-interface {p0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_60

    move v0, v1

    :goto_31
    const-string v3, "map is using a custom comparator which is inconsistent with the natural ordering."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4181
    :cond_36
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 4182
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v0

    sget-object v4, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v4, :cond_62

    move v0, v1

    :goto_4f
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->upperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v5

    sget-object v6, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v5, v6, :cond_64

    :goto_5b
    invoke-interface {p0, v3, v0, v4, v1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 4192
    :goto_5f
    return-object v0

    :cond_60
    move v0, v2

    .line 4177
    goto :goto_31

    :cond_62
    move v0, v2

    .line 4182
    goto :goto_4f

    :cond_64
    move v1, v2

    goto :goto_5b

    .line 4187
    :cond_66
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 4188
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_7d

    :goto_78
    invoke-interface {p0, v0, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    goto :goto_5f

    :cond_7d
    move v1, v2

    goto :goto_78

    .line 4189
    :cond_7f
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 4190
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->upperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_96

    :goto_91
    invoke-interface {p0, v0, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    goto :goto_5f

    :cond_96
    move v1, v2

    goto :goto_91

    .line 4192
    :cond_98
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    goto :goto_5f
.end method

.method public static synchronizedBiMap(Lcom/google/common/collect/BiMap;)Lcom/google/common/collect/BiMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1489
    .local p0, "bimap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/Synchronized;->biMap(Lcom/google/common/collect/BiMap;Ljava/lang/Object;)Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3411
    .local p0, "navigableMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    invoke-static {p0}, Lcom/google/common/collect/Synchronized;->navigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1146
    .local p0, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TK;>;"
    .local p1, "valueFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->toMap(Ljava/util/Iterator;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/Iterator;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1167
    .local p0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    .local p1, "valueFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1170
    .local v0, "builder":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1171
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1172
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1174
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_19
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    return-object v2
.end method

.method static toStringImpl(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3605
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3606
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/common/collect/Maps;->STANDARD_JOINER:Lcom/google/common/base/Joiner$MapJoiner;

    invoke-virtual {v1, v0, p0}, Lcom/google/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 3607
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static transformEntries(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1736
    .local p0, "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    .local p1, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lcom/google/common/collect/Maps$TransformedEntriesMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$TransformedEntriesMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Ljava/util/NavigableMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1852
    .local p0, "fromMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV1;>;"
    .local p1, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lcom/google/common/collect/Maps$TransformedEntriesNavigableMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$TransformedEntriesNavigableMap;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1793
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lcom/google/common/collect/Maps$TransformedEntriesSortedMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$TransformedEntriesSortedMap;-><init>(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static transformEntry(Lcom/google/common/collect/Maps$EntryTransformer;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V2:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1930
    .local p0, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV1;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    new-instance v0, Lcom/google/common/collect/Maps$10;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/Maps$10;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;)",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1589
    .local p0, "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->asEntryTransformer(Lcom/google/common/base/Function;)Lcom/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static transformValues(Ljava/util/NavigableMap;Lcom/google/common/base/Function;)Ljava/util/NavigableMap;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV1;>;",
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1680
    .local p0, "fromMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV1;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->asEntryTransformer(Lcom/google/common/base/Function;)Lcom/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/NavigableMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static transformValues(Ljava/util/SortedMap;Lcom/google/common/base/Function;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1633
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->asEntryTransformer(Lcom/google/common/base/Function;)Lcom/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static uniqueIndex(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;
    .registers 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TV;>;",
            "Lcom/google/common/base/Function",
            "<-TV;TK;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1208
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TV;>;"
    .local p1, "keyFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TV;TK;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->uniqueIndex(Ljava/util/Iterator;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static uniqueIndex(Ljava/util/Iterator;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;
    .registers 8
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TV;>;",
            "Lcom/google/common/base/Function",
            "<-TV;TK;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1242
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    .local p1, "keyFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TV;TK;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 1244
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1245
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1246
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_7

    .line 1249
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_19
    :try_start_19
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1c} :catch_1e

    move-result-object v3

    return-object v3

    .line 1250
    :catch_1e
    move-exception v1

    .line 1251
    .local v1, "duplicateKeys":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". To index multiple values under a key, use Multimaps.index."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static unmodifiableBiMap(Lcom/google/common/collect/BiMap;)Lcom/google/common/collect/BiMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1506
    .local p0, "bimap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<+TK;+TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;)V

    return-object v0
.end method

.method static unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1318
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    new-instance v0, Lcom/google/common/collect/Maps$5;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$5;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static unmodifiableEntryIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1334
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/google/common/collect/Maps$6;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$6;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1305
    .local p0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableEntrySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/Maps$UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;+TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_b

    .line 497
    check-cast p0, Ljava/util/SortedMap;

    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    .line 499
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_a
.end method

.method public static unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;+TV;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3207
    .local p0, "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3208
    instance-of v1, p0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;

    if-eqz v1, :cond_9

    .line 3210
    move-object v0, p0

    .line 3213
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    goto :goto_8
.end method

.method private static unmodifiableOrNull(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 2
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;+TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3219
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_3
.end method

.method static valueFunction()Lcom/google/common/base/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<*TV;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/google/common/collect/Maps$EntryFunction;->VALUE:Lcom/google/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->valueFunction()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static valueOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 2
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<*TV;>;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3672
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method static valuePredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<-TV;>;)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/util/Map$Entry",
            "<*TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2195
    .local p0, "valuePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TV;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->valueFunction()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method
