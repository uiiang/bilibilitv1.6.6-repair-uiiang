.class public final Lbl/PlayUrlPrefetch;
.super Ljava/lang/Object;
.source "PlayUrlPrefetch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/PlayUrlPrefetch$Cached;,
        Lbl/PlayUrlPrefetch$StateProvider;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lbl/PlayUrlPrefetch$Cached;",
            ">;"
        }
    .end annotation
.end field

.field private static final EARLY_DELAY_MS:J = 0x7d0L

.field private static final GENERATION:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final INFLIGHT:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final INFLIGHT_WAIT_MS:J = 0xfa0L

.field private static final MAX_ATTEMPTS:I = 0x3

.field private static final MAX_CACHE_ENTRIES:I = 0x8

.field private static final NETWORK:Ljava/util/concurrent/ExecutorService;

.field private static final PC_UA:Ljava/lang/String; = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36"

.field private static final REFRESH_INTERVAL_MS:J = 0xea60L

.field private static final RETRY_INTERVAL_MS:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "NextPrefetch"

.field private static final TICKER:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final TICK_MS:J = 0x3e8L

.field private static final TRIGGER_REMAIN_MS:J = 0x9c40L

.field private static final TTL_MS:J = 0x1d4c0L

.field private static final WARM_BYTES:I = 0x8000

.field private static volatile attempts:I

.field private static volatile diagnosed:Z

.field private static volatile earlyDone:Z

.field private static volatile lastAttemptAt:J

.field private static volatile lastPgcQn:I

.field private static volatile lastRefreshAt:J

.field private static volatile lastSkipLogAt:J

.field private static volatile lastUgcQn:I

.field private static volatile pendingKey:Ljava/lang/String;

.field private static volatile providerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbl/PlayUrlPrefetch$StateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile startedAt:J

.field private static volatile tickFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lbl/PlayUrlPrefetch;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lbl/PlayUrlPrefetch;->INFLIGHT:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lbl/PlayUrlPrefetch;->GENERATION:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Lbl/PlayUrlPrefetch$1;

    invoke-direct {v0}, Lbl/PlayUrlPrefetch$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lbl/PlayUrlPrefetch;->NETWORK:Ljava/util/concurrent/ExecutorService;

    .line 79
    new-instance v0, Lbl/PlayUrlPrefetch$2;

    invoke-direct {v0}, Lbl/PlayUrlPrefetch$2;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lbl/PlayUrlPrefetch;->TICKER:Ljava/util/concurrent/ScheduledExecutorService;

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbl/PlayUrlPrefetch;->providerRef:Ljava/lang/ref/WeakReference;

    .line 93
    sput-wide v4, Lbl/PlayUrlPrefetch;->startedAt:J

    .line 94
    sput-boolean v2, Lbl/PlayUrlPrefetch;->earlyDone:Z

    .line 95
    sput-wide v4, Lbl/PlayUrlPrefetch;->lastRefreshAt:J

    .line 97
    sput-wide v4, Lbl/PlayUrlPrefetch;->lastSkipLogAt:J

    .line 98
    sput-boolean v2, Lbl/PlayUrlPrefetch;->diagnosed:Z

    .line 100
    sput v2, Lbl/PlayUrlPrefetch;->lastUgcQn:I

    .line 101
    sput v2, Lbl/PlayUrlPrefetch;->lastPgcQn:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lbl/PlayUrlPrefetch;->tick()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;IZI)V
    .locals 0

    .prologue
    .line 41
    invoke-static/range {p0 .. p5}, Lbl/PlayUrlPrefetch;->doPrefetch(Landroid/content/Context;Ljava/lang/String;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;IZI)V

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 5

    .prologue
    .line 199
    const-class v1, Lbl/PlayUrlPrefetch;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lbl/PlayUrlPrefetch;->GENERATION:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 200
    sget-object v0, Lbl/PlayUrlPrefetch;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 201
    sget-object v0, Lbl/PlayUrlPrefetch;->INFLIGHT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 202
    if-eqz v0, :cond_18

    .line 203
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    goto :goto_18

    .line 199
    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 206
    :cond_2e
    :try_start_2e
    sget-object v0, Lbl/PlayUrlPrefetch;->INFLIGHT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 207
    const/4 v0, 0x0

    sput-object v0, Lbl/PlayUrlPrefetch;->pendingKey:Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    sput v0, Lbl/PlayUrlPrefetch;->attempts:I

    .line 209
    const-string v0, "NextPrefetch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CLEAR] generation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_2e .. :try_end_51} :catchall_2b

    .line 210
    monitor-exit v1

    return-void
.end method

.method private static doPrefetch(Landroid/content/Context;Ljava/lang/String;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;IZI)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 423
    .line 425
    if-eqz p4, :cond_2e

    .line 426
    :try_start_3
    iget-wide v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-wide v4, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    iget-wide v6, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    move-object v1, p0

    move v8, p3

    invoke-static/range {v1 .. v8}, Lbl/qh;->prefetchResponse(Landroid/content/Context;JJJI)Lbl/qi;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_39
    .catchall {:try_start_3 .. :try_end_e} :catchall_59

    move-result-object v0

    .line 433
    :goto_f
    sget-object v1, Lbl/PlayUrlPrefetch;->INFLIGHT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 436
    :goto_15
    if-nez v1, :cond_63

    .line 438
    const-class v1, Lbl/PlayUrlPrefetch;

    monitor-enter v1

    .line 439
    :try_start_1a
    sget-object v0, Lbl/PlayUrlPrefetch;->pendingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 440
    const/4 v0, 0x0

    sput-object v0, Lbl/PlayUrlPrefetch;->pendingKey:Ljava/lang/String;

    .line 442
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_60

    .line 443
    const-string v0, "NextPrefetch"

    const-string v1, "[FETCH] empty response, will fall back to normal resolve"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_2d
    return-void

    .line 428
    :cond_2e
    :try_start_2e
    iget-wide v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-wide v4, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    move-object v1, p0

    move v6, p3

    invoke-static/range {v1 .. v6}, Lbl/ql;->prefetchResponse(Landroid/content/Context;JJI)Lbl/qm;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_37} :catch_39
    .catchall {:try_start_2e .. :try_end_37} :catchall_59

    move-result-object v0

    goto :goto_f

    .line 430
    :catch_39
    move-exception v0

    .line 431
    :try_start_3a
    const-string v1, "NextPrefetch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FETCH] failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_59

    .line 433
    sget-object v0, Lbl/PlayUrlPrefetch;->INFLIGHT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v9

    .line 434
    goto :goto_15

    .line 433
    :catchall_59
    move-exception v0

    sget-object v1, Lbl/PlayUrlPrefetch;->INFLIGHT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    throw v0

    .line 442
    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0

    .line 446
    :cond_63
    sget-object v0, Lbl/PlayUrlPrefetch;->GENERATION:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p5, v0, :cond_73

    .line 447
    const-string v0, "NextPrefetch"

    const-string v1, "[FETCH] stale generation, drop result"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 451
    :cond_73
    invoke-static {}, Lbl/PlayUrlPrefetch;->pruneCache()V

    .line 452
    sget-object v0, Lbl/PlayUrlPrefetch;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lbl/PlayUrlPrefetch$Cached;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v1, v4, v5, p5}, Lbl/PlayUrlPrefetch$Cached;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const/4 v0, 0x0

    sput v0, Lbl/PlayUrlPrefetch;->attempts:I

    .line 454
    const-string v0, "NextPrefetch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[READY] cached key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x0

    :try_start_a0
    invoke-virtual {p2, v0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->initPlayInfo(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams$PlayInfoCallback;)V

    .line 460
    const-string v0, "NextPrefetch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[READY] play info warmed for cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_bd} :catch_c4

    .line 468
    :goto_bd
    iget-wide v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v1, p3, v2, v3}, Lbl/PlayUrlPrefetch;->warmFirstSegment(Ljava/lang/Object;IJ)V

    goto/16 :goto_2d

    .line 461
    :catch_c4
    move-exception v0

    .line 462
    const-string v2, "NextPrefetch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WARM] play info failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd
.end method

.method private static extractVideoUrl(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 473
    .line 474
    instance-of v2, p0, Lbl/qm;

    if-eqz v2, :cond_12

    .line 475
    check-cast p0, Lbl/qm;

    iget-object v2, p0, Lbl/qm;->b:[B

    move-object v3, v2

    .line 479
    :goto_b
    if-eqz v3, :cond_10

    array-length v2, v3

    if-nez v2, :cond_1c

    :cond_10
    move-object v0, v1

    .line 529
    :cond_11
    :goto_11
    return-object v0

    .line 476
    :cond_12
    instance-of v2, p0, Lbl/qi;

    if-eqz v2, :cond_dd

    .line 477
    check-cast p0, Lbl/qi;

    iget-object v2, p0, Lbl/qi;->b:[B

    move-object v3, v2

    goto :goto_b

    .line 483
    :cond_1c
    :try_start_1c
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 484
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 485
    if-nez v3, :cond_36

    .line 486
    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 488
    :cond_36
    if-nez v3, :cond_da

    .line 491
    :goto_38
    const-string v3, "dash"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 492
    if-nez v2, :cond_42

    move-object v0, v1

    .line 493
    goto :goto_11

    .line 495
    :cond_42
    const-string v3, "video"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 496
    if-eqz v3, :cond_50

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_52

    :cond_50
    move-object v0, v1

    .line 497
    goto :goto_11

    :cond_52
    move v2, v0

    .line 500
    :goto_53
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_d8

    .line 501
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_73

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_73

    .line 507
    :goto_67
    if-nez v0, :cond_d6

    .line 508
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v2, v0

    .line 510
    :goto_6f
    if-nez v2, :cond_77

    move-object v0, v1

    .line 511
    goto :goto_11

    .line 500
    :cond_73
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_53

    .line 513
    :cond_77
    const-string v0, "base_url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_85

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8b

    .line 515
    :cond_85
    const-string v0, "baseUrl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    :cond_8b
    if-eqz v0, :cond_93

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_96

    :cond_93
    move-object v0, v1

    .line 518
    goto/16 :goto_11

    .line 521
    :cond_96
    const-string v2, "platform=android_tv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 522
    const-string v2, "platform=android_tv"

    const-string v3, "platform=pc"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    .line 523
    :cond_a8
    const-string v2, "platform=android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 524
    const-string v2, "platform=android"

    const-string v3, "platform=pc"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_b7} :catch_ba

    move-result-object v0

    goto/16 :goto_11

    .line 527
    :catch_ba
    move-exception v0

    .line 528
    const-string v2, "NextPrefetch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WARM_SEG] parse playurl response failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 529
    goto/16 :goto_11

    :cond_d6
    move-object v2, v0

    goto :goto_6f

    :cond_d8
    move-object v0, v1

    goto :goto_67

    :cond_da
    move-object v2, v3

    goto/16 :goto_38

    :cond_dd
    move-object v3, v1

    goto/16 :goto_b
.end method

.method private static getLastQn(Z)I
    .locals 1

    .prologue
    .line 124
    if-eqz p0, :cond_5

    sget v0, Lbl/PlayUrlPrefetch;->lastPgcQn:I

    :goto_4
    return v0

    :cond_5
    sget v0, Lbl/PlayUrlPrefetch;->lastUgcQn:I

    goto :goto_4
.end method

.method private static isPgc(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Z
    .locals 1

    .prologue
    .line 641
    :try_start_0
    invoke-virtual {p0}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isBangumi()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 643
    :goto_4
    return v0

    .line 642
    :catch_5
    move-exception v0

    .line 643
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static key(JJJIZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 595
    :try_start_0
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_5b

    const-string v1, "SESSDATA="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "1"
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_5e

    .line 600
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p7, :cond_62

    const/4 v1, 0x1

    :goto_48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 596
    :cond_5b
    :try_start_5b
    const-string v0, "0"
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5d} :catch_5e

    goto :goto_18

    .line 597
    :catch_5e
    move-exception v0

    .line 598
    const-string v0, "?"

    goto :goto_18

    .line 600
    :cond_62
    const/4 v1, 0x0

    goto :goto_48
.end method

.method public static noteResolvedQn(IZ)V
    .locals 1

    .prologue
    .line 108
    if-lez p0, :cond_11

    .line 109
    if-eqz p1, :cond_12

    sget v0, Lbl/PlayUrlPrefetch;->lastPgcQn:I

    .line 110
    :goto_6
    if-eqz p1, :cond_15

    .line 111
    sput p0, Lbl/PlayUrlPrefetch;->lastPgcQn:I

    .line 115
    :goto_a
    if-lez v0, :cond_11

    if-eq v0, p0, :cond_11

    .line 118
    invoke-static {}, Lbl/PlayUrlPrefetch;->clear()V

    .line 121
    :cond_11
    return-void

    .line 109
    :cond_12
    sget v0, Lbl/PlayUrlPrefetch;->lastUgcQn:I

    goto :goto_6

    .line 113
    :cond_15
    sput p0, Lbl/PlayUrlPrefetch;->lastUgcQn:I

    goto :goto_a
.end method

.method private static pruneCache()V
    .locals 10

    .prologue
    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 219
    sget-object v0, Lbl/PlayUrlPrefetch;->GENERATION:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 220
    sget-object v0, Lbl/PlayUrlPrefetch;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_14
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 221
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbl/PlayUrlPrefetch$Cached;

    .line 222
    if-eqz v1, :cond_37

    iget v6, v1, Lbl/PlayUrlPrefetch$Cached;->generation:I

    if-ne v6, v4, :cond_37

    iget-wide v6, v1, Lbl/PlayUrlPrefetch$Cached;->createdAt:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0x1d4c0

    cmp-long v6, v6, v8

    if-lez v6, :cond_14

    .line 223
    :cond_37
    sget-object v6, Lbl/PlayUrlPrefetch;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_14

    .line 239
    :cond_41
    sget-object v0, Lbl/PlayUrlPrefetch;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_46
    sget-object v0, Lbl/PlayUrlPrefetch;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_86

    .line 227
    const/4 v4, 0x0

    .line 228
    const-wide v2, 0x7fffffffffffffffL

    .line 229
    sget-object v0, Lbl/PlayUrlPrefetch;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_60
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbl/PlayUrlPrefetch$Cached;

    .line 231
    if-eqz v1, :cond_87

    iget-wide v6, v1, Lbl/PlayUrlPrefetch$Cached;->createdAt:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_87

    .line 232
    iget-wide v2, v1, Lbl/PlayUrlPrefetch$Cached;->createdAt:J

    .line 233
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_82
    move-object v4, v0

    .line 235
    goto :goto_60

    .line 236
    :cond_84
    if-nez v4, :cond_41

    .line 241
    :cond_86
    return-void

    :cond_87
    move-object v0, v4

    goto :goto_82
.end method

.method public static declared-synchronized release()V
    .locals 3

    .prologue
    .line 250
    const-class v1, Lbl/PlayUrlPrefetch;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lbl/PlayUrlPrefetch;->clear()V

    .line 251
    invoke-static {}, Lbl/PlayUrlPrefetch;->stop()V

    .line 252
    const-string v0, "NextPrefetch"

    const-string v2, "[RELEASE] prefetch resources released"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 253
    monitor-exit v1

    return-void

    .line 250
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static skip(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 191
    sget-wide v2, Lbl/PlayUrlPrefetch;->lastSkipLogAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_28

    .line 192
    sput-wide v0, Lbl/PlayUrlPrefetch;->lastSkipLogAt:J

    .line 193
    const-string v0, "NextPrefetch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SKIP] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_28
    return-void
.end method

.method public static declared-synchronized start(Landroid/content/Context;Lbl/PlayUrlPrefetch$StateProvider;)V
    .locals 8

    .prologue
    .line 154
    const-class v7, Lbl/PlayUrlPrefetch;

    monitor-enter v7

    :try_start_3
    invoke-static {}, Lbl/PlayUrlPrefetch;->stopTicker()V

    .line 155
    invoke-static {}, Lbl/PlayUrlPrefetch;->pruneCache()V

    .line 156
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbl/PlayUrlPrefetch;->providerRef:Ljava/lang/ref/WeakReference;

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lbl/PlayUrlPrefetch;->pendingKey:Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    sput v0, Lbl/PlayUrlPrefetch;->attempts:I

    .line 159
    const-wide/16 v0, 0x0

    sput-wide v0, Lbl/PlayUrlPrefetch;->lastAttemptAt:J

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lbl/PlayUrlPrefetch;->startedAt:J

    .line 161
    const/4 v0, 0x0

    sput-boolean v0, Lbl/PlayUrlPrefetch;->earlyDone:Z

    .line 162
    const-wide/16 v0, 0x0

    sput-wide v0, Lbl/PlayUrlPrefetch;->lastRefreshAt:J

    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lbl/PlayUrlPrefetch;->diagnosed:Z

    .line 164
    const-wide/16 v0, 0x0

    sput-wide v0, Lbl/PlayUrlPrefetch;->lastSkipLogAt:J

    .line 165
    if-eqz p1, :cond_34

    sget-boolean v0, Lmybl/BiliFilter;->next_episode_prefetch:Z

    if-nez v0, :cond_3d

    .line 166
    :cond_34
    const-string v0, "NextPrefetch"

    const-string v1, "[START] disabled by BiliFilter.next_episode_prefetch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_8b

    .line 186
    :goto_3b
    monitor-exit v7

    return-void

    .line 170
    :cond_3d
    :try_start_3d
    sget-object v0, Lbl/PlayUrlPrefetch;->TICKER:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lbl/PlayUrlPrefetch$3;

    invoke-direct {v1}, Lbl/PlayUrlPrefetch$3;-><init>()V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lbl/PlayUrlPrefetch;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 180
    const-string v0, "NextPrefetch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[START] ticker started, early=2000ms, threshold=40000ms, provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_70} :catch_71
    .catchall {:try_start_3d .. :try_end_70} :catchall_8b

    goto :goto_3b

    .line 183
    :catch_71
    move-exception v0

    .line 184
    :try_start_72
    const-string v1, "NextPrefetch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[START] failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_72 .. :try_end_8a} :catchall_8b

    goto :goto_3b

    .line 154
    :catchall_8b
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized stop()V
    .locals 3

    .prologue
    .line 264
    const-class v1, Lbl/PlayUrlPrefetch;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lbl/PlayUrlPrefetch;->stopTicker()V

    .line 265
    invoke-static {}, Lbl/PlayUrlPrefetch;->pruneCache()V

    .line 266
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbl/PlayUrlPrefetch;->providerRef:Ljava/lang/ref/WeakReference;

    .line 267
    const/4 v0, 0x0

    sput-object v0, Lbl/PlayUrlPrefetch;->pendingKey:Ljava/lang/String;

    .line 268
    const/4 v0, 0x1

    sput-boolean v0, Lbl/PlayUrlPrefetch;->earlyDone:Z
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 269
    monitor-exit v1

    return-void

    .line 264
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized stopTicker()V
    .locals 3

    .prologue
    .line 256
    const-class v1, Lbl/PlayUrlPrefetch;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lbl/PlayUrlPrefetch;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_10

    .line 257
    sget-object v0, Lbl/PlayUrlPrefetch;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 258
    const/4 v0, 0x0

    sput-object v0, Lbl/PlayUrlPrefetch;->tickFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 260
    :cond_10
    monitor-exit v1

    return-void

    .line 256
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static take(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .prologue
    const-wide/32 v6, 0x1d4c0

    const/4 v1, 0x0

    .line 608
    if-eqz p0, :cond_a

    sget-boolean v0, Lmybl/BiliFilter;->next_episode_prefetch:Z

    if-nez v0, :cond_c

    :cond_a
    move-object v0, v1

    .line 636
    :goto_b
    return-object v0

    .line 611
    :cond_c
    sget-object v0, Lbl/PlayUrlPrefetch;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/PlayUrlPrefetch$Cached;

    .line 612
    if-eqz v0, :cond_5e

    .line 613
    iget v2, v0, Lbl/PlayUrlPrefetch$Cached;->generation:I

    sget-object v3, Lbl/PlayUrlPrefetch;->GENERATION:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v2, v3, :cond_46

    .line 614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lbl/PlayUrlPrefetch$Cached;->createdAt:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gtz v2, :cond_46

    .line 615
    const-string v1, "NextPrefetch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HIT] key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, v0, Lbl/PlayUrlPrefetch$Cached;->response:Ljava/lang/Object;

    goto :goto_b

    .line 618
    :cond_46
    const-string v0, "NextPrefetch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EXPIRED] key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_5e
    sget-object v0, Lbl/PlayUrlPrefetch;->INFLIGHT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 622
    if-eqz v0, :cond_e2

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_e2

    .line 623
    const-string v2, "NextPrefetch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INFLIGHT] waiting for in-flight prefetch, key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-wide/16 v2, 0xfa0

    :try_start_88
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_8d} :catch_c8

    .line 629
    :goto_8d
    sget-object v0, Lbl/PlayUrlPrefetch;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/PlayUrlPrefetch$Cached;

    .line 630
    if-eqz v0, :cond_e2

    iget v2, v0, Lbl/PlayUrlPrefetch$Cached;->generation:I

    sget-object v3, Lbl/PlayUrlPrefetch;->GENERATION:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v2, v3, :cond_e2

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lbl/PlayUrlPrefetch$Cached;->createdAt:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gtz v2, :cond_e2

    .line 632
    const-string v1, "NextPrefetch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INFLIGHT_HIT] key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, v0, Lbl/PlayUrlPrefetch$Cached;->response:Ljava/lang/Object;

    goto/16 :goto_b

    .line 626
    :catch_c8
    move-exception v0

    .line 627
    const-string v2, "NextPrefetch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INFLIGHT] wait ended: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :cond_e2
    move-object v0, v1

    .line 636
    goto/16 :goto_b
.end method

.method private static tick()V
    .locals 18

    .prologue
    .line 272
    sget-boolean v0, Lmybl/BiliFilter;->next_episode_prefetch:Z

    if-nez v0, :cond_5

    .line 419
    :cond_4
    :goto_4
    return-void

    .line 275
    :cond_5
    sget-object v0, Lbl/PlayUrlPrefetch;->providerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/PlayUrlPrefetch$StateProvider;

    .line 276
    if-nez v0, :cond_1a

    .line 277
    const-string v0, "NextPrefetch"

    const-string v1, "[STOP] provider collected by GC, stopping ticker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lbl/PlayUrlPrefetch;->stopTicker()V

    goto :goto_4

    .line 282
    :cond_1a
    const/4 v2, 0x0

    .line 283
    const/4 v1, 0x0

    .line 285
    :try_start_1c
    invoke-interface {v0}, Lbl/PlayUrlPrefetch$StateProvider;->currentPositionMs()I

    move-result v2

    .line 286
    invoke-interface {v0}, Lbl/PlayUrlPrefetch$StateProvider;->durationMs()I
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_23} :catch_33d

    move-result v1

    .line 291
    :goto_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 297
    sget-boolean v3, Lbl/PlayUrlPrefetch;->earlyDone:Z

    if-nez v3, :cond_e6

    sget-wide v4, Lbl/PlayUrlPrefetch;->startedAt:J

    sub-long v4, v12, v4

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_e6

    const/4 v3, 0x1

    move v9, v3

    .line 299
    :goto_38
    if-lez v1, :cond_ea

    if-ltz v2, :cond_ea

    if-ge v2, v1, :cond_ea

    .line 300
    sub-int v3, v1, v2

    int-to-long v4, v3

    move-wide v10, v4

    .line 301
    :goto_42
    const-wide/32 v4, 0x9c40

    cmp-long v3, v10, v4

    if-gtz v3, :cond_f2

    const/4 v3, 0x1

    move v8, v3

    .line 302
    :goto_4b
    if-nez v9, :cond_4f

    if-eqz v8, :cond_4

    .line 305
    :cond_4f
    sget-boolean v3, Lbl/PlayUrlPrefetch;->diagnosed:Z

    if-nez v3, :cond_b5

    .line 306
    const/4 v3, 0x1

    sput-boolean v3, Lbl/PlayUrlPrefetch;->diagnosed:Z

    .line 307
    const-string v3, "NextPrefetch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DIAG] pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", dur="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 308
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v10, v4

    if-nez v1, :cond_f6

    const-string v1, "unknown"

    :goto_82
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", early="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nearEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", elapsedSinceStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lbl/PlayUrlPrefetch;->startedAt:J

    sub-long v4, v12, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_b5
    if-nez v9, :cond_10b

    if-eqz v8, :cond_10b

    sget-wide v2, Lbl/PlayUrlPrefetch;->lastRefreshAt:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_10b

    sget-wide v2, Lbl/PlayUrlPrefetch;->lastRefreshAt:J

    sub-long v2, v12, v2

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-gez v1, :cond_10b

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh throttled, lastRefreshAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lbl/PlayUrlPrefetch;->lastRefreshAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/PlayUrlPrefetch;->skip(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 297
    :cond_e6
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_38

    .line 300
    :cond_ea
    const-wide v4, 0x7fffffffffffffffL

    move-wide v10, v4

    goto/16 :goto_42

    .line 301
    :cond_f2
    const/4 v3, 0x0

    move v8, v3

    goto/16 :goto_4b

    .line 308
    :cond_f6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_82

    .line 323
    :cond_10b
    :try_start_10b
    invoke-interface {v0}, Lbl/PlayUrlPrefetch$StateProvider;->currentEpisode()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v14

    .line 324
    invoke-interface {v0}, Lbl/PlayUrlPrefetch$StateProvider;->episodeList()[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v3

    .line 325
    invoke-interface {v0}, Lbl/PlayUrlPrefetch$StateProvider;->expectedQuality()I
    :try_end_116
    .catch Ljava/lang/Throwable; {:try_start_10b .. :try_end_116} :catch_148

    move-result v1

    .line 330
    if-eqz v14, :cond_11f

    if-eqz v3, :cond_11f

    array-length v0, v3

    const/4 v2, 0x2

    if-ge v0, v2, :cond_169

    .line 331
    :cond_11f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "episode list unavailable: current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v14, :cond_161

    const/4 v0, 0x1

    :goto_12d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 332
    if-nez v3, :cond_163

    const-string v0, "null"

    :goto_13b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v0}, Lbl/PlayUrlPrefetch;->skip(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 326
    :catch_148
    move-exception v0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider access threw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/PlayUrlPrefetch;->skip(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 331
    :cond_161
    const/4 v0, 0x0

    goto :goto_12d

    .line 332
    :cond_163
    array-length v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13b

    .line 337
    :cond_169
    const/4 v2, -0x1

    .line 338
    const/4 v0, 0x0

    :goto_16b
    array-length v4, v3

    if-ge v0, v4, :cond_343

    .line 339
    aget-object v4, v3, v0

    if-eqz v4, :cond_1b2

    aget-object v4, v3, v0

    iget-wide v4, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-wide v6, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1b2

    .line 344
    :goto_17c
    if-ltz v0, :cond_183

    add-int/lit8 v2, v0, 0x1

    array-length v4, v3

    if-lt v2, v4, :cond_1b5

    .line 345
    :cond_183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no next episode: currentCid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/PlayUrlPrefetch;->skip(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 338
    :cond_1b2
    add-int/lit8 v0, v0, 0x1

    goto :goto_16b

    .line 350
    :cond_1b5
    add-int/lit8 v0, v0, 0x1

    aget-object v15, v3, v0

    .line 351
    if-eqz v15, :cond_1c3

    iget-wide v2, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1ca

    .line 352
    :cond_1c3
    const-string v0, "next episode cid invalid"

    invoke-static {v0}, Lbl/PlayUrlPrefetch;->skip(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 356
    :cond_1ca
    invoke-static {v15}, Lbl/PlayUrlPrefetch;->isPgc(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)Z

    move-result v7

    .line 358
    invoke-static {v7}, Lbl/PlayUrlPrefetch;->getLastQn(Z)I

    move-result v6

    .line 359
    if-lez v6, :cond_340

    .line 362
    :goto_1d4
    if-gtz v6, :cond_1dd

    .line 363
    iget v0, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    if-lez v0, :cond_20f

    iget v0, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    :goto_1dc
    move v6, v0

    .line 366
    :cond_1dd
    iget-wide v0, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    iget-wide v2, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    iget-wide v4, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    invoke-static/range {v0 .. v7}, Lbl/PlayUrlPrefetch;->key(JJJIZ)Ljava/lang/String;

    move-result-object v4

    .line 369
    sget-object v0, Lbl/PlayUrlPrefetch;->INFLIGHT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 370
    if-eqz v0, :cond_212

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_212

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefetch already in flight, key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/PlayUrlPrefetch;->skip(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 363
    :cond_20f
    const/16 v0, 0x40

    goto :goto_1dc

    .line 375
    :cond_212
    sget-object v0, Lbl/PlayUrlPrefetch;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/PlayUrlPrefetch$Cached;

    .line 376
    if-eqz v0, :cond_24c

    iget v1, v0, Lbl/PlayUrlPrefetch$Cached;->generation:I

    sget-object v2, Lbl/PlayUrlPrefetch;->GENERATION:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v1, v2, :cond_24c

    iget-wide v2, v0, Lbl/PlayUrlPrefetch$Cached;->createdAt:J

    sub-long v2, v12, v2

    const-wide/32 v16, 0x1d4c0

    cmp-long v1, v2, v16

    if-gtz v1, :cond_24c

    const/4 v1, 0x1

    .line 378
    :goto_232
    if-eqz v1, :cond_24e

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fresh cache already present, key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/PlayUrlPrefetch;->skip(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 376
    :cond_24c
    const/4 v1, 0x0

    goto :goto_232

    .line 382
    :cond_24e
    if-eqz v0, :cond_255

    .line 383
    sget-object v0, Lbl/PlayUrlPrefetch;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_255
    sget v0, Lbl/PlayUrlPrefetch;->attempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_27a

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max attempts reached ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lbl/PlayUrlPrefetch;->attempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/PlayUrlPrefetch;->skip(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 389
    :cond_27a
    sget-wide v0, Lbl/PlayUrlPrefetch;->lastAttemptAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_293

    sget-wide v0, Lbl/PlayUrlPrefetch;->lastAttemptAt:J

    sub-long v0, v12, v0

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_293

    .line 390
    const-string v0, "retry interval not elapsed"

    invoke-static {v0}, Lbl/PlayUrlPrefetch;->skip(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 394
    :cond_293
    sget v0, Lbl/PlayUrlPrefetch;->attempts:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbl/PlayUrlPrefetch;->attempts:I

    .line 395
    sput-wide v12, Lbl/PlayUrlPrefetch;->lastAttemptAt:J

    .line 396
    sput-object v4, Lbl/PlayUrlPrefetch;->pendingKey:Ljava/lang/String;

    .line 397
    if-eqz v9, :cond_2a2

    .line 398
    const/4 v0, 0x1

    sput-boolean v0, Lbl/PlayUrlPrefetch;->earlyDone:Z

    .line 400
    :cond_2a2
    if-eqz v8, :cond_2a6

    .line 401
    sput-wide v12, Lbl/PlayUrlPrefetch;->lastRefreshAt:J

    .line 403
    :cond_2a6
    sget-object v0, Lbl/PlayUrlPrefetch;->GENERATION:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    .line 405
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    .line 407
    const-string v1, "NextPrefetch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_326

    const-string v0, "[TRIGGER_EARLY]"

    :goto_2bb
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " remaining="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 408
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v0, v10, v12

    if-nez v0, :cond_329

    const-string v0, "unknown"

    :goto_2d0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v10, v14, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> next cid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v10, v15, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", qn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pgc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", attempt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lbl/PlayUrlPrefetch;->attempts:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget-object v0, Lbl/PlayUrlPrefetch;->NETWORK:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lbl/PlayUrlPrefetch$4;

    move-object v5, v15

    invoke-direct/range {v2 .. v8}, Lbl/PlayUrlPrefetch$4;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;IZI)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 418
    sget-object v1, Lbl/PlayUrlPrefetch;->INFLIGHT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 407
    :cond_326
    const-string v0, "[TRIGGER_REFRESH]"

    goto :goto_2bb

    .line 408
    :cond_329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ms"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d0

    .line 287
    :catch_33d
    move-exception v3

    goto/16 :goto_24

    :cond_340
    move v6, v1

    goto/16 :goto_1d4

    :cond_343
    move v0, v2

    goto/16 :goto_17c
.end method

.method private static warmFirstSegment(Ljava/lang/Object;IJ)V
    .locals 12

    .prologue
    const v11, 0x8000

    const/4 v1, 0x0

    .line 535
    sget-boolean v0, Lmybl/BiliFilter;->warm_next_segment:Z

    if-nez v0, :cond_10

    .line 536
    const-string v0, "NextPrefetch"

    const-string v1, "[WARM_SEG] disabled by BiliFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_f
    :goto_f
    return-void

    .line 539
    :cond_10
    invoke-static {p0, p1}, Lbl/PlayUrlPrefetch;->extractVideoUrl(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    .line 540
    if-nez v0, :cond_2f

    .line 541
    const-string v0, "NextPrefetch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARM_SEG] no dash video url found, skip cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 544
    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 545
    const/4 v3, 0x0

    .line 546
    const-string v2, "?"

    .line 548
    :try_start_36
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_45} :catch_150
    .catchall {:try_start_36 .. :try_end_45} :catchall_145

    .line 551
    :try_start_45
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 552
    const-string v3, "User-Agent"

    const-string v6, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36"

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v3, "Referer"

    const-string v6, "https://www.bilibili.com/"

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v3

    invoke-static {v3}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v3

    .line 555
    if-eqz v3, :cond_71

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_71

    .line 556
    const-string v6, "Cookie"

    invoke-virtual {v0, v6, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_71
    const-string v3, "Range"

    const-string v6, "bytes=0-32767"

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/16 v3, 0x7d0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 560
    const/16 v3, 0x7d0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 561
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 562
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 564
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_8d} :catch_100
    .catchall {:try_start_45 .. :try_end_8d} :catchall_14d

    move-result-object v6

    .line 565
    if-eqz v6, :cond_a7

    .line 567
    const/16 v7, 0x1000

    :try_start_92
    new-array v7, v7, [B

    .line 568
    :goto_94
    if-ge v1, v11, :cond_a4

    .line 569
    const/4 v8, 0x0

    array-length v9, v7

    sub-int v10, v11, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/InputStream;->read([BII)I
    :try_end_a1
    .catchall {:try_start_92 .. :try_end_a1} :catchall_fb

    move-result v8

    .line 570
    if-gez v8, :cond_f9

    .line 576
    :cond_a4
    :try_start_a4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 579
    :cond_a7
    const-string v6, "PlaySpeed"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WARM_SEG] cid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", host="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", bytes="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", elapsed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_f2} :catch_100
    .catchall {:try_start_a4 .. :try_end_f2} :catchall_14d

    .line 585
    if-eqz v0, :cond_f

    .line 586
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_f

    .line 573
    :cond_f9
    add-int/2addr v1, v8

    .line 574
    goto :goto_94

    .line 576
    :catchall_fb
    move-exception v1

    :try_start_fc
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 577
    throw v1
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_100} :catch_100
    .catchall {:try_start_fc .. :try_end_100} :catchall_14d

    .line 581
    :catch_100
    move-exception v1

    move-object v3, v0

    .line 582
    :goto_102
    :try_start_102
    const-string v0, "NextPrefetch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WARM_SEG] failed cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", host="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", elapsed="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catchall {:try_start_102 .. :try_end_13e} :catchall_145

    .line 585
    if-eqz v3, :cond_f

    .line 586
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_f

    .line 585
    :catchall_145
    move-exception v0

    move-object v1, v0

    :goto_147
    if-eqz v3, :cond_14c

    .line 586
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 588
    :cond_14c
    throw v1

    .line 585
    :catchall_14d
    move-exception v1

    move-object v3, v0

    goto :goto_147

    .line 581
    :catch_150
    move-exception v0

    move-object v1, v0

    goto :goto_102
.end method
