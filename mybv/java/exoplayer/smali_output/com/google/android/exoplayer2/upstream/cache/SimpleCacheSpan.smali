.class final Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
.super Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
.source "SimpleCacheSpan.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CACHE_FILE_PATTERN_V1:Ljava/util/regex/Pattern;

.field private static final CACHE_FILE_PATTERN_V2:Ljava/util/regex/Pattern;

.field private static final CACHE_FILE_PATTERN_V3:Ljava/util/regex/Pattern;

.field static final COMMON_SUFFIX:Ljava/lang/String; = ".exo"

.field private static final SUFFIX:Ljava/lang/String; = ".v3.exo"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    nop

    .line 41
    const-string v0, "^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->CACHE_FILE_PATTERN_V1:Ljava/util/regex/Pattern;

    .line 42
    nop

    .line 43
    const-string v0, "^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->CACHE_FILE_PATTERN_V2:Ljava/util/regex/Pattern;

    .line 44
    nop

    .line 45
    const-string v0, "^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->CACHE_FILE_PATTERN_V3:Ljava/util/regex/Pattern;

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J
    .param p6, "lastTouchTimestamp"    # J
    .param p8, "file"    # Ljava/io/File;

    .line 199
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 200
    return-void
.end method

.method public static createCacheEntry(Ljava/io/File;JJLcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 28
    .param p0, "file"    # Ljava/io/File;
    .param p1, "length"    # J
    .param p3, "lastTouchTimestamp"    # J
    .param p5, "index"    # Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    .line 116
    move-object/from16 v0, p5

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "name":Ljava/lang/String;
    const-string v2, ".v3.exo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1e

    .line 118
    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->upgradeFile(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)Ljava/io/File;

    move-result-object v4

    .line 119
    .local v4, "upgradedFile":Ljava/io/File;
    if-nez v4, :cond_18

    .line 120
    return-object v3

    .line 122
    :cond_18
    move-object v2, v4

    .line 123
    .end local p0    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    .line 117
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "upgradedFile":Ljava/io/File;
    .restart local p0    # "file":Ljava/io/File;
    :cond_1e
    move-object/from16 v2, p0

    .line 126
    .end local p0    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :goto_20
    sget-object v4, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->CACHE_FILE_PATTERN_V3:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 127
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 128
    return-object v3

    .line 131
    :cond_2d
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 132
    .local v14, "id":I
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getKeyForId(I)Ljava/lang/String;

    move-result-object v15

    .line 133
    .local v15, "key":Ljava/lang/String;
    if-nez v15, :cond_43

    .line 134
    return-object v3

    .line 137
    :cond_43
    const-wide/16 v5, -0x1

    cmp-long v7, p1, v5

    if-nez v7, :cond_50

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    move-wide/from16 v16, v5

    .end local p1    # "length":J
    .local v5, "length":J
    goto :goto_52

    .line 137
    .end local v5    # "length":J
    .restart local p1    # "length":J
    :cond_50
    move-wide/from16 v16, p1

    .line 140
    .end local p1    # "length":J
    .local v16, "length":J
    :goto_52
    const-wide/16 v5, 0x0

    cmp-long v7, v16, v5

    if-nez v7, :cond_59

    .line 141
    return-object v3

    .line 144
    :cond_59
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 145
    .local v18, "position":J
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p3, v5

    if-nez v3, :cond_83

    .line 146
    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-wide/from16 v20, v5

    .end local p3    # "lastTouchTimestamp":J
    .local v5, "lastTouchTimestamp":J
    goto :goto_85

    .line 145
    .end local v5    # "lastTouchTimestamp":J
    .restart local p3    # "lastTouchTimestamp":J
    :cond_83
    move-wide/from16 v20, p3

    .line 148
    .end local p3    # "lastTouchTimestamp":J
    .local v20, "lastTouchTimestamp":J
    :goto_85
    new-instance v3, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-object v5, v3

    move-object v6, v15

    move-wide/from16 v7, v18

    move-wide/from16 v9, v16

    move-wide/from16 v11, v20

    move-object v13, v2

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v3
.end method

.method public static createCacheEntry(Ljava/io/File;JLcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "length"    # J
    .param p3, "index"    # Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    .line 97
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;JJLcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    return-object v0
.end method

.method public static createHole(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 15
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "position"    # J
    .param p3, "length"    # J

    .line 81
    new-instance v9, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v9
.end method

.method public static createLookup(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 13
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "position"    # J

    .line 69
    new-instance v9, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    const-wide/16 v4, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v9
.end method

.method public static getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;
    .registers 9
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "id"    # I
    .param p2, "position"    # J
    .param p4, "timestamp"    # J

    .line 58
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".v3.exo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static upgradeFile(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)Ljava/io/File;
    .registers 13
    .param p0, "file"    # Ljava/io/File;
    .param p1, "index"    # Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "filename":Ljava/lang/String;
    sget-object v2, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->CACHE_FILE_PATTERN_V2:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 164
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_21

    .line 165
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->unescapeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 167
    :cond_21
    sget-object v3, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->CACHE_FILE_PATTERN_V1:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 169
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 173
    :cond_38
    :goto_38
    const/4 v3, 0x0

    if-nez v0, :cond_3c

    .line 174
    return-object v3

    .line 177
    :cond_3c
    nop

    .line 179
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/io/File;

    .line 180
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->assignIdForKey(Ljava/lang/String;)I

    move-result v6

    .line 181
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 182
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 178
    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v4

    .line 183
    .local v4, "newCacheFile":Ljava/io/File;
    invoke-virtual {p0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_75

    .line 184
    return-object v3

    .line 186
    :cond_75
    return-object v4
.end method


# virtual methods
.method public copyWithFileAndLastTouchTimestamp(Ljava/io/File;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 14
    .param p1, "file"    # Ljava/io/File;
    .param p2, "lastTouchTimestamp"    # J

    .line 211
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->isCached:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 212
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    move-object v1, v0

    move-wide v7, p2

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0
.end method
