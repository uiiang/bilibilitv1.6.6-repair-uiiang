.class public final Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/Cache;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SUBDIRECTORY_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SimpleCache"

.field private static final UID_FILE_SUFFIX:Ljava/lang/String; = ".uid"

.field private static final lockedCacheDirs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

.field private final evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

.field private final fileIndex:Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;

.field private initializationException:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private released:Z

.field private totalSpace:J

.field private final touchCacheSpans:Z

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedCacheDirs:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V
    .registers 10
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "evictor"    # Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/database/DatabaseProvider;[BZZ)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/database/DatabaseProvider;)V
    .registers 11
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "evictor"    # Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;
    .param p3, "databaseProvider"    # Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 164
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/database/DatabaseProvider;[BZZ)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/database/DatabaseProvider;[BZZ)V
    .registers 14
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "evictor"    # Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;
    .param p3, "databaseProvider"    # Lcom/google/android/exoplayer2/database/DatabaseProvider;
    .param p4, "legacyIndexSecretKey"    # [B
    .param p5, "legacyIndexEncrypt"    # Z
    .param p6, "preferLegacyIndex"    # Z

    .line 199
    new-instance v6, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;-><init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;Ljava/io/File;[BZZ)V

    .line 208
    if-eqz p3, :cond_15

    if-nez p6, :cond_15

    .line 209
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;

    invoke-direct {v0, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;-><init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    goto :goto_16

    .line 210
    :cond_15
    const/4 v0, 0x0

    .line 199
    :goto_16
    invoke-direct {p0, p1, p2, v6, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;)V

    .line 211
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;)V
    .registers 8
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "evictor"    # Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;
    .param p3, "contentIndex"    # Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;
    .param p4, "fileIndex"    # Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockFolder(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 222
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    .line 223
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    .line 224
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    .line 225
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    .line 227
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->random:Ljava/util/Random;

    .line 228
    invoke-interface {p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->requiresCacheSpanTouches()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->touchCacheSpans:Z

    .line 229
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->uid:J

    .line 232
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 233
    .local v0, "conditionVariable":Landroid/os/ConditionVariable;
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;

    const-string v2, "ExoPlayer:SimpleCacheInit"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;-><init>(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 242
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->start()V

    .line 243
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 244
    return-void

    .line 219
    .end local v0    # "conditionVariable":Landroid/os/ConditionVariable;
    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another SimpleCache instance uses the folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 55
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->initialize()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;)Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    return-object v0
.end method

.method private addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .registers 6
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getOrAdd(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    .line 696
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    .line 697
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanAdded(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    .line 698
    return-void
.end method

.method private static createCacheDirectories(Ljava/io/File;)V
    .registers 3
    .param p0, "cacheDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .line 811
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2b

    .line 812
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create cache directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "message":Ljava/lang/String;
    const-string v1, "SimpleCache"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    .end local v0    # "message":Ljava/lang/String;
    :cond_2b
    :goto_2b
    return-void
.end method

.method private static createUid(Ljava/io/File;)J
    .registers 8
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 793
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 794
    .local v0, "uid":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    const-wide/16 v2, 0x0

    goto :goto_16

    :cond_12
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    :goto_16
    move-wide v0, v2

    .line 796
    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, "hexUid":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 798
    .local v3, "hexUidFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 802
    return-wide v0

    .line 800
    :cond_3c
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create UID file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static delete(Ljava/io/File;Lcom/google/android/exoplayer2/database/DatabaseProvider;)V
    .registers 10
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "databaseProvider"    # Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 102
    const-string v0, "Failed to delete file metadata: "

    const-string v1, "SimpleCache"

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 103
    return-void

    .line 106
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 107
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_15

    .line 108
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 109
    return-void

    .line 112
    :cond_15
    if-eqz p1, :cond_53

    .line 115
    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->loadUid([Ljava/io/File;)J

    move-result-wide v3

    .line 116
    .local v3, "uid":J
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_53

    .line 118
    :try_start_21
    invoke-static {p1, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->delete(Lcom/google/android/exoplayer2/database/DatabaseProvider;J)V
    :try_end_24
    .catch Lcom/google/android/exoplayer2/database/DatabaseIOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 121
    goto :goto_3a

    .line 119
    :catch_25
    move-exception v5

    .line 120
    .local v5, "e":Lcom/google/android/exoplayer2/database/DatabaseIOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v5    # "e":Lcom/google/android/exoplayer2/database/DatabaseIOException;
    :goto_3a
    :try_start_3a
    invoke-static {p1, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->delete(Lcom/google/android/exoplayer2/database/DatabaseProvider;J)V
    :try_end_3d
    .catch Lcom/google/android/exoplayer2/database/DatabaseIOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 126
    goto :goto_53

    .line 124
    :catch_3e
    move-exception v5

    .line 125
    .restart local v5    # "e":Lcom/google/android/exoplayer2/database/DatabaseIOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v3    # "uid":J
    .end local v5    # "e":Lcom/google/android/exoplayer2/database/DatabaseIOException;
    :cond_53
    :goto_53
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->recursiveDelete(Ljava/io/File;)V

    .line 131
    return-void
.end method

.method private getSpan(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .line 673
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 674
    .local v0, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    if-nez v0, :cond_d

    .line 675
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createHole(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    return-object v1

    .line 678
    :cond_d
    :goto_d
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getSpan(JJ)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    .line 679
    .local v1, "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->isCached:Z

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_25

    .line 682
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpans()V

    .line 683
    goto :goto_d

    .line 685
    :cond_25
    return-object v1
.end method

.method private initialize()V
    .registers 8

    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    .line 524
    :try_start_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->createCacheDirectories(Ljava/io/File;)V
    :try_end_d
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_8 .. :try_end_d} :catch_e

    .line 528
    goto :goto_12

    .line 525
    :catch_e
    move-exception v0

    .line 526
    .local v0, "e":Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->initializationException:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    .line 527
    return-void

    .line 531
    .end local v0    # "e":Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 532
    .local v0, "files":[Ljava/io/File;
    const-string v1, "SimpleCache"

    if-nez v0, :cond_3c

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to list cache directory files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, "message":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->initializationException:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    .line 536
    return-void

    .line 539
    .end local v2    # "message":Ljava/lang/String;
    :cond_3c
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->loadUid([Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->uid:J

    .line 540
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_72

    .line 542
    :try_start_48
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->createUid(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->uid:J
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_50} :catch_51

    .line 548
    goto :goto_72

    .line 543
    :catch_51
    move-exception v2

    .line 544
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create cache UID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, "message":Ljava/lang/String;
    invoke-static {v1, v3, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 546
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v3, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->initializationException:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    .line 547
    return-void

    .line 552
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "message":Ljava/lang/String;
    :cond_72
    :goto_72
    :try_start_72
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->uid:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->initialize(J)V

    .line 553
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;

    const/4 v3, 0x1

    if-eqz v2, :cond_98

    .line 554
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->uid:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->initialize(J)V

    .line 555
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 556
    .local v2, "fileMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;>;"
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-direct {p0, v4, v3, v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->loadDirectory(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    .line 557
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->removeAll(Ljava/util/Set;)V

    .line 558
    .end local v2    # "fileMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;>;"
    goto :goto_9e

    .line 559
    :cond_98
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->loadDirectory(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_9e} :catch_b1

    .line 566
    :goto_9e
    nop

    .line 568
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removeEmpty()V

    .line 570
    :try_start_a4
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->store()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a9} :catch_aa

    .line 573
    goto :goto_b0

    .line 571
    :catch_aa
    move-exception v2

    .line 572
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Storing index file failed"

    invoke-static {v1, v3, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 574
    .end local v2    # "e":Ljava/io/IOException;
    :goto_b0
    return-void

    .line 561
    :catch_b1
    move-exception v2

    .line 562
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to initialize cache indices: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 563
    .restart local v3    # "message":Ljava/lang/String;
    invoke-static {v1, v3, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v3, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->initializationException:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    .line 565
    return-void
.end method

.method public static declared-synchronized isCacheFolderLocked(Ljava/io/File;)Z
    .registers 4
    .param p0, "cacheFolder"    # Ljava/io/File;

    const-class v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    monitor-enter v0

    .line 88
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedCacheDirs:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return v1

    .line 88
    .end local p0    # "cacheFolder":Ljava/io/File;
    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private loadDirectory(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    .registers 24
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "isRoot"    # Z
    .param p3, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z[",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p4, "fileMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    if-eqz v1, :cond_72

    array-length v3, v1

    if-nez v3, :cond_d

    goto/16 :goto_72

    .line 600
    :cond_d
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_71

    aget-object v12, v1, v5

    .line 601
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 602
    .local v13, "fileName":Ljava/lang/String;
    if-eqz p2, :cond_2b

    const/16 v6, 0x2e

    invoke-virtual {v13, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2b

    .line 603
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    invoke-direct {v0, v12, v4, v6, v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->loadDirectory(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    goto :goto_6e

    .line 605
    :cond_2b
    if-eqz p2, :cond_3c

    .line 606
    invoke-static {v13}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->isIndexFile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6e

    const-string v6, ".uid"

    invoke-virtual {v13, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 608
    goto :goto_6e

    .line 610
    :cond_3c
    const-wide/16 v6, -0x1

    .line 611
    .local v6, "length":J
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 613
    .local v8, "lastTouchTimestamp":J
    if-eqz v2, :cond_4c

    invoke-interface {v2, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;

    goto :goto_4d

    :cond_4c
    const/4 v10, 0x0

    :goto_4d
    move-object v14, v10

    .line 614
    .local v14, "metadata":Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;
    if-eqz v14, :cond_58

    .line 615
    iget-wide v6, v14, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;->length:J

    .line 616
    iget-wide v8, v14, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;->lastTouchTimestamp:J

    move-wide v15, v6

    move-wide/from16 v17, v8

    goto :goto_5b

    .line 614
    :cond_58
    move-wide v15, v6

    move-wide/from16 v17, v8

    .line 619
    .end local v6    # "length":J
    .end local v8    # "lastTouchTimestamp":J
    .local v15, "length":J
    .local v17, "lastTouchTimestamp":J
    :goto_5b
    iget-object v11, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    .line 620
    move-object v6, v12

    move-wide v7, v15

    move-wide/from16 v9, v17

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;JJLcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v6

    .line 621
    .local v6, "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    if-eqz v6, :cond_6b

    .line 622
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    goto :goto_6e

    .line 624
    :cond_6b
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 600
    .end local v6    # "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v14    # "metadata":Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;
    .end local v15    # "length":J
    .end local v17    # "lastTouchTimestamp":J
    :cond_6e
    :goto_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 628
    :cond_71
    return-void

    .line 593
    :cond_72
    :goto_72
    if-nez p2, :cond_77

    .line 596
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 598
    :cond_77
    return-void
.end method

.method private static loadUid([Ljava/io/File;)J
    .registers 8
    .param p0, "files"    # [Ljava/io/File;

    .line 775
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_36

    aget-object v2, p0, v1

    .line 776
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, "fileName":Ljava/lang/String;
    const-string v4, ".uid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 779
    :try_start_12
    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->parseUid(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_16} :catch_17

    return-wide v0

    .line 780
    :catch_17
    move-exception v4

    .line 782
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed UID file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SimpleCache"

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 775
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 787
    :cond_36
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static declared-synchronized lockFolder(Ljava/io/File;)Z
    .registers 4
    .param p0, "cacheDir"    # Ljava/io/File;

    const-class v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    monitor-enter v0

    .line 819
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedCacheDirs:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return v1

    .line 819
    .end local p0    # "cacheDir":Ljava/io/File;
    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private notifySpanAdded(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .registers 5
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 749
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 750
    .local v0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v0, :cond_20

    .line 751
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_20

    .line 752
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 751
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 755
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 756
    return-void
.end method

.method private notifySpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 5
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 739
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 740
    .local v0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v0, :cond_20

    .line 741
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_20

    .line 742
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 741
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 745
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 746
    return-void
.end method

.method private notifySpanTouched(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 6
    .param p1, "oldSpan"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .param p2, "newSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 759
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 760
    .local v0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v0, :cond_20

    .line 761
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_20

    .line 762
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 761
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 765
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 766
    return-void
.end method

.method private static parseUid(Ljava/lang/String;)J
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 806
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private removeSpanInternal(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 7
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 701
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 702
    .local v0, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    if-eqz v0, :cond_4c

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_4c

    .line 705
    :cond_11
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    .line 706
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;

    if-eqz v1, :cond_41

    .line 707
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "fileName":Ljava/lang/String;
    :try_start_22
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->remove(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_28

    .line 714
    goto :goto_41

    .line 710
    :catch_28
    move-exception v2

    .line 713
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove file index entry for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimpleCache"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->maybeRemove(Ljava/lang/String;)V

    .line 717
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 718
    return-void

    .line 703
    :cond_4c
    :goto_4c
    return-void
.end method

.method private removeStaleSpans()V
    .registers 11

    .line 725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v0, "spansToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getAll()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 727
    .local v2, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getSpans()Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 728
    .local v4, "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    iget-object v5, v4, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    iget-wide v7, v4, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_3e

    .line 729
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    .end local v4    # "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :cond_3e
    goto :goto_23

    .line 732
    .end local v2    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    :cond_3f
    goto :goto_f

    .line 733
    :cond_40
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 734
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeSpanInternal(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 736
    .end local v1    # "i":I
    :cond_53
    return-void
.end method

.method private touchSpan(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "span"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 639
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->touchCacheSpans:Z

    if-nez v0, :cond_5

    .line 640
    return-object p2

    .line 642
    :cond_5
    iget-object v0, p2, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "fileName":Ljava/lang/String;
    iget-wide v7, p2, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    .line 644
    .local v7, "length":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 645
    .local v9, "lastTouchTimestamp":J
    const/4 v11, 0x0

    .line 646
    .local v11, "updateFile":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;

    if-eqz v1, :cond_2c

    .line 648
    move-object v2, v0

    move-wide v3, v7

    move-wide v5, v9

    :try_start_1f
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->set(Ljava/lang/String;JJ)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_2b

    .line 649
    :catch_23
    move-exception v1

    .line 650
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "SimpleCache"

    const-string v3, "Failed to update index with new touch timestamp."

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2b
    goto :goto_2d

    .line 655
    :cond_2c
    const/4 v11, 0x1

    .line 657
    :goto_2d
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    .line 658
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v1

    invoke-virtual {v1, p2, v9, v10, v11}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->setLastTouchTimestamp(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;JZ)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    .line 659
    .local v1, "newSpan":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    invoke-direct {p0, p2, v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanTouched(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 660
    return-object v1
.end method

.method private static declared-synchronized unlockFolder(Ljava/io/File;)V
    .registers 4
    .param p0, "cacheDir"    # Ljava/io/File;

    const-class v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    monitor-enter v0

    .line 823
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedCacheDirs:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 824
    monitor-exit v0

    return-void

    .line 822
    .end local p0    # "cacheDir":Ljava/io/File;
    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized addListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 281
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 282
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 285
    .local v0, "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-nez v0, :cond_26

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 287
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :cond_26
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v1

    .line 280
    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "listener":Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mutations"    # Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 503
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 504
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->checkInitialization()V

    .line 506
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_22

    .line 508
    :try_start_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->store()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_1b
    .catchall {:try_start_13 .. :try_end_18} :catchall_22

    .line 511
    nop

    .line 512
    monitor-exit p0

    return-void

    .line 509
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :catch_1b
    move-exception v0

    .line 510
    .local v0, "e":Ljava/io/IOException;
    :try_start_1c
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_22

    .line 502
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "mutations":Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkInitialization()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 252
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->initializationException:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_8

    if-nez v0, :cond_7

    .line 255
    monitor-exit p0

    return-void

    .line 253
    :cond_7
    :try_start_7
    throw v0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_8

    .line 251
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commitFile(Ljava/io/File;J)V
    .registers 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 400
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 401
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_8f

    if-nez v0, :cond_15

    .line 402
    monitor-exit p0

    return-void

    .line 404
    :cond_15
    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-nez v0, :cond_20

    .line 405
    :try_start_1b
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_8f

    .line 406
    monitor-exit p0

    return-void

    .line 409
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    .line 410
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;JLcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 411
    .local v0, "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 412
    .local v3, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isFullyLocked(JJ)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 415
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getMetadata()Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v4

    .line 416
    .local v4, "contentLength":J
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_61

    .line 417
    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v8, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v6, v8

    cmp-long v8, v6, v4

    if-gtz v8, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    :goto_5e
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 420
    :cond_61
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;

    if-eqz v1, :cond_7a

    .line 421
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_69
    .catchall {:try_start_20 .. :try_end_69} :catchall_8f

    .line 423
    .local v7, "fileName":Ljava/lang/String;
    :try_start_69
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->lastTouchTimestamp:J

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->set(Ljava/lang/String;JJ)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_72} :catch_73
    .catchall {:try_start_69 .. :try_end_72} :catchall_8f

    .line 426
    goto :goto_7a

    .line 424
    :catch_73
    move-exception v1

    .line 425
    .local v1, "e":Ljava/io/IOException;
    :try_start_74
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 428
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "fileName":Ljava/lang/String;
    :cond_7a
    :goto_7a
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_8f

    .line 430
    :try_start_7d
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->store()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_82} :catch_88
    .catchall {:try_start_7d .. :try_end_82} :catchall_8f

    .line 433
    nop

    .line 434
    :try_start_83
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_8f

    .line 435
    monitor-exit p0

    return-void

    .line 431
    :catch_88
    move-exception v1

    .line 432
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_89
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_8f

    .line 399
    .end local v0    # "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .end local v4    # "contentLength":J
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "length":J
    :catchall_8f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCacheSpace()J
    .registers 3

    monitor-enter p0

    .line 324
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 325
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    .line 323
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCachedBytes(Ljava/lang/String;JJ)J
    .registers 23
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J

    monitor-enter p0

    .line 479
    const-wide/16 v0, -0x1

    cmp-long v2, p4, v0

    if-nez v2, :cond_d

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_f

    :cond_d
    add-long v0, p2, p4

    .line 480
    .local v0, "endPosition":J
    :goto_f
    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-gez v2, :cond_1c

    .line 482
    const-wide v0, 0x7fffffffffffffffL

    move-wide v9, v0

    goto :goto_1d

    .line 480
    :cond_1c
    move-wide v9, v0

    .line 484
    .end local v0    # "endPosition":J
    .local v9, "endPosition":J
    :goto_1d
    move-wide/from16 v0, p2

    .line 485
    .local v0, "currentPosition":J
    const-wide/16 v2, 0x0

    move-wide v11, v0

    move-wide v13, v2

    .line 486
    .end local v0    # "currentPosition":J
    .local v11, "currentPosition":J
    .local v13, "cachedBytes":J
    :goto_23
    cmp-long v0, v11, v9

    if-gez v0, :cond_40

    .line 487
    sub-long v15, v9, v11

    .line 488
    .local v15, "maxRemainingLength":J
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v3, v11

    move-wide v5, v15

    :try_start_2f
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_3c

    .line 489
    .local v0, "blockLength":J
    cmp-long v2, v0, v7

    if-lez v2, :cond_39

    .line 490
    add-long/2addr v13, v0

    goto :goto_3a

    .line 493
    :cond_39
    neg-long v0, v0

    .line 495
    :goto_3a
    add-long/2addr v11, v0

    .line 496
    .end local v0    # "blockLength":J
    .end local v15    # "maxRemainingLength":J
    goto :goto_23

    .line 478
    .end local v9    # "endPosition":J
    .end local v11    # "currentPosition":J
    .end local v13    # "cachedBytes":J
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "position":J
    .end local p4    # "length":J
    :catchall_3c
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1

    .line 497
    .restart local v9    # "endPosition":J
    .restart local v11    # "currentPosition":J
    .restart local v13    # "cachedBytes":J
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "position":J
    .restart local p4    # "length":J
    :cond_40
    monitor-exit p0

    return-wide v13
.end method

.method public declared-synchronized getCachedLength(Ljava/lang/String;JJ)J
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J

    monitor-enter p0

    .line 469
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 470
    const-wide/16 v0, -0x1

    cmp-long v2, p4, v0

    if-nez v2, :cond_16

    .line 471
    const-wide p4, 0x7fffffffffffffffL

    .line 473
    :cond_16
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 474
    .local v0, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    if-eqz v0, :cond_23

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getCachedBytesLength(JJ)J

    move-result-wide v1
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_26

    goto :goto_24

    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :cond_23
    neg-long v1, p4

    :goto_24
    monitor-exit p0

    return-wide v1

    .line 468
    .end local v0    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "position":J
    .end local p4    # "length":J
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 309
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 311
    .local v0, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_24

    .line 313
    :cond_1a
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getSpans()Ljava/util/TreeSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_29

    .line 312
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :cond_24
    :goto_24
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 311
    :goto_29
    monitor-exit p0

    return-object v1

    .line 308
    .end local v0    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 516
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 515
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 318
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 319
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 317
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUid()J
    .registers 3

    monitor-enter p0

    .line 259
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->uid:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 259
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCached(Ljava/lang/String;JJ)Z
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J

    monitor-enter p0

    .line 462
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 463
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 464
    .local v0, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    if-eqz v0, :cond_1e

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getCachedBytesLength(JJ)J

    move-result-wide v3
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_21

    cmp-long v5, v3, p4

    if-ltz v5, :cond_1e

    goto :goto_1f

    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    monitor-exit p0

    return v1

    .line 461
    .end local v0    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "position":J
    .end local p4    # "length":J
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .registers 5

    monitor-enter p0

    .line 264
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_39

    if-eqz v0, :cond_7

    .line 265
    monitor-exit p0

    return-void

    .line 267
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpans()V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_39

    .line 270
    const/4 v0, 0x1

    :try_start_10
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->store()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_1f
    .catchall {:try_start_10 .. :try_end_15} :catchall_1d

    .line 274
    :try_start_15
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->unlockFolder(Ljava/io/File;)V

    .line 275
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_39

    .line 276
    goto :goto_2f

    .line 274
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :catchall_1d
    move-exception v1

    goto :goto_31

    .line 271
    :catch_1f
    move-exception v1

    .line 272
    .local v1, "e":Ljava/io/IOException;
    :try_start_20
    const-string v2, "SimpleCache"

    const-string v3, "Storing index file failed"

    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    .line 274
    .end local v1    # "e":Ljava/io/IOException;
    :try_start_27
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->unlockFolder(Ljava/io/File;)V

    .line 275
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_39

    .line 276
    nop

    .line 277
    :goto_2f
    monitor-exit p0

    return-void

    .line 274
    :goto_31
    :try_start_31
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->unlockFolder(Ljava/io/File;)V

    .line 275
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    .line 276
    throw v1
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    .line 263
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 5
    .param p1, "holeSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    monitor-enter p0

    .line 439
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 441
    .local v0, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->unlockRange(J)V

    .line 442
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->maybeRemove(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 444
    monitor-exit p0

    return-void

    .line 438
    .end local v0    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    .end local p1    # "holeSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    monitor-enter p0

    .line 295
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    .line 296
    monitor-exit p0

    return-void

    .line 298
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 299
    .local v0, "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v0, :cond_1f

    .line 300
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 302
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_21

    .line 305
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :cond_1f
    monitor-exit p0

    return-void

    .line 294
    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "listener":Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeResource(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 448
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 449
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 450
    .local v1, "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeSpanInternal(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    .line 451
    .end local v1    # "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    goto :goto_13

    .line 452
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :cond_23
    monitor-exit p0

    return-void

    .line 447
    .end local p1    # "key":Ljava/lang/String;
    :catchall_25
    move-exception p1

    monitor-exit p0

    goto :goto_29

    :goto_28
    throw p1

    :goto_29
    goto :goto_28
.end method

.method public declared-synchronized removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 3
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    monitor-enter p0

    .line 456
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 457
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeSpanInternal(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 458
    monitor-exit p0

    return-void

    .line 455
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    .end local p1    # "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .registers 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 375
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 376
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->checkInitialization()V

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 379
    .local v0, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isFullyLocked(JJ)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 381
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 384
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->createCacheDirectories(Ljava/io/File;)V

    .line 385
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpans()V

    .line 387
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :cond_2e
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onStartFile(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V

    .line 389
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->random:Ljava/util/Random;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 390
    .local v2, "cacheSubDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_53

    .line 391
    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->createCacheDirectories(Ljava/io/File;)V

    .line 393
    :cond_53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 394
    .local v6, "lastTouchTimestamp":J
    iget v3, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    move-wide v4, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v1
    :try_end_5e
    .catchall {:try_start_1 .. :try_end_5e} :catchall_60

    monitor-exit p0

    return-object v1

    .line 374
    .end local v0    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .end local v2    # "cacheSubDir":Ljava/io/File;
    .end local v6    # "lastTouchTimestamp":J
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "position":J
    .end local p4    # "length":J
    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startReadWrite(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 331
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 332
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->checkInitialization()V

    .line 335
    :goto_e
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    .line 336
    .local v0, "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    if-eqz v0, :cond_16

    .line 337
    monitor-exit p0

    return-object v0

    .line 344
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    .line 346
    .end local v0    # "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    goto :goto_e

    .line 330
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "position":J
    .end local p4    # "length":J
    :catchall_1a
    move-exception p1

    monitor-exit p0

    goto :goto_1e

    :goto_1d
    throw p1

    :goto_1e
    goto :goto_1d
.end method

.method public declared-synchronized startReadWriteNonBlocking(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 353
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 354
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->checkInitialization()V

    .line 356
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getSpan(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 358
    .local v0, "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->isCached:Z

    if-eqz v1, :cond_1c

    .line 360
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->touchSpan(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2f

    monitor-exit p0

    return-object v1

    .line 363
    .end local p0    # "this":Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getOrAdd(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v1

    .line 364
    .local v1, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    invoke-virtual {v1, p2, p3, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->lockRange(JJ)Z

    move-result v2
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2f

    if-eqz v2, :cond_2c

    .line 366
    monitor-exit p0

    return-object v0

    .line 370
    :cond_2c
    monitor-exit p0

    const/4 v2, 0x0

    return-object v2

    .line 352
    .end local v0    # "span":Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .end local v1    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "position":J
    .end local p4    # "length":J
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
