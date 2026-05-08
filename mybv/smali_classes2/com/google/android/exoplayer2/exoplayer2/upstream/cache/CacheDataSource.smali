.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;,
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$CacheIgnoredReason;,
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Flags;,
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CACHE_IGNORED_REASON_ERROR:I = 0x0

.field public static final CACHE_IGNORED_REASON_UNSET_LENGTH:I = 0x1

.field private static final CACHE_NOT_IGNORED:I = -0x1

.field public static final FLAG_BLOCK_ON_CACHE:I = 0x1

.field public static final FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS:I = 0x4

.field public static final FLAG_IGNORE_CACHE_ON_ERROR:I = 0x2

.field private static final MIN_READ_BEFORE_CHECKING_CACHE:J = 0x19000L


# instance fields
.field private actualUri:Landroid/net/Uri;

.field private final blockOnCache:Z

.field private bytesRemaining:J

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

.field private final cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private checkCachePosition:J

.field private currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private currentDataSourceBytesRead:J

.field private currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

.field private currentRequestIgnoresCache:Z

.field private final eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

.field private final ignoreCacheForUnsetLengthRequests:Z

.field private final ignoreCacheOnError:Z

.field private readPosition:J

.field private requestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private seenCacheError:Z

.field private totalCachedBytesRead:J

.field private final upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .registers 4
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "upstreamDataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;I)V

    .line 439
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;I)V
    .registers 11
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "upstreamDataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "flags"    # I

    .line 452
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    const-wide/32 v0, 0x500000

    invoke-direct {v4, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    .line 459
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V
    .registers 15
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "upstreamDataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "cacheReadDataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p4, "cacheWriteDataSink"    # Lcom/google/android/exoplayer2/upstream/DataSink;
    .param p5, "flags"    # I
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    .line 483
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V

    .line 491
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V
    .registers 18
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "upstreamDataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "cacheReadDataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p4, "cacheWriteDataSink"    # Lcom/google/android/exoplayer2/upstream/DataSink;
    .param p5, "flags"    # I
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;
    .param p7, "cacheKeyFactory"    # Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    .line 517
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    .line 527
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V
    .registers 13
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "upstreamDataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "cacheReadDataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p4, "cacheWriteDataSink"    # Lcom/google/android/exoplayer2/upstream/DataSink;
    .param p5, "cacheKeyFactory"    # Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
    .param p6, "flags"    # I
    .param p7, "upstreamPriorityTaskManager"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .param p8, "upstreamPriority"    # I
    .param p9, "eventListener"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 540
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 541
    if-eqz p5, :cond_b

    move-object v0, p5

    goto :goto_d

    :cond_b
    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->DEFAULT:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    :goto_d
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    .line 542
    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    .line 543
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    .line 544
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_28

    const/4 v1, 0x1

    :cond_28
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    .line 546
    const/4 v0, 0x0

    if-eqz p2, :cond_44

    .line 547
    if-eqz p7, :cond_35

    .line 548
    new-instance v1, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;

    invoke-direct {v1, p2, p7, p8}, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V

    move-object p2, v1

    .line 552
    :cond_35
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 553
    nop

    .line 554
    if-eqz p4, :cond_40

    .line 555
    new-instance v0, Lcom/google/android/exoplayer2/upstream/TeeDataSource;

    invoke-direct {v0, p2, p4}, Lcom/google/android/exoplayer2/upstream/TeeDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;)V

    goto :goto_41

    .line 556
    :cond_40
    nop

    :goto_41
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_4a

    .line 558
    :cond_44
    sget-object v1, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;->INSTANCE:Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 559
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 561
    :goto_4a
    iput-object p9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    .line 562
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$1;)V
    .registers 11
    .param p1, "x0"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p4, "x3"    # Lcom/google/android/exoplayer2/upstream/DataSink;
    .param p5, "x4"    # Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .param p8, "x7"    # I
    .param p9, "x8"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;
    .param p10, "x9"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$1;

    .line 67
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method private closeCurrentSource()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_5

    .line 852
    return-void

    .line 855
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_19

    .line 857
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 858
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 859
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v0, :cond_18

    .line 860
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 861
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 864
    :cond_18
    return-void

    .line 857
    :catchall_19
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 858
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 859
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v2, :cond_29

    .line 860
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 861
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 863
    :cond_29
    throw v0
.end method

.method private static getRedirectedUriOrDefault(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p0, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultUri"    # Landroid/net/Uri;

    .line 830
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;->getRedirectedUri(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)Landroid/net/Uri;

    move-result-object v0

    .line 831
    .local v0, "redirectedUri":Landroid/net/Uri;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_d

    :cond_c
    move-object v1, p2

    :goto_d
    return-object v1
.end method

.method private handleBeforeThrow(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 867
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromCache()Z

    move-result v0

    if-nez v0, :cond_a

    instance-of v0, p1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz v0, :cond_d

    .line 868
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    .line 870
    :cond_d
    return-void
.end method

.method private isBypassingCache()Z
    .registers 3

    .line 839
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isReadingFromCache()Z
    .registers 3

    .line 843
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isReadingFromUpstream()Z
    .registers 2

    .line 835
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromCache()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isWritingToCache()Z
    .registers 3

    .line 847
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private notifyBytesRead()V
    .registers 8

    .line 889
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    if-eqz v0, :cond_19

    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_19

    .line 890
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCacheSpace()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    invoke-interface {v0, v1, v2, v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;->onCachedBytesRead(JJ)V

    .line 891
    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    .line 893
    :cond_19
    return-void
.end method

.method private notifyCacheIgnored(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 883
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    if-eqz v0, :cond_7

    .line 884
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;->onCacheIgnored(I)V

    .line 886
    :cond_7
    return-void
.end method

.method private openNextSource(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 19
    .param p1, "requestDataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "checkCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 713
    .local v9, "key":Ljava/lang/String;
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v0, :cond_13

    .line 714
    const/4 v0, 0x0

    .local v0, "nextSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    goto :goto_3c

    .line 715
    .end local v0    # "nextSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :cond_13
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    if-eqz v0, :cond_31

    .line 717
    :try_start_17
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    move-object v4, v9

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWrite(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_22} :catch_23

    .line 721
    .restart local v0    # "nextSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    goto :goto_3c

    .line 718
    .end local v0    # "nextSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :catch_23
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 720
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    .line 723
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_31
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    move-object v4, v9

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v0

    .line 728
    .local v0, "nextSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :goto_3c
    const-wide/16 v3, -0x1

    if-nez v0, :cond_5b

    .line 731
    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 732
    .local v5, "nextDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    nop

    .line 733
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v6

    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-virtual {v6, v7, v8}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v6

    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-virtual {v6, v7, v8}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v6

    move-object v8, v5

    move-object v5, v0

    .local v6, "nextDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    goto/16 :goto_d7

    .line 734
    .end local v5    # "nextDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local v6    # "nextDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_5b
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v5, :cond_9c

    .line 736
    iget-object v5, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 737
    .local v5, "fileUri":Landroid/net/Uri;
    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    .line 738
    .local v6, "filePositionOffset":J
    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    sub-long/2addr v10, v6

    .line 739
    .local v10, "positionInFile":J
    iget-wide v12, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v12, v10

    .line 740
    .local v12, "length":J
    iget-wide v14, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v8, v14, v3

    if-eqz v8, :cond_7d

    .line 741
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 743
    :cond_7d
    nop

    .line 745
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v8

    .line 746
    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v8

    .line 747
    invoke-virtual {v8, v6, v7}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUriPositionOffset(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v8

    .line 748
    invoke-virtual {v8, v10, v11}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v8

    .line 749
    invoke-virtual {v8, v12, v13}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v8

    .line 750
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v8

    .line 751
    .local v8, "nextDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 752
    .end local v6    # "filePositionOffset":J
    .end local v10    # "positionInFile":J
    .end local v12    # "length":J
    .local v5, "nextDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    move-object v6, v8

    move-object v8, v5

    move-object v5, v0

    goto :goto_d7

    .line 755
    .end local v5    # "nextDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local v8    # "nextDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_9c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isOpenEnded()Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 756
    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .local v5, "length":J
    goto :goto_b1

    .line 758
    .end local v5    # "length":J
    :cond_a5
    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    .line 759
    .restart local v5    # "length":J
    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v10, v7, v3

    if-eqz v10, :cond_b1

    .line 760
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 763
    :cond_b1
    :goto_b1
    nop

    .line 764
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v7

    .line 765
    .local v7, "nextDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz v8, :cond_cd

    .line 766
    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object v5, v0

    move-object v6, v7

    .local v8, "nextDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    goto :goto_d7

    .line 768
    .end local v8    # "nextDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    :cond_cd
    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 769
    .restart local v8    # "nextDataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    iget-object v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v10, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 770
    const/4 v0, 0x0

    move-object v5, v0

    move-object v6, v7

    .line 774
    .end local v0    # "nextSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .end local v7    # "nextDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .local v5, "nextSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .local v6, "nextDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :goto_d7
    nop

    .line 775
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-nez v0, :cond_e7

    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v8, v0, :cond_e7

    .line 776
    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    const-wide/32 v12, 0x19000

    add-long/2addr v10, v12

    goto :goto_ec

    .line 777
    :cond_e7
    const-wide v10, 0x7fffffffffffffffL

    :goto_ec
    iput-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->checkCachePosition:J

    .line 778
    if-eqz p2, :cond_115

    .line 779
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isBypassingCache()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 780
    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v8, v0, :cond_fc

    .line 782
    return-void

    .line 786
    :cond_fc
    :try_start_fc
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_100

    .line 793
    goto :goto_115

    .line 787
    :catchall_100
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 788
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isHoleSpan()Z

    move-result v3

    if-eqz v3, :cond_114

    .line 790
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v3, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 792
    :cond_114
    throw v0

    .line 796
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_115
    :goto_115
    if-eqz v5, :cond_11f

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isHoleSpan()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 797
    iput-object v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 799
    :cond_11f
    iput-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 800
    iput-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 801
    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSourceBytesRead:J

    .line 802
    invoke-interface {v8, v6}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v10

    .line 805
    .local v10, "resolvedLength":J
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;-><init>()V

    .line 806
    .local v0, "mutations":Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    iget-wide v12, v6, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v7, v12, v3

    if-nez v7, :cond_142

    cmp-long v7, v10, v3

    if-eqz v7, :cond_142

    .line 807
    iput-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 808
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    add-long/2addr v3, v10

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->setContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;J)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 810
    :cond_142
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromUpstream()Z

    move-result v3

    if-eqz v3, :cond_161

    .line 811
    invoke-interface {v8}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    .line 812
    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 813
    .local v3, "isRedirected":Z
    if-eqz v3, :cond_15d

    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    goto :goto_15e

    :cond_15d
    const/4 v4, 0x0

    :goto_15e
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->setRedirectedUri(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 815
    .end local v3    # "isRedirected":Z
    :cond_161
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isWritingToCache()Z

    move-result v3

    if-eqz v3, :cond_16c

    .line 816
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v3, v9, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)V

    .line 818
    :cond_16c
    return-void
.end method

.method private setNoBytesRemainingAndMaybeStoreLength(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 821
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 822
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isWritingToCache()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 823
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;-><init>()V

    .line 824
    .local v0, "mutations":Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->setContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;J)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 825
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)V

    .line 827
    .end local v0    # "mutations":Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    :cond_19
    return-void
.end method

.method private shouldIgnoreCacheForRequest(Lcom/google/android/exoplayer2/upstream/DataSpec;)I
    .registers 7
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 873
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    if-eqz v0, :cond_a

    .line 874
    const/4 v0, 0x0

    return v0

    .line 875
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    if-eqz v0, :cond_18

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_18

    .line 876
    const/4 v0, 0x1

    return v0

    .line 878
    :cond_18
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 3
    .param p1, "transferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 576
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 578
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 579
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->requestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 684
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    .line 685
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    .line 686
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->notifyBytesRead()V

    .line 688
    :try_start_c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    .line 692
    nop

    .line 693
    return-void

    .line 689
    :catchall_11
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 691
    throw v0
.end method

.method public getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object v0
.end method

.method public getCacheKeyFactory()Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
    .registers 2

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 676
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromUpstream()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 677
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    goto :goto_11

    .line 678
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 676
    :goto_11
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 670
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 15
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v1

    .line 586
    .local v1, "requestDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->requestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 587
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->getRedirectedUriOrDefault(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    .line 588
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    .line 590
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->shouldIgnoreCacheForRequest(Lcom/google/android/exoplayer2/upstream/DataSpec;)I

    move-result v2

    .line 591
    .local v2, "reason":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    .line 592
    if-eqz v3, :cond_34

    .line 593
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->notifyCacheIgnored(I)V

    .line 596
    :cond_34
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    if-eqz v3, :cond_3f

    .line 597
    iput-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    goto :goto_61

    .line 599
    :cond_3f
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 600
    cmp-long v3, v9, v7

    if-eqz v3, :cond_61

    .line 601
    iget-wide v11, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v9, v11

    iput-wide v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 602
    cmp-long v3, v9, v5

    if-ltz v3, :cond_59

    goto :goto_61

    .line 603
    :cond_59
    new-instance v3, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/16 v4, 0x7d8

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    .end local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    throw v3

    .line 608
    .restart local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_61
    :goto_61
    iget-wide v9, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v3, v9, v7

    if-eqz v3, :cond_79

    .line 609
    nop

    .line 610
    iget-wide v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v3, v9, v7

    if-nez v3, :cond_71

    .line 611
    iget-wide v9, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_77

    .line 612
    :cond_71
    iget-wide v11, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :goto_77
    iput-wide v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 614
    :cond_79
    iget-wide v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v3, v9, v5

    if-gtz v3, :cond_83

    cmp-long v3, v9, v7

    if-nez v3, :cond_86

    .line 615
    :cond_83
    invoke-direct {p0, v1, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V

    .line 617
    :cond_86
    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v5, v3, v7

    if-eqz v5, :cond_8f

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_91

    :cond_8f
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J
    :try_end_91
    .catchall {:try_start_0 .. :try_end_91} :catchall_92

    :goto_91
    return-wide v3

    .line 618
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "requestDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v2    # "reason":I
    :catchall_92
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 620
    throw v0
.end method

.method public read([BII)I
    .registers 19
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    move-object v1, p0

    move/from16 v2, p3

    const/4 v0, 0x0

    if-nez v2, :cond_7

    .line 627
    return v0

    .line 629
    :cond_7
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-nez v8, :cond_11

    .line 630
    return v5

    .line 632
    :cond_11
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->requestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 633
    .local v3, "requestDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 635
    .local v4, "currentDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :try_start_21
    iget-wide v8, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->checkCachePosition:J

    cmp-long v12, v8, v10

    if-ltz v12, :cond_2d

    .line 636
    const/4 v8, 0x1

    invoke-direct {p0, v3, v8}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V

    .line 638
    :cond_2d
    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/upstream/DataSource;
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_9f

    move-object/from16 v9, p1

    move/from16 v10, p2

    :try_start_39
    invoke-interface {v8, v9, v10, v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v8

    .line 639
    .local v8, "bytesRead":I
    const-wide/16 v11, -0x1

    if-eq v8, v5, :cond_64

    .line 640
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromCache()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 641
    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    int-to-long v13, v8

    add-long/2addr v5, v13

    iput-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    .line 643
    :cond_4d
    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    int-to-long v13, v8

    add-long/2addr v5, v13

    iput-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    .line 644
    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSourceBytesRead:J

    int-to-long v13, v8

    add-long/2addr v5, v13

    iput-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSourceBytesRead:J

    .line 645
    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v5, v11

    if-eqz v0, :cond_91

    .line 646
    int-to-long v11, v8

    sub-long/2addr v5, v11

    iput-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    goto :goto_91

    .line 648
    :cond_64
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromUpstream()Z

    move-result v5

    if-eqz v5, :cond_84

    iget-wide v13, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v5, v13, v11

    if-eqz v5, :cond_78

    iget-wide v13, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSourceBytesRead:J

    iget-wide v11, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v5, v13, v11

    if-gez v5, :cond_84

    .line 654
    :cond_78
    iget-object v0, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->setNoBytesRemainingAndMaybeStoreLength(Ljava/lang/String;)V

    goto :goto_91

    .line 655
    :cond_84
    iget-wide v11, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v5, v11, v6

    if-gtz v5, :cond_92

    const-wide/16 v5, -0x1

    cmp-long v7, v11, v5

    if-nez v7, :cond_91

    goto :goto_92

    .line 660
    :cond_91
    :goto_91
    return v8

    .line 656
    :cond_92
    :goto_92
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V

    .line 657
    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V

    .line 658
    invoke-virtual/range {p0 .. p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->read([BII)I

    move-result v0
    :try_end_9c
    .catchall {:try_start_39 .. :try_end_9c} :catchall_9d

    return v0

    .line 661
    .end local v8    # "bytesRead":I
    :catchall_9d
    move-exception v0

    goto :goto_a4

    :catchall_9f
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v10, p2

    .line 662
    .local v0, "e":Ljava/lang/Throwable;
    :goto_a4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 663
    throw v0
.end method
