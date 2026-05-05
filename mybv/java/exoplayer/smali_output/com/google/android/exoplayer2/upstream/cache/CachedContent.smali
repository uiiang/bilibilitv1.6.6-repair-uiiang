.class final Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
.super Ljava/lang/Object;
.source "CachedContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CachedContent"


# instance fields
.field private final cachedSpans:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public final key:Ljava/lang/String;

.field private final lockedRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->EMPTY:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;)V

    .line 64
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "metadata"    # Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    .line 68
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 70
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    .line 72
    return-void
.end method


# virtual methods
.method public addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .registers 3
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public applyMetadataMutations(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)Z
    .registers 4
    .param p1, "mutations"    # Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 86
    .local v0, "oldMetadata":Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->copyWithMutationsApplied(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 87
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 274
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 275
    return v0

    .line 277
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3c

    .line 280
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 281
    .local v2, "that":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    iget v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    iget v4, v2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    .line 282
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 283
    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 284
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    .line 281
    :goto_3b
    return v0

    .line 278
    .end local v2    # "that":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    :cond_3c
    :goto_3c
    return v1
.end method

.method public getCachedBytesLength(JJ)J
    .registers 16
    .param p1, "position"    # J
    .param p3, "length"    # J

    .line 188
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    :goto_b
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 189
    cmp-long v4, p3, v2

    if-ltz v4, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 190
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getSpan(JJ)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 191
    .local v0, "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->isHoleSpan()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 193
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->isOpenEnded()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_2f

    :cond_2d
    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    :goto_2f
    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    neg-long v1, v1

    return-wide v1

    .line 195
    :cond_35
    add-long v4, p1, p3

    .line 196
    .local v4, "queryEndPosition":J
    cmp-long v6, v4, v2

    if-gez v6, :cond_40

    .line 198
    const-wide v4, 0x7fffffffffffffffL

    .line 200
    :cond_40
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v2, v6

    .line 201
    .local v2, "currentEndPosition":J
    cmp-long v6, v2, v4

    if-gez v6, :cond_75

    .line 202
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v6, v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 203
    .local v6, "next":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-wide v7, v6, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    cmp-long v9, v7, v2

    if-lez v9, :cond_66

    .line 205
    goto :goto_75

    .line 209
    :cond_66
    iget-wide v7, v6, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v9, v6, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v7, v9

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 210
    cmp-long v7, v2, v4

    if-ltz v7, :cond_74

    .line 212
    goto :goto_75

    .line 214
    .end local v6    # "next":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_74
    goto :goto_53

    .line 216
    :cond_75
    :goto_75
    sub-long v6, v2, p1

    invoke-static {v6, v7, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    return-wide v6
.end method

.method public getMetadata()Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    return-object v0
.end method

.method public getSpan(JJ)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 13
    .param p1, "position"    # J
    .param p3, "length"    # J

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createLookup(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 164
    .local v0, "lookupSpan":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 165
    .local v1, "floorSpan":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    if-eqz v1, :cond_1a

    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v2, v4

    cmp-long v4, v2, p1

    if-lez v4, :cond_1a

    .line 166
    return-object v1

    .line 168
    :cond_1a
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 169
    .local v2, "ceilSpan":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    if-eqz v2, :cond_34

    .line 170
    iget-wide v3, v2, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    sub-long/2addr v3, p1

    .line 171
    .local v3, "holeLength":J
    const-wide/16 v5, -0x1

    cmp-long v7, p3, v5

    if-nez v7, :cond_2f

    move-wide v5, v3

    goto :goto_33

    :cond_2f
    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_33
    move-wide p3, v5

    .line 173
    .end local v3    # "holeLength":J
    :cond_34
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v3, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createHole(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v3

    return-object v3
.end method

.method public getSpans()Ljava/util/TreeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 266
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    .line 267
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 268
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 269
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFullyLocked(JJ)Z
    .registers 7
    .param p1, "position"    # J
    .param p3, "length"    # J

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 104
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->contains(JJ)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 105
    const/4 v1, 0x1

    return v1

    .line 103
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public isFullyUnlocked()Z
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lockRange(JJ)Z
    .registers 7
    .param p1, "position"    # J
    .param p3, "length"    # J

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 120
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->intersects(JJ)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 121
    const/4 v1, 0x0

    return v1

    .line 119
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "i":I
    :cond_1c
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;-><init>(JJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)Z
    .registers 3
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 256
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    if-eqz v0, :cond_11

    .line 257
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 259
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public setLastTouchTimestamp(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;JZ)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 15
    .param p1, "cacheSpan"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .param p2, "lastTouchTimestamp"    # J
    .param p4, "updateFile"    # Z

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 231
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 232
    .local v0, "file":Ljava/io/File;
    if-eqz p4, :cond_52

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 234
    .local v1, "directory":Ljava/io/File;
    iget-wide v8, p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    .line 235
    .local v8, "position":J
    iget v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    move-object v2, v1

    move-wide v4, v8

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v2

    .line 236
    .local v2, "newFile":Ljava/io/File;
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 237
    move-object v0, v2

    goto :goto_52

    .line 239
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to rename "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CachedContent"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v1    # "directory":Ljava/io/File;
    .end local v2    # "newFile":Ljava/io/File;
    .end local v8    # "position":J
    :cond_52
    :goto_52
    nop

    .line 243
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->copyWithFileAndLastTouchTimestamp(Ljava/io/File;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    .line 244
    .local v1, "newCacheSpan":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 245
    return-object v1
.end method

.method public unlockRange(J)V
    .registers 7
    .param p1, "position"    # J

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 136
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->position:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_1d

    .line 137
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->lockedRanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 138
    return-void

    .line 135
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "i":I
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_27

    :goto_26
    throw v0

    :goto_27
    goto :goto_26
.end method
