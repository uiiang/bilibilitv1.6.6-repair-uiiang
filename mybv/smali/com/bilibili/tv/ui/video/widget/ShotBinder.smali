.class public Lcom/bilibili/tv/ui/video/widget/ShotBinder;
.super Ljava/lang/Object;
.source "ShotBinder.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;,
        Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;,
        Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field private static final MAX_CACHED_DECODERS:I = 0x8

.field private static final MAX_POOL_SIZE:I = 0x8

.field private static final SHEET_DOWNLOAD_DEBOUNCE_MS:J = 0x96L

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

.field private static volatile clearingSnapshotCache:Z

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

.field private static final mainHandler:Landroid/os/Handler;

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

.field private static final scheduledSheets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;",
            ">;"
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
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 33
    sput-wide v8, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    .line 34
    sput-boolean v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearingSnapshotCache:Z

    .line 44
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$1;

    const/high16 v1, 0x3200000

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$1;-><init>(I)V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->scheduledSheets:Ljava/util/Map;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->mainHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 79
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x4

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->lastShotKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bilibili/tv/api/video/VideoShot;I)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    .line 88
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->totalDuration:I

    .line 89
    invoke-static {p1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->ensureShot(Lcom/bilibili/tv/api/video/VideoShot;)V

    .line 90
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearingSnapshotCache:Z

    return v0
.end method

.method static synthetic access$100()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->cleanupSheetState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;)Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getValidHolder(Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;)Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/String;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->putDecoder(Ljava/lang/String;Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decodeCellLocked(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->scheduledSheets:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->totalPendingRequests()I

    move-result v0

    return v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheetCount()I

    move-result v0

    return v0
.end method

.method private static activeSheetCount()I
    .locals 2

    .prologue
    .line 156
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v1

    .line 157
    :try_start_3
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 158
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private static cancelScheduledSheet(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 163
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v1

    .line 164
    :try_start_3
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->scheduledSheets:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;

    .line 165
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_30

    .line 166
    if-eqz v0, :cond_2f

    .line 167
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    const-string v0, "ShotPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[schedule-cancel] sheetFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2f
    return-void

    .line 165
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private static cleanupSheetState(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 225
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v1

    .line 226
    :try_start_3
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 228
    monitor-exit v1

    .line 229
    return-void

    .line 228
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public static clearAllCache()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 235
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearingSnapshotCache:Z

    .line 237
    :try_start_4
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_3c

    .line 239
    sput-boolean v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearingSnapshotCache:Z

    .line 241
    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 242
    :try_start_e
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 243
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 244
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 245
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_18

    .line 246
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_18

    .line 249
    :catchall_39
    move-exception v0

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_39

    throw v0

    .line 239
    :catchall_3c
    move-exception v0

    sput-boolean v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearingSnapshotCache:Z

    .line 240
    throw v0

    .line 249
    :cond_40
    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_39

    .line 251
    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v2

    .line 252
    :try_start_44
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->scheduledSheets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->scheduledSheets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 254
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 255
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 256
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_74

    .line 257
    :goto_5f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_77

    .line 258
    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->mainHandler:Landroid/os/Handler;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5f

    .line 256
    :catchall_74
    move-exception v0

    :try_start_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v0

    .line 260
    :cond_77
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 261
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

    .line 262
    return-void
.end method

.method public static clearPendingLoads()V
    .locals 6

    .prologue
    .line 125
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v1

    .line 126
    :try_start_3
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->countPendingLocked()I

    move-result v0

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->scheduledSheets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    sget-object v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->scheduledSheets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 130
    sget-object v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 131
    const-string v3, "ShotPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[clearPending] clearedReqs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | activeSheets="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    .line 132
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | scheduled="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_6a

    .line 135
    const/4 v0, 0x0

    move v1, v0

    :goto_55
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6d

    .line 136
    sget-object v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->mainHandler:Landroid/os/Handler;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55

    .line 134
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v0

    .line 138
    :cond_6d
    const-string v0, "ShotBinder"

    const-string v1, "clearPendingLoads | \u5df2\u6e05\u7a7a\u7b49\u5f85\u961f\u5217"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method private static countPendingLocked()I
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 145
    goto :goto_c

    .line 146
    :cond_1f
    return v1
.end method

.method private static decodeCell(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 570
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_d

    if-lez p2, :cond_d

    if-gtz p3, :cond_e

    .line 604
    :cond_d
    :goto_d
    return-object v0

    .line 574
    :cond_e
    mul-int v1, p2, p3

    .line 575
    :try_start_10
    rem-int v1, p1, v1

    .line 576
    rem-int v2, v1, p2

    .line 577
    div-int/2addr v1, p2

    .line 579
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    .line 580
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    .line 581
    div-int v5, v3, p2

    .line 582
    div-int v6, v4, p3

    .line 583
    if-lez v5, :cond_d

    if-lez v6, :cond_d

    .line 587
    mul-int/2addr v2, v5

    .line 588
    mul-int v7, v1, v6

    .line 589
    add-int v1, v2, v5

    if-gt v1, v3, :cond_d

    add-int v1, v7, v6

    if-gt v1, v4, :cond_d

    .line 594
    const/4 v1, 0x1

    .line 595
    :goto_31
    mul-int/lit8 v3, v1, 0x2

    div-int v3, v5, v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_44

    mul-int/lit8 v3, v1, 0x2

    div-int v3, v6, v3

    const/16 v4, 0x6e

    if-lt v3, v4, :cond_44

    .line 596
    mul-int/lit8 v1, v1, 0x2

    goto :goto_31

    .line 598
    :cond_44
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 599
    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 601
    new-instance v1, Landroid/graphics/Rect;

    add-int v4, v2, v5

    add-int v5, v7, v6

    invoke-direct {v1, v2, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_57} :catch_59

    move-result-object v0

    goto :goto_d

    .line 602
    :catch_59
    move-exception v1

    .line 603
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
    .line 817
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 818
    :try_start_3
    invoke-static {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decodeCell(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 819
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

    .line 101
    if-nez p0, :cond_4

    .line 117
    :cond_3
    :goto_3
    return-void

    .line 104
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

    .line 105
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_48

    move v0, v1

    :goto_22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    const-class v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    monitor-enter v2

    .line 108
    :try_start_2d
    sget-object v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->lastShotKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    const/4 v1, 0x1

    .line 109
    :cond_36
    if-eqz v1, :cond_3a

    .line 110
    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->lastShotKey:Ljava/lang/String;

    .line 112
    :cond_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_51

    .line 113
    if-eqz v1, :cond_3

    .line 114
    const-string v0, "ShotBinder"

    const-string v1, "ensureShot: \u89c6\u9891\u53d8\u5316\uff0c\u6e05\u7a7a\u622a\u56fe\u7f13\u5b58"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearAllCache()V

    goto :goto_3

    .line 105
    :cond_48
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_22

    .line 112
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

    .line 269
    sget-wide v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    .line 270
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

    .line 335
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v2

    .line 367
    :goto_e
    return-object v0

    .line 338
    :cond_f
    int-to-long v0, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    .line 339
    const/4 v0, 0x0

    :goto_14
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_bc

    .line 341
    :try_start_1c
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 342
    if-nez v1, :cond_27

    .line 339
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 345
    :cond_27
    const-string v3, "start"

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 346
    const-string v3, "end"

    const-wide/16 v8, -0x1

    invoke-virtual {v1, v3, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 347
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-ltz v3, :cond_24

    cmp-long v3, v8, v6

    if-lez v3, :cond_24

    .line 350
    cmp-long v3, v4, v6

    if-ltz v3, :cond_24

    cmp-long v3, v4, v8

    if-gez v3, :cond_24

    .line 351
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    const-string v3, "\u7247\u5934"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 354
    const-string v1, "\u7247\u5934"

    .line 360
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

    .line 361
    goto :goto_e

    .line 355
    :cond_87
    const-string v3, "\u7247\u5c3e"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 356
    const-string v1, "\u7247\u5c3e"

    goto :goto_59

    .line 357
    :cond_92
    const-string v3, "\u786c\u5e7f"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 358
    const-string v1, "\u5e7f\u544a"
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_9c} :catch_9d

    goto :goto_59

    .line 363
    :catch_9d
    move-exception v1

    .line 364
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

    .line 367
    goto/16 :goto_e

    :cond_bf
    move-object v1, v2

    goto :goto_59
.end method

.method private static getValidHolder(Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;)Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->holderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;

    .line 215
    if-nez v0, :cond_d

    move-object v0, v1

    .line 221
    :cond_c
    :goto_c
    return-object v0

    .line 218
    :cond_d
    iget-object v2, v0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->item:Lcom/bilibili/tv/api/video/VideoShotItem;

    if-eq v2, v3, :cond_c

    :cond_1f
    move-object v0, v1

    .line 219
    goto :goto_c
.end method

.method private loadShotImage(Lcom/bilibili/tv/api/video/VideoShotItem;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;)V
    .locals 16

    .prologue
    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    if-nez v2, :cond_7

    .line 439
    :cond_6
    :goto_6
    return-void

    .line 375
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v2

    const v3, 0x7f07005b

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageResource(I)V

    .line 377
    sget-boolean v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    if-nez v2, :cond_6

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/api/video/VideoShot;->getImageUrl(I)Ljava/lang/String;

    move-result-object v12

    .line 383
    if-nez v12, :cond_40

    .line 384
    const-string v2, "ShotBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadShotImage: sheetUrl is null for index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 388
    :cond_40
    move-object/from16 v0, p1

    iget v6, v0, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    .line 389
    move-object/from16 v0, p1

    iget v13, v0, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 392
    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v2, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 393
    if-eqz v2, :cond_71

    .line 395
    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 399
    :cond_71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v14

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v15

    .line 401
    if-lez v14, :cond_9e

    if-lez v15, :cond_9e

    mul-int v2, v14, v15

    div-int v2, v6, v2

    move v11, v2

    .line 404
    :goto_8a
    invoke-static {v12, v6, v14, v15}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->tryDecodeFromCache(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 405
    if-eqz v2, :cond_a1

    .line 406
    sget-object v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v3, v7, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 401
    :cond_9e
    const/4 v2, -0x1

    move v11, v2

    goto :goto_8a

    .line 419
    :cond_a1
    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 420
    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 421
    new-instance v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;-><init>(Ljava/lang/ref/WeakReference;Lcom/bilibili/tv/api/video/VideoShotItem;ILjava/lang/String;J)V

    .line 423
    sget-object v4, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v4

    .line 424
    :try_start_b8
    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 425
    if-nez v2, :cond_cc

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 427
    sget-object v5, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    invoke-interface {v5, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_cc
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    monitor-exit v4
    :try_end_d0
    .catchall {:try_start_b8 .. :try_end_d0} :catchall_11a

    .line 432
    const/4 v10, 0x0

    move-object v5, v12

    move v6, v14

    move v7, v15

    invoke-static/range {v5 .. v10}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->scheduleSheetDownload(Ljava/lang/String;IIJZ)Z

    move-result v2

    .line 433
    if-eqz v2, :cond_6

    .line 435
    const-string v2, "ShotPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[schedule] time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s | sheet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | sheetFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 436
    invoke-static {v12}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | pendingReqs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 437
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->totalPendingRequests()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 430
    :catchall_11a
    move-exception v2

    :try_start_11b
    monitor-exit v4
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    throw v2
.end method

.method public static preloadSheet(Lcom/bilibili/tv/api/video/VideoShot;Ljava/util/List;I)V
    .locals 7
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
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 523
    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 551
    :cond_c
    :goto_c
    return-void

    .line 526
    :cond_d
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoShotItem;

    move v1, v2

    move-object v3, v0

    .line 527
    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 528
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoShotItem;

    iget v0, v0, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    if-gt v0, p2, :cond_2f

    .line 529
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 527
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    goto :goto_15

    .line 534
    :cond_2f
    iget v0, v3, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/api/video/VideoShot;->getImageUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 535
    if-eqz v1, :cond_c

    .line 539
    sget-object v3, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderLock:Ljava/lang/Object;

    monitor-enter v3

    .line 540
    :try_start_3a
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 541
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4b

    move v2, v6

    .line 542
    :cond_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_89

    .line 543
    if-eqz v2, :cond_8c

    .line 544
    const-string v0, "ShotPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preloadSheet | time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s | sheetFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | decoderCached=true | elapsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 545
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getElapsedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 542
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v0

    .line 548
    :cond_8c
    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgXLen()I

    move-result v2

    invoke-virtual {p0}, Lcom/bilibili/tv/api/video/VideoShot;->getImgYLen()I

    move-result v3

    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static/range {v1 .. v6}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->scheduleSheetDownload(Ljava/lang/String;IIJZ)Z

    move-result v0

    .line 549
    const-string v2, "ShotPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preloadSheet | time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s | sheetFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | submit="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | elapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 550
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getElapsedTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method

.method private static pruneRequestsForHolder(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Lcom/bilibili/tv/api/video/VideoShotItem;)V
    .locals 8

    .prologue
    .line 185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 186
    sget-object v4, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v4

    .line 187
    :try_start_8
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 188
    :cond_12
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 189
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 191
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_28
    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 192
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;

    .line 193
    iget-object v7, v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->holderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p0, :cond_28

    iget-object v2, v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder$PendingLoad;->item:Lcom/bilibili/tv/api/video/VideoShotItem;

    if-eq v2, p1, :cond_28

    .line 194
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_28

    .line 202
    :catchall_44
    move-exception v0

    monitor-exit v4
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_44

    throw v0

    .line 197
    :cond_47
    :try_start_47
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 198
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 202
    :cond_5a
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_47 .. :try_end_5b} :catchall_44

    .line 203
    const/4 v0, 0x0

    move v1, v0

    :goto_5d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_70

    .line 205
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->cancelScheduledSheet(Ljava/lang/String;)V

    .line 203
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5d

    .line 207
    :cond_70
    return-void
.end method

.method private static putDecoder(Ljava/lang/String;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 6

    .prologue
    .line 613
    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 614
    :try_start_3
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 615
    if-eqz v0, :cond_18

    if-eq v0, p1, :cond_18

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_18

    .line 616
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 618
    :cond_18
    :goto_18
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_32

    .line 619
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 620
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_60

    .line 632
    :cond_32
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    .line 633
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_b0

    .line 634
    const-string v1, "ShotPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[decoder-put] sheetFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    .line 623
    :cond_60
    :try_start_60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 624
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 625
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 626
    const-string v3, "ShotPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[decoder-evict] sheetFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->shortUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | size="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    .line 627
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    if-eqz v1, :cond_18

    if-eq v1, p1, :cond_18

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 629
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto/16 :goto_18

    .line 633
    :catchall_b0
    move-exception v0

    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_60 .. :try_end_b2} :catchall_b0

    throw v0
.end method

.method private static scheduleSheetDownload(Ljava/lang/String;IIJZ)Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 450
    if-eqz p5, :cond_33

    .line 452
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v1

    .line 453
    :try_start_7
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->scheduledSheets:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 454
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v7, v6

    .line 457
    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_30

    .line 458
    if-eqz v7, :cond_2e

    .line 459
    sget-object v8, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$SheetLoadTask;-><init>(Ljava/lang/String;IIJZ)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2e
    move v0, v7

    .line 475
    :goto_2f
    return v0

    .line 457
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0

    .line 464
    :cond_33
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$ScheduledSheet;-><init>(Ljava/lang/String;IIJ)V

    .line 466
    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v2

    .line 467
    :try_start_3f
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->activeSheets:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->scheduledSheets:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 468
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->scheduledSheets:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v6

    .line 471
    :goto_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_61

    .line 472
    if-eqz v1, :cond_5f

    .line 473
    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->mainHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5f
    move v0, v1

    .line 475
    goto :goto_2f

    .line 471
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0

    :cond_64
    move v1, v7

    goto :goto_55
.end method

.method public static setDeferLoading(Z)V
    .locals 4

    .prologue
    .line 274
    sput-boolean p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    .line 275
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

    .line 276
    return-void
.end method

.method public static setShowStartTime(J)V
    .locals 0

    .prologue
    .line 265
    sput-wide p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    .line 266
    return-void
.end method

.method private static shortUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    if-nez p0, :cond_5

    .line 174
    const-string p0, "null"

    .line 177
    :cond_4
    :goto_4
    return-object p0

    .line 176
    :cond_5
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 177
    if-ltz v0, :cond_4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method private static totalPendingRequests()I
    .locals 2

    .prologue
    .line 150
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pendingLoads:Ljava/util/Map;

    monitor-enter v1

    .line 151
    :try_start_3
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->countPendingLocked()I

    move-result v0

    monitor-exit v1

    return v0

    .line 152
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method private static tryDecodeFromCache(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 557
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 558
    :try_start_3
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decoderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 559
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 560
    :cond_13
    const/4 v0, 0x0

    monitor-exit v1

    .line 562
    :goto_15
    return-object v0

    :cond_16
    invoke-static {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->decodeCell(Landroid/graphics/BitmapRegionDecoder;III)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v1

    goto :goto_15

    .line 563
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
    .line 280
    return-void
.end method

.method public bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 284
    instance-of v0, p2, Lcom/bilibili/tv/api/video/VideoShotItem;

    if-nez v0, :cond_8

    .line 328
    :cond_7
    :goto_7
    return-void

    .line 288
    :cond_8
    check-cast p2, Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 295
    invoke-static {p1, p2}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->pruneRequestsForHolder(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Lcom/bilibili/tv/api/video/VideoShotItem;)V

    .line 297
    invoke-direct {p0, p2, p1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadShotImage(Lcom/bilibili/tv/api/video/VideoShotItem;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;)V

    .line 299
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_24

    .line 301
    iget v1, p2, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->totalDuration:I

    invoke-static {v1, v2}, Lcom/bilibili/tv/util/TimeFormatUtil;->formatTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    :cond_24
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getIndexBadgeView()Landroid/widget/TextView;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_62

    .line 315
    iget v1, p2, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getSkipBadgeText(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_72

    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    :cond_62
    :goto_62
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 325
    if-eqz v0, :cond_7

    .line 326
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 320
    :cond_72
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_62
.end method

.method public getCoverUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 849
    instance-of v0, p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    if-eqz v0, :cond_13

    .line 850
    check-cast p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 851
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    iget v1, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/video/VideoShot;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 853
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getVideoId(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 844
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasPlayProgress(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentSeason(Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideo(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideoByCid(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 863
    const/4 v0, 0x0

    return v0
.end method

.method public setSkipSegments(Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 93
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    .line 94
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

    .line 95
    return-void

    .line 94
    :cond_25
    const-string v0, "null"

    goto :goto_19
.end method
