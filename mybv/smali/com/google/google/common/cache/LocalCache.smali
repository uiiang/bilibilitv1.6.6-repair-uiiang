.class Lcom/google/common/cache/LocalCache;
.super Ljava/util/AbstractMap;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/LocalCache$LocalLoadingCache;,
        Lcom/google/common/cache/LocalCache$LocalManualCache;,
        Lcom/google/common/cache/LocalCache$LoadingSerializationProxy;,
        Lcom/google/common/cache/LocalCache$ManualSerializationProxy;,
        Lcom/google/common/cache/LocalCache$EntrySet;,
        Lcom/google/common/cache/LocalCache$Values;,
        Lcom/google/common/cache/LocalCache$KeySet;,
        Lcom/google/common/cache/LocalCache$AbstractCacheSet;,
        Lcom/google/common/cache/LocalCache$EntryIterator;,
        Lcom/google/common/cache/LocalCache$WriteThroughEntry;,
        Lcom/google/common/cache/LocalCache$ValueIterator;,
        Lcom/google/common/cache/LocalCache$KeyIterator;,
        Lcom/google/common/cache/LocalCache$HashIterator;,
        Lcom/google/common/cache/LocalCache$AccessQueue;,
        Lcom/google/common/cache/LocalCache$WriteQueue;,
        Lcom/google/common/cache/LocalCache$LoadingValueReference;,
        Lcom/google/common/cache/LocalCache$Segment;,
        Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;,
        Lcom/google/common/cache/LocalCache$WeightedSoftValueReference;,
        Lcom/google/common/cache/LocalCache$WeightedWeakValueReference;,
        Lcom/google/common/cache/LocalCache$StrongValueReference;,
        Lcom/google/common/cache/LocalCache$SoftValueReference;,
        Lcom/google/common/cache/LocalCache$WeakValueReference;,
        Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;,
        Lcom/google/common/cache/LocalCache$WeakWriteEntry;,
        Lcom/google/common/cache/LocalCache$WeakAccessEntry;,
        Lcom/google/common/cache/LocalCache$WeakEntry;,
        Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;,
        Lcom/google/common/cache/LocalCache$StrongWriteEntry;,
        Lcom/google/common/cache/LocalCache$StrongAccessEntry;,
        Lcom/google/common/cache/LocalCache$StrongEntry;,
        Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;,
        Lcom/google/common/cache/LocalCache$NullEntry;,
        Lcom/google/common/cache/LocalCache$ReferenceEntry;,
        Lcom/google/common/cache/LocalCache$ValueReference;,
        Lcom/google/common/cache/LocalCache$EntryFactory;,
        Lcom/google/common/cache/LocalCache$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final CONTAINS_VALUE_RETRIES:I = 0x3

.field static final DISCARDING_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final DRAIN_MAX:I = 0x10

.field static final DRAIN_THRESHOLD:I = 0x3f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final UNSET:Lcom/google/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field final concurrencyLevel:I

.field final defaultLoader:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

.field final keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/google/common/cache/LocalCache$Strength;

.field final maxWeight:J

.field final refreshNanos:J

.field final removalListener:Lcom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/RemovalListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final removalNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/RemovalNotification",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lcom/google/common/cache/LocalCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/cache/LocalCache$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final ticker:Lcom/google/common/base/Ticker;

.field final valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/google/common/cache/LocalCache$Strength;

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final weigher:Lcom/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Weigher",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 158
    const-class v0, Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    .line 691
    new-instance v0, Lcom/google/common/cache/LocalCache$1;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$1;-><init>()V

    sput-object v0, Lcom/google/common/cache/LocalCache;->UNSET:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 1030
    new-instance v0, Lcom/google/common/cache/LocalCache$2;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$2;-><init>()V

    sput-object v0, Lcom/google/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V
    .registers 19
    .param p2    # Lcom/google/common/cache/CacheLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CacheBuilder",
            "<-TK;-TV;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "builder":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<-TK;-TV;>;"
    .local p2, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractMap;-><init>()V

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getConcurrencyLevel()I

    move-result v12

    const/high16 v13, 0x10000

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/common/cache/LocalCache;->concurrencyLevel:I

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getKeyStrength()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/cache/LocalCache;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getValueStrength()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/cache/LocalCache;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getKeyEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getValueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getMaximumWeight()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/common/cache/LocalCache;->maxWeight:J

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getWeigher()Lcom/google/common/cache/Weigher;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/cache/LocalCache;->weigher:Lcom/google/common/cache/Weigher;

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getExpireAfterAccessNanos()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getExpireAfterWriteNanos()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getRefreshNanos()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/common/cache/LocalCache;->refreshNanos:J

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getRemovalListener()Lcom/google/common/cache/RemovalListener;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/cache/LocalCache;->removalListener:Lcom/google/common/cache/RemovalListener;

    .line 252
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/cache/LocalCache;->removalListener:Lcom/google/common/cache/RemovalListener;

    sget-object v13, Lcom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;

    if-ne v12, v13, :cond_e4

    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v12

    :goto_6d
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->recordsTime()Z

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/google/common/cache/CacheBuilder;->getTicker(Z)Lcom/google/common/base/Ticker;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    .line 258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/cache/LocalCache;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->usesAccessEntries()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->usesWriteEntries()Z

    move-result v14

    invoke-static {v12, v13, v14}, Lcom/google/common/cache/LocalCache$EntryFactory;->getFactory(Lcom/google/common/cache/LocalCache$Strength;ZZ)Lcom/google/common/cache/LocalCache$EntryFactory;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/cache/LocalCache;->entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getStatsCounterSupplier()Lcom/google/common/base/Supplier;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/common/cache/AbstractCache$StatsCounter;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 260
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getInitialCapacity()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 263
    .local v3, "initialCapacity":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v12

    if-eqz v12, :cond_c6

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->customWeigher()Z

    move-result v12

    if-nez v12, :cond_c6

    .line 264
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/common/cache/LocalCache;->maxWeight:J

    long-to-int v12, v12

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 272
    :cond_c6
    const/4 v10, 0x0

    .line 273
    .local v10, "segmentShift":I
    const/4 v9, 0x1

    .line 274
    .local v9, "segmentCount":I
    :goto_c8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/common/cache/LocalCache;->concurrencyLevel:I

    if-ge v9, v12, :cond_ea

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v12

    if-eqz v12, :cond_df

    mul-int/lit8 v12, v9, 0x14

    int-to-long v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/common/cache/LocalCache;->maxWeight:J

    cmp-long v12, v12, v14

    if-gtz v12, :cond_ea

    .line 275
    :cond_df
    add-int/lit8 v10, v10, 0x1

    .line 276
    shl-int/lit8 v9, v9, 0x1

    goto :goto_c8

    .line 252
    .end local v3    # "initialCapacity":I
    .end local v9    # "segmentCount":I
    .end local v10    # "segmentShift":I
    :cond_e4
    new-instance v12, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_6d

    .line 278
    .restart local v3    # "initialCapacity":I
    .restart local v9    # "segmentCount":I
    .restart local v10    # "segmentShift":I
    :cond_ea
    rsub-int/lit8 v12, v10, 0x20

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/common/cache/LocalCache;->segmentShift:I

    .line 279
    add-int/lit8 v12, v9, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/common/cache/LocalCache;->segmentMask:I

    .line 281
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/common/cache/LocalCache;->newSegmentArray(I)[Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    .line 283
    div-int v8, v3, v9

    .line 284
    .local v8, "segmentCapacity":I
    mul-int v12, v8, v9

    if-ge v12, v3, :cond_108

    .line 285
    add-int/lit8 v8, v8, 0x1

    .line 288
    :cond_108
    const/4 v11, 0x1

    .line 289
    .local v11, "segmentSize":I
    :goto_109
    if-ge v11, v8, :cond_10e

    .line 290
    shl-int/lit8 v11, v11, 0x1

    goto :goto_109

    .line 293
    :cond_10e
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v12

    if-eqz v12, :cond_14e

    .line 295
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/common/cache/LocalCache;->maxWeight:J

    int-to-long v14, v9

    div-long/2addr v12, v14

    const-wide/16 v14, 0x1

    add-long v4, v12, v14

    .line 296
    .local v4, "maxSegmentWeight":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/common/cache/LocalCache;->maxWeight:J

    int-to-long v14, v9

    rem-long v6, v12, v14

    .line 297
    .local v6, "remainder":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_126
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v12, v12

    if-ge v2, v12, :cond_171

    .line 298
    int-to-long v12, v2

    cmp-long v12, v12, v6

    if-nez v12, :cond_135

    .line 299
    const-wide/16 v12, 0x1

    sub-long/2addr v4, v12

    .line 301
    :cond_135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getStatsCounterSupplier()Lcom/google/common/base/Supplier;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/common/cache/AbstractCache$StatsCounter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v5, v12}, Lcom/google/common/cache/LocalCache;->createSegment(IJLcom/google/common/cache/AbstractCache$StatsCounter;)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v12

    aput-object v12, v13, v2

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_126

    .line 305
    .end local v2    # "i":I
    .end local v4    # "maxSegmentWeight":J
    .end local v6    # "remainder":J
    :cond_14e
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_14f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v12, v12

    if-ge v2, v12, :cond_171

    .line 306
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    const-wide/16 v14, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getStatsCounterSupplier()Lcom/google/common/base/Supplier;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/common/cache/AbstractCache$StatsCounter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15, v12}, Lcom/google/common/cache/LocalCache;->createSegment(IJLcom/google/common/cache/AbstractCache$StatsCounter;)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v12

    aput-object v12, v13, v2

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_14f

    .line 310
    :cond_171
    return-void
.end method

.method static synthetic access$200(Ljava/util/Collection;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Ljava/util/Collection;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/google/common/cache/LocalCache;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static connectAccessOrder(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1930
    .local p0, "previous":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setNextInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1931
    invoke-interface {p1, p0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setPreviousInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1932
    return-void
.end method

.method static connectWriteOrder(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1943
    .local p0, "previous":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setNextInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1944
    invoke-interface {p1, p0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setPreviousInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1945
    return-void
.end method

.method static discardingQueue()Ljava/util/Queue;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1063
    sget-object v0, Lcom/google/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-object v0
.end method

.method static nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1027
    sget-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    return-object v0
.end method

.method static nullifyAccessOrder(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1936
    .local p0, "nulled":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 1937
    .local v0, "nullEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setNextInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1938
    invoke-interface {p0, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setPreviousInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1939
    return-void
.end method

.method static nullifyWriteOrder(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1949
    .local p0, "nulled":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 1950
    .local v0, "nullEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setNextInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1951
    invoke-interface {p0, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setPreviousInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1952
    return-void
.end method

.method static rehash(I)I
    .registers 3
    .param p0, "h"    # I

    .prologue
    .line 1805
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 1806
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 1807
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 1808
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 1809
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 1810
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private static toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 4590
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4591
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 4592
    return-object v0
.end method

.method static unset()Lcom/google/common/cache/LocalCache$ValueReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 740
    sget-object v0, Lcom/google/common/cache/LocalCache;->UNSET:Lcom/google/common/cache/LocalCache$ValueReference;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .registers 5

    .prologue
    .line 3968
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    .local v0, "arr$":[Lcom/google/common/cache/LocalCache$Segment;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 3969
    .local v3, "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<**>;"
    invoke-virtual {v3}, Lcom/google/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3968
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3971
    .end local v3    # "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<**>;"
    :cond_e
    return-void
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 4321
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    .local v0, "arr$":[Lcom/google/common/cache/LocalCache$Segment;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 4322
    .local v3, "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {v3}, Lcom/google/common/cache/LocalCache$Segment;->clear()V

    .line 4321
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4324
    .end local v3    # "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :cond_e
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4212
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_4

    .line 4213
    const/4 v1, 0x0

    .line 4216
    :goto_3
    return v1

    .line 4215
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4216
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    goto :goto_3
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 26
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4222
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_5

    .line 4223
    const/16 v21, 0x0

    .line 4256
    :goto_4
    return v21

    .line 4231
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v12

    .line 4232
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    .line 4233
    .local v15, "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const-wide/16 v10, -0x1

    .line 4234
    .local v10, "last":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_16
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ge v6, v0, :cond_75

    .line 4235
    const-wide/16 v16, 0x0

    .line 4236
    .local v16, "sum":J
    move-object v4, v15

    .local v4, "arr$":[Lcom/google/common/cache/LocalCache$Segment;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_21
    if-ge v7, v9, :cond_71

    aget-object v14, v4, v7

    .line 4238
    .local v14, "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget v0, v14, Lcom/google/common/cache/LocalCache$Segment;->count:I

    move/from16 v19, v0

    .line 4240
    .local v19, "unused":I
    iget-object v0, v14, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v18, v0

    .line 4241
    .local v18, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2e
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_63

    .line 4242
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .local v5, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_3e
    if-eqz v5, :cond_60

    .line 4243
    invoke-virtual {v14, v5, v12, v13}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v20

    .line 4244
    .local v20, "v":Ljava/lang/Object;, "TV;"
    if-eqz v20, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5b

    .line 4245
    const/16 v21, 0x1

    goto :goto_4

    .line 4242
    :cond_5b
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v5

    goto :goto_3e

    .line 4241
    .end local v20    # "v":Ljava/lang/Object;, "TV;"
    :cond_60
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 4249
    .end local v5    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_63
    iget v0, v14, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v16, v16, v22

    .line 4236
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 4251
    .end local v8    # "j":I
    .end local v14    # "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v18    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v19    # "unused":I
    :cond_71
    cmp-long v21, v16, v10

    if-nez v21, :cond_78

    .line 4256
    .end local v4    # "arr$":[Lcom/google/common/cache/LocalCache$Segment;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v16    # "sum":J
    :cond_75
    const/16 v21, 0x0

    goto :goto_4

    .line 4254
    .restart local v4    # "arr$":[Lcom/google/common/cache/LocalCache$Segment;
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    .restart local v16    # "sum":J
    :cond_78
    move-wide/from16 v10, v16

    .line 4234
    add-int/lit8 v6, v6, 0x1

    goto :goto_16
.end method

.method copyEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1833
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "original":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "newNext":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    .line 1834
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    return-object v1
.end method

.method createSegment(IJLcom/google/common/cache/AbstractCache$StatsCounter;)Lcom/google/common/cache/LocalCache$Segment;
    .registers 13
    .param p1, "initialCapacity"    # I
    .param p2, "maxSegmentWeight"    # J
    .param p4, "statsCounter"    # Lcom/google/common/cache/AbstractCache$StatsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ")",
            "Lcom/google/common/cache/LocalCache$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1885
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    new-instance v1, Lcom/google/common/cache/LocalCache$Segment;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$Segment;-><init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V

    return-object v1
.end method

.method customWeigher()Z
    .registers 3

    .prologue
    .line 317
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->weigher:Lcom/google/common/cache/Weigher;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4357
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->entrySet:Ljava/util/Set;

    .line 4358
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_5

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_4
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_5
    new-instance v0, Lcom/google/common/cache/LocalCache$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/LocalCache$EntrySet;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->entrySet:Ljava/util/Set;

    goto :goto_4
.end method

.method evictsBySize()Z
    .registers 5

    .prologue
    .line 313
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->maxWeight:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method expires()Z
    .registers 2

    .prologue
    .line 321
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method expiresAfterAccess()Z
    .registers 5

    .prologue
    .line 329
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method expiresAfterWrite()Z
    .registers 5

    .prologue
    .line 325
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 4024
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_4

    .line 4025
    const/4 v1, 0x0

    .line 4028
    :goto_3
    return-object v1

    .line 4027
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4028
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3
.end method

.method get(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 4052
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4053
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method getAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 4083
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    const/4 v1, 0x0

    .line 4084
    .local v1, "hits":I
    const/4 v5, 0x0

    .line 4086
    .local v5, "misses":I
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 4087
    .local v7, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v4

    .line 4088
    .local v4, "keysToLoad":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4089
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 4090
    .local v8, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 4091
    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4092
    if-nez v8, :cond_2d

    .line 4093
    add-int/lit8 v5, v5, 0x1

    .line 4094
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 4096
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 4102
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v8    # "value":Ljava/lang/Object;, "TV;"
    :cond_30
    :try_start_30
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_84

    move-result v9

    if-nez v9, :cond_94

    .line 4104
    :try_start_36
    iget-object v9, p0, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, v4, v9}, Lcom/google/common/cache/LocalCache;->loadAll(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;

    move-result-object v6

    .line 4105
    .local v6, "newEntries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4106
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 4107
    .restart local v8    # "value":Ljava/lang/Object;, "TV;"
    if-nez v8, :cond_90

    .line 4108
    new-instance v9, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAll failed to return a value for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_69
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_36 .. :try_end_69} :catch_69
    .catchall {:try_start_36 .. :try_end_69} :catchall_84

    .line 4112
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "newEntries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v8    # "value":Ljava/lang/Object;, "TV;"
    :catch_69
    move-exception v0

    .line 4114
    .local v0, "e":Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    :try_start_6a
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4115
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    add-int/lit8 v5, v5, -0x1

    .line 4116
    iget-object v9, p0, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, v3, v9}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catchall {:try_start_6a .. :try_end_83} :catchall_84

    goto :goto_6e

    .line 4122
    .end local v0    # "e":Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :catchall_84
    move-exception v9

    iget-object v10, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v10, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 4123
    iget-object v10, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v10, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    throw v9

    .line 4110
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v6    # "newEntries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local v8    # "value":Ljava/lang/Object;, "TV;"
    :cond_90
    :try_start_90
    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_90 .. :try_end_93} :catch_69
    .catchall {:try_start_90 .. :try_end_93} :catchall_84

    goto :goto_40

    .line 4120
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "newEntries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v8    # "value":Ljava/lang/Object;, "TV;"
    :cond_94
    :try_start_94
    invoke-static {v7}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_84

    move-result-object v9

    .line 4122
    iget-object v10, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v10, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 4123
    iget-object v10, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v10, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    return-object v9
.end method

.method getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4061
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v1, 0x0

    .line 4062
    .local v1, "hits":I
    const/4 v4, 0x0

    .line 4064
    .local v4, "misses":I
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 4065
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4066
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 4067
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-nez v6, :cond_1d

    .line 4068
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 4072
    :cond_1d
    move-object v0, v3

    .line 4073
    .local v0, "castKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4074
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4077
    .end local v0    # "castKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "key":Ljava/lang/Object;
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_24
    iget-object v7, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v7, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 4078
    iget-object v7, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v7, v4}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 4079
    invoke-static {v5}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v7

    return-object v7
.end method

.method getEntry(Ljava/lang/Object;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4197
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_4

    .line 4198
    const/4 v1, 0x0

    .line 4201
    :goto_3
    return-object v1

    .line 4200
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4201
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    goto :goto_3
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    const/4 v3, 0x1

    .line 4033
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4034
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 4035
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_19

    .line 4036
    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 4040
    :goto_18
    return-object v1

    .line 4038
    :cond_19
    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    goto :goto_18
.end method

.method getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;
    .registers 8
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 1896
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    move-object v0, v1

    .line 1907
    :cond_8
    :goto_8
    return-object v0

    .line 1899
    :cond_9
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1900
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_15

    move-object v0, v1

    .line 1901
    goto :goto_8

    .line 1904
    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v0, v1

    .line 1905
    goto :goto_8
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 4047
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4048
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_7

    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    :goto_6
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;, "TV;"
    :cond_7
    move-object v0, p2

    goto :goto_6
.end method

.method getOrLoad(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 4057
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method hash(Ljava/lang/Object;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1848
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v1, p1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1849
    .local v0, "h":I
    invoke-static {v0}, Lcom/google/common/cache/LocalCache;->rehash(I)I

    move-result v1

    return v1
.end method

.method invalidateAll(Ljava/lang/Iterable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4328
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4329
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 4331
    .end local v1    # "key":Ljava/lang/Object;
    :cond_12
    return-void
.end method

.method public isEmpty()Z
    .registers 11

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 3984
    const-wide/16 v2, 0x0

    .line 3985
    .local v2, "sum":J
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    .line 3986
    .local v1, "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v5, v1

    if-ge v0, v5, :cond_1b

    .line 3987
    aget-object v5, v1, v0

    iget v5, v5, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v5, :cond_12

    .line 4004
    :cond_11
    :goto_11
    return v4

    .line 3990
    :cond_12
    aget-object v5, v1, v0

    iget v5, v5, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 3986
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3993
    :cond_1b
    cmp-long v5, v2, v8

    if-eqz v5, :cond_36

    .line 3994
    const/4 v0, 0x0

    :goto_20
    array-length v5, v1

    if-ge v0, v5, :cond_32

    .line 3995
    aget-object v5, v1, v0

    iget v5, v5, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-nez v5, :cond_11

    .line 3998
    aget-object v5, v1, v0

    iget v5, v5, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v6, v5

    sub-long/2addr v2, v6

    .line 3994
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 4000
    :cond_32
    cmp-long v5, v2, v8

    if-nez v5, :cond_11

    .line 4004
    :cond_36
    const/4 v4, 0x1

    goto :goto_11
.end method

.method isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z
    .registers 10
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const/4 v0, 0x1

    .line 1916
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getAccessTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_17

    .line 1923
    :cond_16
    :goto_16
    return v0

    .line 1920
    :cond_17
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_16

    .line 1923
    :cond_29
    const/4 v0, 0x0

    goto :goto_16
.end method

.method isLive(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z
    .registers 6
    .param p2, "now"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .line 1869
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4338
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->keySet:Ljava/util/Set;

    .line 4339
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_5

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_4
    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_5
    new-instance v0, Lcom/google/common/cache/LocalCache$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/LocalCache$KeySet;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->keySet:Ljava/util/Set;

    goto :goto_4
.end method

.method loadAll(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 4134
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-static/range {p2 .. p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4135
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4136
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v9

    .line 4138
    .local v9, "stopwatch":Lcom/google/common/base/Stopwatch;
    const/4 v10, 0x0

    .line 4141
    .local v10, "success":Z
    :try_start_b
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheLoader;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    :try_end_12
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_b .. :try_end_12} :catch_4e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_12} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_12} :catch_70
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_77
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_12} :catch_7e
    .catchall {:try_start_b .. :try_end_12} :catchall_51

    move-result-object v6

    .line 4142
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v8, v6

    .line 4143
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v10, 0x1

    .line 4157
    if-nez v10, :cond_24

    .line 4158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v13}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v14

    invoke-interface {v12, v14, v15}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 4162
    :cond_24
    if-nez v8, :cond_85

    .line 4163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v13}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v14

    invoke-interface {v12, v14, v15}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 4164
    new-instance v12, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " returned null map from loadAll"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 4144
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catch_4e
    move-exception v2

    .line 4145
    .local v2, "e":Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    const/4 v10, 0x1

    .line 4146
    :try_start_50
    throw v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    .line 4157
    .end local v2    # "e":Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    :catchall_51
    move-exception v12

    if-nez v10, :cond_61

    .line 4158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v14}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v14

    invoke-interface {v13, v14, v15}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    :cond_61
    throw v12

    .line 4147
    :catch_62
    move-exception v2

    .line 4148
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    .line 4149
    new-instance v12, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v12, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 4150
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_70
    move-exception v2

    .line 4151
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v12, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v12, v2}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 4152
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_77
    move-exception v2

    .line 4153
    .local v2, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v12, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 4154
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_7e
    move-exception v2

    .line 4155
    .local v2, "e":Ljava/lang/Error;
    new-instance v12, Lcom/google/common/util/concurrent/ExecutionError;

    invoke-direct {v12, v2}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v12
    :try_end_85
    .catchall {:try_start_63 .. :try_end_85} :catchall_51

    .line 4167
    .end local v2    # "e":Ljava/lang/Error;
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_85
    invoke-virtual {v9}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 4169
    const/4 v7, 0x0

    .line 4170
    .local v7, "nullsPresent":Z
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_91
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4171
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 4172
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 4173
    .local v11, "value":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_a9

    if-nez v11, :cond_ab

    .line 4175
    :cond_a9
    const/4 v7, 0x1

    goto :goto_91

    .line 4177
    :cond_ab
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 4181
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v11    # "value":Ljava/lang/Object;, "TV;"
    :cond_b1
    if-eqz v7, :cond_db

    .line 4182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v13}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v14

    invoke-interface {v12, v14, v15}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 4183
    new-instance v12, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " returned null keys or values from loadAll"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 4187
    :cond_db
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v13}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v14

    invoke-interface {v12, v14, v15}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 4188
    return-object v8
.end method

.method longSize()J
    .registers 7

    .prologue
    .line 4008
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    .line 4009
    .local v1, "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const-wide/16 v2, 0x0

    .line 4010
    .local v2, "sum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v4, v1

    if-ge v0, v4, :cond_16

    .line 4011
    const/4 v4, 0x0

    aget-object v5, v1, v0

    iget v5, v5, Lcom/google/common/cache/LocalCache$Segment;->count:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 4010
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4013
    :cond_16
    return-wide v2
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 6
    .param p2, "hash"    # I
    .param p3    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1818
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v0

    .line 1819
    .local v0, "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 1821
    :try_start_7
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    move-result-object v1

    .line 1823
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    return-object v1

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v1
.end method

.method final newSegmentArray(I)[Lcom/google/common/cache/LocalCache$Segment;
    .registers 3
    .param p1, "ssize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/cache/LocalCache$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1972
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    new-array v0, p1, [Lcom/google/common/cache/LocalCache$Segment;

    return-object v0
.end method

.method newValueReference(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ValueReference;
    .registers 8
    .param p3, "weight"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;TV;I)",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1843
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    .line 1844
    .local v0, "hash":I
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, p3}, Lcom/google/common/cache/LocalCache$Strength;->referenceValue(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    return-object v1
.end method

.method processPendingNotifications()V
    .registers 6

    .prologue
    .line 1961
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/RemovalNotification;

    .local v1, "notification":Lcom/google/common/cache/RemovalNotification;, "Lcom/google/common/cache/RemovalNotification<TK;TV;>;"
    if-eqz v1, :cond_1b

    .line 1963
    :try_start_a
    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->removalListener:Lcom/google/common/cache/RemovalListener;

    invoke-interface {v2, v1}, Lcom/google/common/cache/RemovalListener;->onRemoval(Lcom/google/common/cache/RemovalNotification;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_0

    .line 1964
    :catch_10
    move-exception v0

    .line 1965
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/google/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception thrown by removal listener"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1968
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1b
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4261
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4262
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4263
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4264
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4277
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
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

    .line 4278
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 4280
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4269
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4270
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4271
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4272
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method reclaimKey(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1859
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    .line 1860
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->reclaimKey(Lcom/google/common/cache/LocalCache$ReferenceEntry;I)Z

    .line 1861
    return-void
.end method

.method reclaimValue(Lcom/google/common/cache/LocalCache$ValueReference;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1853
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ValueReference;->getEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 1854
    .local v0, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    .line 1855
    .local v1, "hash":I
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p1}, Lcom/google/common/cache/LocalCache$Segment;->reclaimValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;)Z

    .line 1856
    return-void
.end method

.method recordsAccess()Z
    .registers 2

    .prologue
    .line 349
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    return v0
.end method

.method recordsTime()Z
    .registers 2

    .prologue
    .line 353
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method recordsWrite()Z
    .registers 2

    .prologue
    .line 345
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->refreshes()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method refresh(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 4205
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4206
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    .line 4207
    return-void
.end method

.method refreshes()Z
    .registers 5

    .prologue
    .line 333
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->refreshNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 4284
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_4

    .line 4285
    const/4 v1, 0x0

    .line 4288
    :goto_3
    return-object v1

    .line 4287
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4288
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4293
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 4294
    :cond_4
    const/4 v1, 0x0

    .line 4297
    :goto_5
    return v1

    .line 4296
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4297
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4313
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4314
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4315
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4316
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 4302
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4303
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4304
    if-nez p2, :cond_a

    .line 4305
    const/4 v1, 0x0

    .line 4308
    :goto_9
    return v1

    .line 4307
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4308
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_9
.end method

.method segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;
    .registers 5
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/LocalCache$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1880
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    iget v1, p0, Lcom/google/common/cache/LocalCache;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/cache/LocalCache;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 4018
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->longSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method usesAccessEntries()Z
    .registers 2

    .prologue
    .line 361
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method usesAccessQueue()Z
    .registers 2

    .prologue
    .line 337
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method usesKeyReferences()Z
    .registers 3

    .prologue
    .line 365
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method usesValueReferences()Z
    .registers 3

    .prologue
    .line 369
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method usesWriteEntries()Z
    .registers 2

    .prologue
    .line 357
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->usesWriteQueue()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method usesWriteQueue()Z
    .registers 2

    .prologue
    .line 341
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 4347
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->values:Ljava/util/Collection;

    .line 4348
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_5

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_4
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_5
    new-instance v0, Lcom/google/common/cache/LocalCache$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/LocalCache$Values;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->values:Ljava/util/Collection;

    goto :goto_4
.end method
