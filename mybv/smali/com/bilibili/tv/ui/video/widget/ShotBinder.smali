.class public Lcom/bilibili/tv/ui/video/widget/ShotBinder;
.super Ljava/lang/Object;
.source "ShotBinder.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;,
        Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field private static final MAX_CACHED_DECODERS:I = 0x8

.field private static final MAX_POOL_SIZE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ShotBinder"

.field private static final activeSheets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final decoderCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private static final decoderLock:Ljava/lang/Object;

.field private static deferLoading:Z

.field private static final imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static lastShotKey:Ljava/lang/String;

.field private static final loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

.field private static onDeferClearedCallback:Ljava/lang/Runnable;

.field private static final pendingLoads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;",
            ">;>;"
        }
    .end annotation
.end field

.field private static showStartTime:J

.field private static final snapshotCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final workQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private skipSegments:Lorg/json/JSONArray;

.field private totalDuration:I

.field private videoShot:Lcom/bilibili/tv/api/video/VideoShot;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 30
    sput-wide v10, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    .line 31
    sput-boolean v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    .line 32
    sput-object v8, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    .line 39
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$1;

    const/high16 v1, 0x3200000

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$1;-><init>(I)V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    .line 60
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 61
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x4

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    sput-object v8, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->lastShotKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bilibili/tv/api/video/VideoShot;I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    .line 70
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->totalDuration:I

    .line 71
    invoke-static {p1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->ensureShot(Lcom/bilibili/tv/api/video/VideoShot;)V

    .line 72
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Set;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->putDecoder(Ljava/lang/String;Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method static synthetic access$400(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decodeCellLocked(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public static clearAllCache()V
    .locals 4

    .prologue
    .line 116
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 117
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_8
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 120
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 121
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_12

    .line 122
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_12

    .line 125
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_33

    throw v0

    :cond_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 126
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v1

    .line 127
    :try_start_3a
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 129
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_69

    .line 130
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 131
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAllCache | \u5df2\u91ca\u653e\u622a\u56fe\u7f13\u5b58 | bitmapCacheSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 129
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0
.end method

.method public static clearPendingLoads()V
    .locals 2

    .prologue
    .line 105
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v1

    .line 107
    :try_start_3
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    .line 109
    const-string v0, "ShotBinder"

    const-string v1, "clearPendingLoads | \u5df2\u6e05\u7a7a\u7b49\u5f85\u961f\u5217"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 108
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private static decodeCell(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 372
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_d

    if-lez p2, :cond_d

    if-gtz p3, :cond_e

    .line 398
    :cond_d
    :goto_d
    return-object v0

    .line 376
    :cond_e
    mul-int v1, p2, p3

    .line 377
    :try_start_10
    rem-int v1, p1, v1

    .line 378
    rem-int v2, v1, p2

    .line 379
    div-int/2addr v1, p2

    .line 381
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    .line 382
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    .line 383
    div-int v5, v3, p2

    .line 384
    div-int v6, v4, p3

    .line 385
    if-lez v5, :cond_d

    if-lez v6, :cond_d

    .line 389
    mul-int/2addr v2, v5

    .line 390
    mul-int/2addr v1, v6

    .line 391
    add-int v7, v2, v5

    if-gt v7, v3, :cond_d

    add-int v3, v1, v6

    if-gt v3, v4, :cond_d

    .line 395
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v2, v5

    add-int v5, v1, v6

    invoke-direct {v3, v2, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3c} :catch_3e

    move-result-object v0

    goto :goto_d

    .line 396
    :catch_3e
    move-exception v1

    .line 397
    const-string v2, "ShotBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeCell error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private static decodeCellLocked(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 524
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_3
    invoke-static {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decodeCell(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 526
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method private static ensureShot(Lcom/bilibili/tv/api/video/VideoShot;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 83
    if-nez p0, :cond_4

    .line 99
    :cond_3
    :goto_3
    return-void

    .line 86
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImage()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_48

    move v0, v1

    :goto_22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    const-class v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    monitor-enter v2

    .line 90
    :try_start_2d
    sget-object v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->lastShotKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    const/4 v1, 0x1

    .line 91
    :cond_36
    if-eqz v1, :cond_3a

    .line 92
    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->lastShotKey:Ljava/lang/String;

    .line 94
    :cond_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_51

    .line 95
    if-eqz v1, :cond_3

    .line 96
    const-string v0, "ShotBinder"

    const-string v1, "ensureShot: \u89c6\u9891\u53d8\u5316\uff0c\u6e05\u7a7a\u622a\u56fe\u7f13\u5b58"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearAllCache()V

    goto :goto_3

    .line 87
    :cond_48
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_22

    .line 94
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0
.end method

.method private static getElapsedTime()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 139
    sget-wide v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    .line 140
    :goto_8
    return-wide v0

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    sub-long/2addr v0, v2

    goto :goto_8
.end method

.method private getSkipBadgeText(I)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v2

    .line 242
    :goto_e
    return-object v0

    .line 213
    :cond_f
    int-to-long v0, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    .line 214
    const/4 v0, 0x0

    :goto_14
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_bc

    .line 216
    :try_start_1c
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 217
    if-nez v1, :cond_27

    .line 214
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 220
    :cond_27
    const-string v3, "start"

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 221
    const-string v3, "end"

    const-wide/16 v8, -0x1

    invoke-virtual {v1, v3, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 222
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-ltz v3, :cond_24

    cmp-long v3, v8, v6

    if-lez v3, :cond_24

    .line 225
    cmp-long v3, v4, v6

    if-ltz v3, :cond_24

    cmp-long v3, v4, v8

    if-gez v3, :cond_24

    .line 226
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    const-string v3, "\u7247\u5934"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 229
    const-string v1, "\u7247\u5934"

    .line 235
    :goto_59
    const-string v3, "ShotBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSkipBadgeText: MATCH time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms) -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 236
    goto :goto_e

    .line 230
    :cond_87
    const-string v3, "\u7247\u5c3e"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 231
    const-string v1, "\u7247\u5c3e"

    goto :goto_59

    .line 232
    :cond_92
    const-string v3, "\u786c\u5e7f"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 233
    const-string v1, "\u5e7f\u544a"
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_9c} :catch_9d

    goto :goto_59

    .line 238
    :catch_9d
    move-exception v1

    .line 239
    const-string v3, "ShotBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSkipBadgeText error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    :cond_bc
    move-object v0, v2

    .line 242
    goto/16 :goto_e

    :cond_bf
    move-object v1, v2

    goto :goto_59
.end method

.method public static isDeferLoading()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    return v0
.end method

.method private loadShotImage(Lcom/bilibili/tv/api/video/VideoShotItem;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;)V
    .locals 11

    .prologue
    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    if-nez v0, :cond_5

    .line 309
    :cond_4
    :goto_4
    return-void

    .line 250
    :cond_5
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageResource(I)V

    .line 252
    sget-boolean v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    if-nez v0, :cond_4

    .line 257
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    iget v1, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/video/VideoShot;->getImageUrl(I)Ljava/lang/String;

    move-result-object v8

    .line 258
    if-nez v8, :cond_38

    .line 259
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadShotImage: sheetUrl is null for index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 263
    :cond_38
    iget v4, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    .line 264
    iget v0, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 267
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v0, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 268
    if-eqz v0, :cond_65

    .line 270
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 274
    :cond_65
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v9

    .line 275
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v10

    .line 278
    invoke-static {v8, v4, v9, v10}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->tryDecodeFromCache(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_84

    .line 280
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v1, v5, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 286
    :cond_84
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 287
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 288
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;-><init>(Ljava/lang/ref/WeakReference;Lcom/bilibili/tv/api/video/VideoShotItem;ILjava/lang/String;J)V

    .line 290
    const/4 v2, 0x0

    .line 291
    sget-object v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v3

    .line 292
    :try_start_99
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 293
    if-nez v0, :cond_ad

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    sget-object v4, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_ad
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    .line 299
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    const/4 v0, 0x1

    .line 302
    :goto_be
    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_99 .. :try_end_bf} :catchall_d0

    .line 306
    if-eqz v0, :cond_4

    .line 307
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-direct/range {v2 .. v7}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;-><init>(Ljava/lang/String;IIJ)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 302
    :catchall_d0
    move-exception v0

    :try_start_d1
    monitor-exit v3
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d0

    throw v0

    :cond_d3
    move v0, v2

    goto :goto_be
.end method

.method public static preloadSheet(Lcom/bilibili/tv/api/video/VideoShot;Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/api/video/VideoShot;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/VideoShotItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 318
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 353
    :cond_b
    :goto_b
    return-void

    .line 321
    :cond_c
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoShotItem;

    move v1, v2

    move-object v3, v0

    .line 322
    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 323
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoShotItem;

    iget v0, v0, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    if-gt v0, p2, :cond_2e

    .line 324
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 322
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    goto :goto_14

    .line 329
    :cond_2e
    iget v0, v3, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/video/VideoShot;->getImageUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_b

    .line 333
    sget-object v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderLock:Ljava/lang/Object;

    monitor-enter v3

    .line 334
    :try_start_39
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 335
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 336
    monitor-exit v3

    goto :goto_b

    .line 338
    :catchall_4b
    move-exception v0

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_4b

    throw v0

    :cond_4e
    :try_start_4e
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4b

    .line 340
    sget-object v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v3

    .line 341
    :try_start_52
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 342
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_64
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 345
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    const/4 v2, 0x1

    move v6, v2

    .line 348
    :goto_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_52 .. :try_end_74} :catchall_c6

    .line 349
    if-eqz v6, :cond_8e

    .line 350
    sget-object v7, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;

    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v2

    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v3

    sget-object v4, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;-><init>(Ljava/lang/String;IIJ)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 352
    :cond_8e
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preloadSheet | time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s | submit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | elapsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getElapsedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 348
    :catchall_c6
    move-exception v0

    :try_start_c7
    monitor-exit v3
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw v0

    :cond_c9
    move v6, v2

    goto :goto_73
.end method

.method private static putDecoder(Ljava/lang/String;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 3

    .prologue
    .line 406
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_3
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 408
    if-eqz v0, :cond_18

    if-eq v0, p1, :cond_18

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_18

    .line 409
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 411
    :cond_18
    :goto_18
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_32

    .line 412
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 413
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_52

    .line 422
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_6f

    .line 423
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putDecoder | \u7f13\u5b58\u89e3\u7801\u5668\uff0c\u5f53\u524d\u6570\u91cf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 416
    :cond_52
    :try_start_52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 417
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 418
    if-eqz v0, :cond_18

    if-eq v0, p1, :cond_18

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_18

    .line 419
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_18

    .line 422
    :catchall_6f
    move-exception v0

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_6f

    throw v0
.end method

.method public static setDeferLoading(Z)V
    .locals 4

    .prologue
    .line 144
    sput-boolean p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    .line 145
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeferLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | elapsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getElapsedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-nez p0, :cond_3c

    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3c

    .line 147
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    .line 150
    :cond_3c
    return-void
.end method

.method public static setOnDeferClearedCallback(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 153
    sput-object p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    .line 154
    return-void
.end method

.method public static setShowStartTime(J)V
    .locals 0

    .prologue
    .line 135
    sput-wide p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    .line 136
    return-void
.end method

.method private static tryDecodeFromCache(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 359
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_3
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 361
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 362
    :cond_13
    const/4 v0, 0x0

    monitor-exit v1

    .line 364
    :goto_15
    return-object v0

    :cond_16
    invoke-static {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decodeCell(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v1

    goto :goto_15

    .line 365
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 166
    instance-of v0, p2, Lcom/bilibili/tv/api/video/VideoShotItem;

    if-nez v0, :cond_8

    .line 203
    :cond_7
    :goto_7
    return-void

    .line 170
    :cond_8
    check-cast p2, Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 172
    invoke-direct {p0, p2, p1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadShotImage(Lcom/bilibili/tv/api/video/VideoShotItem;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;)V

    .line 174
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_21

    .line 176
    iget v1, p2, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->totalDuration:I

    invoke-static {v1, v2}, Lcom/bilibili/tv/util/TimeFormatUtil;->formatTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :cond_21
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getIndexBadgeView()Landroid/widget/TextView;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_5f

    .line 190
    iget v1, p2, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getSkipBadgeText(I)Ljava/lang/String;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_6f

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    :cond_5f
    :goto_5f
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 200
    if-eqz v0, :cond_7

    .line 201
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 195
    :cond_6f
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5f
.end method

.method public getCoverUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 556
    instance-of v0, p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    if-eqz v0, :cond_13

    .line 557
    check-cast p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 558
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    iget v1, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/video/VideoShot;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getVideoId(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 551
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasPlayProgress(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentSeason(Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideo(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideoByCid(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public setSkipSegments(Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 75
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    .line 76
    const-string v1, "ShotBinder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSkipSegments | count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 76
    :cond_25
    const-string v0, "null"

    goto :goto_19
.end method
