.class public Lcom/bilibili/tv/ui/video/widget/ShotBinder;
.super Ljava/lang/Object;
.source "ShotBinder.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;


# static fields
.field private static final CORE_POOL_SIZE:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShotBinder"

.field private static final cancelledUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static deferLoading:Z

.field private static final imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final loadingUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static onDeferClearedCallback:Ljava/lang/Runnable;

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

    .line 25
    sput-wide v8, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$1;

    const/high16 v1, 0x3200000

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$1;-><init>(I)V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    .line 41
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 42
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->cancelledUrls:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/bilibili/tv/api/video/VideoShot;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    .line 51
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->totalDuration:I

    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    return-object v0
.end method

.method static synthetic access$300()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getElapsedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static clearAllCache()V
    .locals 3

    .prologue
    .line 72
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAllCache | \u6e05\u7406\u6240\u6709\u7f13\u5b58 | cacheSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | memoryUsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    .line 73
    invoke-virtual {v2}, Landroid/util/LruCache;->size()I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 75
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearPendingLoads()V

    .line 76
    return-void
.end method

.method public static clearPendingLoads()V
    .locals 3

    .prologue
    .line 60
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPendingLoads | \u6e05\u7a7a\u5f85\u52a0\u8f7d\u961f\u5217 | \u961f\u5217\u5927\u5c0f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 62
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    monitor-enter v1

    .line 63
    :try_start_26
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 64
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_3b

    .line 65
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->cancelledUrls:Ljava/util/Map;

    monitor-enter v1

    .line 66
    :try_start_2f
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->cancelledUrls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 67
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3e

    .line 68
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 69
    return-void

    .line 64
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0

    .line 67
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method private static getElapsedTime()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 83
    sget-wide v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    .line 84
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

    .line 154
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v2

    .line 186
    :goto_e
    return-object v0

    .line 157
    :cond_f
    int-to-long v0, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    .line 158
    const/4 v0, 0x0

    :goto_14
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_bc

    .line 160
    :try_start_1c
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 161
    if-nez v1, :cond_27

    .line 158
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 164
    :cond_27
    const-string v3, "start"

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 165
    const-string v3, "end"

    const-wide/16 v8, -0x1

    invoke-virtual {v1, v3, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 166
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-ltz v3, :cond_24

    cmp-long v3, v8, v6

    if-lez v3, :cond_24

    .line 169
    cmp-long v3, v4, v6

    if-ltz v3, :cond_24

    cmp-long v3, v4, v8

    if-gez v3, :cond_24

    .line 170
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v3, "\u7247\u5934"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 173
    const-string v1, "\u7247\u5934"

    .line 179
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

    .line 180
    goto :goto_e

    .line 174
    :cond_87
    const-string v3, "\u7247\u5c3e"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 175
    const-string v1, "\u7247\u5c3e"

    goto :goto_59

    .line 176
    :cond_92
    const-string v3, "\u786c\u5e7f"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 177
    const-string v1, "\u5e7f\u544a"
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_9c} :catch_9d

    goto :goto_59

    .line 182
    :catch_9d
    move-exception v1

    .line 183
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

    .line 186
    goto/16 :goto_e

    :cond_bf
    move-object v1, v2

    goto :goto_59
.end method

.method public static isDeferLoading()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    return v0
.end method

.method private loadShotImage(Lcom/bilibili/tv/api/video/VideoShotItem;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;)V
    .locals 12

    .prologue
    .line 190
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    if-nez v0, :cond_5

    .line 339
    :goto_4
    return-void

    .line 194
    :cond_5
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageResource(I)V

    .line 196
    sget-boolean v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    if-eqz v0, :cond_42

    .line 197
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadShotImage: \u5ef6\u8fdf\u52a0\u8f7d\u4e2d\uff0c\u8df3\u8fc7 | time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s | elapsed="

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

    goto :goto_4

    .line 201
    :cond_42
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    iget v1, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/video/VideoShot;->getImageUrl(I)Ljava/lang/String;

    move-result-object v6

    .line 202
    if-nez v6, :cond_67

    .line 203
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadShotImage: imageUrl is null for index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 207
    :cond_67
    iget v7, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    .line 208
    iget v8, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v0, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 212
    if-eqz v0, :cond_c1

    .line 213
    const-string v1, "ShotBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadShotImage: using cached bitmap for time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s | elapsed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getElapsedTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 218
    :cond_c1
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    monitor-enter v1

    .line 219
    :try_start_c4
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 220
    const-string v0, "ShotBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadShotImage: already loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    monitor-exit v1

    goto/16 :goto_4

    .line 224
    :catchall_e7
    move-exception v0

    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_c4 .. :try_end_e9} :catchall_e7

    throw v0

    .line 223
    :cond_ea
    :try_start_ea
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    monitor-exit v1
    :try_end_f0
    .catchall {:try_start_ea .. :try_end_f0} :catchall_e7

    .line 226
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 227
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadShotImage: \u5165\u961f | time="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "s | queueSize="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | elapsed="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getElapsedTime()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "ms"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 232
    sget-object v9, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;-><init>(Lcom/bilibili/tv/ui/video/widget/ShotBinder;JLjava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;II)V

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_4
.end method

.method public static setDeferLoading(Z)V
    .locals 4

    .prologue
    .line 88
    sput-boolean p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    .line 89
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

    .line 90
    if-nez p0, :cond_3c

    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3c

    .line 91
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    .line 94
    :cond_3c
    return-void
.end method

.method public static setOnDeferClearedCallback(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 97
    sput-object p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    .line 98
    return-void
.end method

.method public static setShowStartTime(J)V
    .locals 0

    .prologue
    .line 79
    sput-wide p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    .line 80
    return-void
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 110
    instance-of v0, p2, Lcom/bilibili/tv/api/video/VideoShotItem;

    if-nez v0, :cond_8

    .line 147
    :cond_7
    :goto_7
    return-void

    .line 114
    :cond_8
    check-cast p2, Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 116
    invoke-direct {p0, p2, p1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadShotImage(Lcom/bilibili/tv/api/video/VideoShotItem;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;)V

    .line 118
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_21

    .line 120
    iget v1, p2, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->totalDuration:I

    invoke-static {v1, v2}, Lcom/bilibili/tv/util/TimeFormatUtil;->formatTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :cond_21
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getIndexBadgeView()Landroid/widget/TextView;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_5f

    .line 134
    iget v1, p2, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getSkipBadgeText(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_6f

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_5f
    :goto_5f
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 144
    if-eqz v0, :cond_7

    .line 145
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 139
    :cond_6f
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5f
.end method

.method public getCoverUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    instance-of v0, p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    if-eqz v0, :cond_13

    .line 349
    check-cast p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 350
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    iget v1, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/video/VideoShot;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getVideoId(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 343
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasPlayProgress(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentSeason(Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideo(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideoByCid(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public setSkipSegments(Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 55
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->skipSegments:Lorg/json/JSONArray;

    .line 56
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

    .line 57
    return-void

    .line 56
    :cond_25
    const-string v0, "null"

    goto :goto_19
.end method
