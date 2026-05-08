.class public final Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCacheEvictor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private currentSize:J

.field private final leastRecentlyUsed:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final maxBytes:J


# direct methods
.method public static synthetic $r8$lambda$fGGQpb4lm4rCLKn4-zylNcQiqeo(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->compare(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(J)V
    .registers 5
    .param p1, "maxBytes"    # J

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->maxBytes:J

    .line 39
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    .line 40
    return-void
.end method

.method private static compare(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I
    .registers 9
    .param p0, "lhs"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .param p1, "rhs"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 85
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastTouchTimestamp:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastTouchTimestamp:J

    sub-long/2addr v0, v2

    .line 86
    .local v0, "lastTouchTimestampDelta":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->compareTo(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I

    move-result v2

    return v2

    .line 90
    :cond_10
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastTouchTimestamp:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastTouchTimestamp:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1a

    const/4 v2, -0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x1

    :goto_1b
    return v2
.end method

.method private evictCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V
    .registers 9
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "requiredSpace"    # J

    .line 79
    nop

    :goto_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->maxBytes:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    goto :goto_1

    .line 82
    :cond_1e
    return-void
.end method


# virtual methods
.method public onCacheInitialized()V
    .registers 1

    .line 50
    return-void
.end method

.method public onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 7
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 62
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    .line 63
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->evictCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    .line 64
    return-void
.end method

.method public onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 7
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    .line 70
    return-void
.end method

.method public onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 4
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "oldSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .param p3, "newSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 75
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 76
    return-void
.end method

.method public onStartFile(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .registers 10
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "position"    # J
    .param p5, "length"    # J

    .line 54
    const-wide/16 v0, -0x1

    cmp-long v2, p5, v0

    if-eqz v2, :cond_9

    .line 55
    invoke-direct {p0, p1, p5, p6}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->evictCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    .line 57
    :cond_9
    return-void
.end method

.method public requiresCacheSpanTouches()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method
