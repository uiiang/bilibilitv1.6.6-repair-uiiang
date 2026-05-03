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
.field private totalDuration:I

.field private videoShot:Lcom/bilibili/tv/api/video/VideoShot;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 23
    sput-wide v8, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    .line 28
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$1;

    const/high16 v1, 0x3200000

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$1;-><init>(I)V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    .line 37
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 38
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->cancelledUrls:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/bilibili/tv/api/video/VideoShot;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    .line 47
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->totalDuration:I

    .line 48
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/video/widget/ShotBinder;)Lcom/bilibili/tv/api/video/VideoShot;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    return-object v0
.end method

.method static synthetic access$300()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getElapsedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static clearPendingLoads()V
    .locals 3

    .prologue
    .line 51
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

    .line 52
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 53
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    monitor-enter v1

    .line 54
    :try_start_26
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 55
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_3b

    .line 56
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->cancelledUrls:Ljava/util/Map;

    monitor-enter v1

    .line 57
    :try_start_2f
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->cancelledUrls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 58
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3e

    .line 59
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 60
    return-void

    .line 55
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0

    .line 58
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

    .line 67
    sget-wide v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    .line 68
    :goto_8
    return-wide v0

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    sub-long/2addr v0, v2

    goto :goto_8
.end method

.method public static isDeferLoading()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    return v0
.end method

.method private loadShotImage(Lcom/bilibili/tv/api/video/VideoShotItem;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;)V
    .locals 12

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    if-nez v0, :cond_5

    .line 244
    :goto_4
    return-void

    .line 127
    :cond_5
    sget-boolean v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    if-eqz v0, :cond_38

    .line 128
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

    .line 132
    :cond_38
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    iget v1, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/video/VideoShot;->getImageUrl(I)Ljava/lang/String;

    move-result-object v5

    .line 133
    if-nez v5, :cond_5d

    .line 134
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

    .line 138
    :cond_5d
    iget v6, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    .line 139
    iget v8, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->snapshotCache:Landroid/util/LruCache;

    invoke-virtual {v0, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 143
    if-eqz v0, :cond_b7

    .line 144
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

    .line 145
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 149
    :cond_b7
    sget-object v1, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    monitor-enter v1

    .line 150
    :try_start_ba
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 151
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

    .line 152
    monitor-exit v1

    goto/16 :goto_4

    .line 155
    :catchall_dd
    move-exception v0

    monitor-exit v1
    :try_end_df
    .catchall {:try_start_ba .. :try_end_df} :catchall_dd

    throw v0

    .line 154
    :cond_e0
    :try_start_e0
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadingUrls:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    monitor-exit v1
    :try_end_e6
    .catchall {:try_start_e0 .. :try_end_e6} :catchall_dd

    .line 157
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadVersion:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 158
    const-string v0, "ShotBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadShotImage: \u5165\u961f | time="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "s | queueSize="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->workQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " | elapsed="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->getElapsedTime()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "ms"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v9, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->imageLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/bilibili/tv/ui/video/widget/ShotBinder$2;-><init>(Lcom/bilibili/tv/ui/video/widget/ShotBinder;JLjava/lang/String;Ljava/lang/String;ILcom/bilibili/tv/ui/video/widget/CompactVideoHolder;I)V

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_4
.end method

.method public static setDeferLoading(Z)V
    .locals 4

    .prologue
    .line 72
    sput-boolean p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->deferLoading:Z

    .line 73
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

    .line 74
    if-nez p0, :cond_3c

    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3c

    .line 75
    sget-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    .line 78
    :cond_3c
    return-void
.end method

.method public static setOnDeferClearedCallback(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 81
    sput-object p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->onDeferClearedCallback:Ljava/lang/Runnable;

    .line 82
    return-void
.end method

.method public static setShowStartTime(J)V
    .locals 0

    .prologue
    .line 63
    sput-wide p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->showStartTime:J

    .line 64
    return-void
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 94
    instance-of v0, p2, Lcom/bilibili/tv/api/video/VideoShotItem;

    if-nez v0, :cond_7

    .line 120
    :cond_6
    :goto_6
    return-void

    .line 98
    :cond_7
    check-cast p2, Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 100
    invoke-direct {p0, p2, p1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->loadShotImage(Lcom/bilibili/tv/api/video/VideoShotItem;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;)V

    .line 102
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_21

    .line 104
    iget v1, p2, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->totalDuration:I

    invoke-static {v1, v2}, Lcom/bilibili/tv/util/TimeFormatUtil;->formatTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :cond_21
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getIndexBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 117
    if-eqz v0, :cond_6

    .line 118
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method public getCoverUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    instance-of v0, p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    if-eqz v0, :cond_13

    .line 254
    check-cast p1, Lcom/bilibili/tv/api/video/VideoShotItem;

    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    iget v1, p1, Lcom/bilibili/tv/api/video/VideoShotItem;->imageIndex:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/video/VideoShot;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getVideoId(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 248
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasPlayProgress(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentSeason(Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideo(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideoByCid(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method
