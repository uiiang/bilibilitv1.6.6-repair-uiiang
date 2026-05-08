.class public final Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;
.super Ljava/lang/Object;
.source "CachedRegionTracker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CACHED_TO_END:I = -0x2

.field public static final NOT_CACHED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CachedRegionTracker"


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

.field private final lookupRegion:Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

.field private final regions:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/ChunkIndex;)V
    .registers 7
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "cacheKey"    # Ljava/lang/String;
    .param p3, "chunkIndex"    # Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 55
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 57
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->lookupRegion:Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 60
    monitor-enter p0

    .line 61
    :try_start_1a
    invoke-interface {p1, p2, p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->addListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 64
    .local v0, "cacheSpans":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    .local v1, "spanIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 67
    .local v2, "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->mergeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 68
    .end local v2    # "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    goto :goto_22

    .line 69
    .end local v0    # "cacheSpans":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    .end local v1    # "spanIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    :cond_32
    monitor-exit p0

    .line 70
    return-void

    .line 69
    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_34

    goto :goto_38

    :goto_37
    throw v0

    :goto_38
    goto :goto_37
.end method

.method private mergeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 13
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 146
    new-instance v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 147
    .local v0, "newRegion":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 148
    .local v1, "floorRegion":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 149
    .local v2, "ceilingRegion":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regionsConnect(Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;)Z

    move-result v3

    .line 150
    .local v3, "floorConnects":Z
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regionsConnect(Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;)Z

    move-result v4

    .line 152
    .local v4, "ceilingConnects":Z
    if-eqz v4, :cond_44

    .line 153
    if-eqz v3, :cond_31

    .line 155
    iget-wide v5, v2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v5, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 156
    iget v5, v2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput v5, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    goto :goto_3e

    .line 159
    :cond_31
    iget-wide v5, v2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v5, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 160
    iget v5, v2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput v5, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 161
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v5, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 163
    :goto_3e
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v5, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_80

    .line 164
    :cond_44
    if-eqz v3, :cond_68

    .line 166
    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v5, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 167
    iget v5, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 168
    .local v5, "index":I
    :goto_4c
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_65

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    add-int/lit8 v7, v5, 0x1

    aget-wide v7, v6, v7

    iget-wide v9, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long v6, v7, v9

    if-gtz v6, :cond_65

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 172
    :cond_65
    iput v5, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 173
    .end local v5    # "index":I
    goto :goto_80

    .line 175
    :cond_68
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    .line 176
    .restart local v5    # "index":I
    if-gez v5, :cond_78

    neg-int v6, v5

    add-int/lit8 v6, v6, -0x2

    goto :goto_79

    :cond_78
    move v6, v5

    :goto_79
    iput v6, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 177
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v5    # "index":I
    :goto_80
    return-void
.end method

.method private regionsConnect(Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;)Z
    .registers 8
    .param p1, "lower"    # Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    .param p2, "upper"    # Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 182
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public declared-synchronized getRegionEndTimeMs(J)I
    .registers 12
    .param p1, "byteOffset"    # J

    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->lookupRegion:Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    iput-wide p1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->lookupRegion:Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 89
    .local v0, "floorRegion":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    const/4 v1, -0x1

    if-eqz v0, :cond_65

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long v4, p1, v2

    if-gtz v4, :cond_65

    iget v2, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    if-ne v2, v1, :cond_1d

    goto :goto_65

    .line 94
    :cond_1d
    iget v1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 95
    .local v1, "index":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3e

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    aget-wide v5, v4, v1

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->sizes:[I

    aget v4, v4, v1
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_67

    int-to-long v7, v4

    add-long/2addr v5, v7

    cmp-long v4, v2, v5

    if-nez v4, :cond_3e

    .line 97
    monitor-exit p0

    const/4 v2, -0x2

    return v2

    .line 99
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;
    :cond_3e
    :try_start_3e
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->durationsUs:[J

    aget-wide v3, v2, v1

    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    aget-wide v7, v2, v1

    sub-long/2addr v5, v7

    mul-long v3, v3, v5

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->sizes:[I

    aget v2, v2, v1

    int-to-long v5, v2

    div-long/2addr v3, v5

    move-wide v2, v3

    .line 102
    .local v2, "segmentFractionUs":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    aget-wide v5, v4, v1

    add-long/2addr v5, v2

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7
    :try_end_62
    .catchall {:try_start_3e .. :try_end_62} :catchall_67

    long-to-int v4, v5

    monitor-exit p0

    return v4

    .line 92
    .end local v1    # "index":I
    .end local v2    # "segmentFractionUs":J
    :cond_65
    :goto_65
    monitor-exit p0

    return v1

    .line 86
    .end local v0    # "floorRegion":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    .end local p1    # "byteOffset":J
    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 3
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    monitor-enter p0

    .line 107
    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->mergeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 108
    monitor-exit p0

    return-void

    .line 106
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;
    .end local p1    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .end local p2    # "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 10
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    monitor-enter p0

    .line 112
    :try_start_1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    iget-wide v1, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v3, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v5, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 115
    .local v0, "removedRegion":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 116
    .local v1, "floorRegion":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    if-nez v1, :cond_20

    .line 117
    const-string v2, "CachedRegionTracker"

    const-string v3, "Removed a span we were not aware of"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_6d

    .line 118
    monitor-exit p0

    return-void

    .line 122
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 125
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_4e

    .line 126
    new-instance v2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 128
    .local v2, "newFloorRegion":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    iget-wide v4, v2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 129
    .local v3, "index":I
    if-gez v3, :cond_46

    neg-int v4, v3

    add-int/lit8 v4, v4, -0x2

    goto :goto_47

    :cond_46
    move v4, v3

    :goto_47
    iput v4, v2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 130
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v4, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v2    # "newFloorRegion":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    .end local v3    # "index":I
    :cond_4e
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_6b

    .line 134
    new-instance v2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 135
    .local v2, "newCeilingRegion":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    iget v3, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput v3, v2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 136
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catchall {:try_start_20 .. :try_end_6b} :catchall_6d

    .line 138
    .end local v2    # "newCeilingRegion":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    :cond_6b
    monitor-exit p0

    return-void

    .line 111
    .end local v0    # "removedRegion":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    .end local v1    # "floorRegion":Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    .end local p1    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .end local p2    # "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :catchall_6d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 4
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "oldSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .param p3, "newSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 143
    return-void
.end method

.method public release()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)V

    .line 74
    return-void
.end method
