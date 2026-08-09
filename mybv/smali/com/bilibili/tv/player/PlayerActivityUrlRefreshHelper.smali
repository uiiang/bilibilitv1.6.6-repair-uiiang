.class public Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;
.super Ljava/lang/Object;
.source "PlayerActivityUrlRefreshHelper.java"


# static fields
.field private static final ERROR_REFRESH_COOLDOWN_MS:J = 0x1388L

.field private static final MAX_ERROR_REFRESH_ATTEMPTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PlayerUrlRefresh"

.field private static bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

.field private static currentInstance:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;


# instance fields
.field private context:Landroid/content/Context;

.field private errorRefreshAttemptCount:I

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private lastErrorRefreshTime:J

.field private mainHandler:Landroid/os/Handler;

.field private playerController:Lbl/xh;

.field private playerParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

.field private scheduler:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->errorRefreshAttemptCount:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->lastErrorRefreshTime:J

    .line 69
    new-instance v0, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    invoke-direct {v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->scheduler:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->mainHandler:Landroid/os/Handler;

    .line 72
    sput-object p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->currentInstance:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    .line 73
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "Helper created, scheduler initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->reloadStreamInBackground()V

    return-void
.end method

.method static synthetic access$100()Lcom/bilibili/tv/player/BufferingOverlayController;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;Lcom/bilibili/lib/media/resource/MediaResource;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->updateMediaResourceAndSeek(Lcom/bilibili/lib/media/resource/MediaResource;I)V

    return-void
.end method

.method public static getBufferingOverlayController()Lcom/bilibili/tv/player/BufferingOverlayController;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    return-object v0
.end method

.method private getMediaPlayerFromContext(Ltv/danmaku/videoplayer/core/context/IPlayerContext;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getMediaPlayer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 146
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    const-string v2, "PlayerUrlRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[REFLECTION] getMediaPlayer() returned: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_2b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_36
    return-object v0

    .line 147
    :cond_37
    const-string v1, "null"
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_2b

    .line 149
    :catch_3a
    move-exception v0

    .line 150
    const-string v1, "PlayerUrlRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[REFLECTION] Failed to get MediaPlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    const/4 v0, 0x0

    goto :goto_36
.end method

.method private isUrlExpiredError(ILjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 494
    const-string v1, "PlayerUrlRefresh"

    const-string v2, "[ERROR_CHECK] Checking if error indicates URL expiration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v1, "PlayerUrlRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERROR_CHECK] errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/16 v1, 0x193

    if-eq p1, v1, :cond_2c

    const/16 v1, 0x194

    if-eq p1, v1, :cond_2c

    const/16 v1, 0x19a

    if-ne p1, v1, :cond_45

    .line 498
    :cond_2c
    const-string v1, "PlayerUrlRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERROR_CHECK] HTTP error code indicates URL expiration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_44
    return v0

    .line 502
    :cond_45
    if-eqz p2, :cond_ca

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ca

    .line 503
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 504
    const-string v2, "PlayerUrlRefresh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ERROR_CHECK] Checking error message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v2, "403"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "forbidden"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 507
    :cond_79
    const-string v1, "PlayerUrlRefresh"

    const-string v2, "[ERROR_CHECK] Message contains 403/forbidden"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 510
    :cond_81
    const-string v2, "404"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_91

    const-string v2, "not found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 511
    :cond_91
    const-string v1, "PlayerUrlRefresh"

    const-string v2, "[ERROR_CHECK] Message contains 404/not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 514
    :cond_99
    const-string v2, "410"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a9

    const-string v2, "gone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 515
    :cond_a9
    const-string v1, "PlayerUrlRefresh"

    const-string v2, "[ERROR_CHECK] Message contains 410/gone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 518
    :cond_b1
    const-string v2, "expired"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c1

    const-string v2, "timeout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 519
    :cond_c1
    const-string v1, "PlayerUrlRefresh"

    const-string v2, "[ERROR_CHECK] Message contains expired/timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 524
    :cond_ca
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[ERROR_CHECK] Error does not indicate URL expiration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v0, 0x0

    goto/16 :goto_44
.end method

.method private reloadStreamInBackground()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 334
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RELOAD_BG_START] Starting background reload"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :try_start_8
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerController:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_40

    .line 340
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getCurrentPosition()I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_49

    move-result v0

    .line 341
    :try_start_14
    const-string v1, "PlayerUrlRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RELOAD_POSITION] Current position saved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_32} :catch_12f

    .line 349
    :goto_32
    iget-object v1, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    .line 350
    if-nez v1, :cond_68

    .line 351
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RELOAD_ERROR] VideoViewParams is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_3f
    return-void

    .line 343
    :cond_40
    :try_start_40
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RELOAD_POSITION] PlayerContext is null, cannot get position"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_47} :catch_49

    move v0, v9

    goto :goto_32

    .line 345
    :catch_49
    move-exception v1

    move v0, v9

    .line 346
    :goto_4b
    const-string v2, "PlayerUrlRefresh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RELOAD_POSITION_ERROR] Failed to get current position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 355
    :cond_68
    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v11

    .line 356
    if-nez v11, :cond_76

    .line 357
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RELOAD_ERROR] ResolveResourceParams is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 361
    :cond_76
    iget-wide v2, v11, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 362
    iget-wide v4, v11, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 363
    iget v6, v11, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedQuality:I

    .line 364
    iget-object v7, v11, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mExpectedTypeTag:Ljava/lang/String;

    .line 365
    iget-object v8, v11, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    .line 366
    iget-object v10, v11, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mType:Ljava/lang/String;

    .line 368
    const-string v1, "PlayerUrlRefresh"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[RELOAD_PARAMS] avid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", cid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", qn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", from="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v1, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;

    invoke-direct/range {v1 .. v10}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;-><init>(JJILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 380
    invoke-virtual {v11}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->obtainResourceExtra()Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;

    .line 382
    const-string v1, "PlayerUrlRefresh"

    const-string v2, "[RELOAD_API] Creating media resolver..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v1, Lbl/ze;

    invoke-direct {v1}, Lbl/ze;-><init>()V

    .line 386
    const-string v2, "PlayerUrlRefresh"

    const-string v3, "[RELOAD_API] Calling resolveMediaResource()..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 389
    iget-object v4, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    const/4 v6, 0x3

    invoke-virtual {v1, v4, v5, v6}, Lbl/ze;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;I)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v1

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 392
    const-string v4, "PlayerUrlRefresh"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RELOAD_API_DONE] API call completed, elapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-nez v1, :cond_10f

    .line 395
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RELOAD_ERROR] New MediaResource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 399
    :cond_10f
    iget-object v2, v1, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    if-nez v2, :cond_11c

    .line 400
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RELOAD_ERROR] New MediaResource.dash is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 404
    :cond_11c
    const-string v2, "PlayerUrlRefresh"

    const-string v3, "[RELOAD_SUCCESS] New MediaResource obtained successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$4;-><init>(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;Lcom/bilibili/lib/media/resource/MediaResource;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3f

    .line 345
    :catch_12f
    move-exception v1

    goto/16 :goto_4b
.end method

.method public static setBufferingOverlayController(Lcom/bilibili/tv/player/BufferingOverlayController;)V
    .locals 3

    .prologue
    .line 47
    sput-object p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    .line 48
    const-string v1, "PlayerUrlRefresh"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BufferingOverlayController set: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_1f

    const-string v0, "not null"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 48
    :cond_1f
    const-string v0, "null"

    goto :goto_13
.end method

.method private setupErrorListener()V
    .locals 4

    .prologue
    .line 92
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[ERROR_LISTENER] Setting up error listener..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerController:Lbl/xh;

    if-nez v0, :cond_13

    .line 95
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[ERROR_LISTENER] PlayerController is null, cannot setup error listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_12
    return-void

    .line 100
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerController:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 101
    if-nez v0, :cond_44

    .line 102
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[ERROR_LISTENER] PlayerContext is null, cannot setup error listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_23

    goto :goto_12

    .line 137
    :catch_23
    move-exception v0

    .line 138
    const-string v1, "PlayerUrlRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERROR_LISTENER] Failed to setup error listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    .line 106
    :cond_44
    :try_start_44
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->getIVideoView()Ltv/danmaku/videoplayer/core/videoview/IVideoView;

    move-result-object v0

    .line 107
    if-nez v0, :cond_52

    .line 108
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[ERROR_LISTENER] VideoView is null, cannot setup error listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 112
    :cond_52
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/videoview/IVideoView;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 113
    if-nez v0, :cond_60

    .line 114
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[ERROR_LISTENER] MediaPlayer is null, cannot setup error listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 118
    :cond_60
    instance-of v1, v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v1, :cond_76

    .line 119
    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 122
    new-instance v1, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$1;-><init>(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setErrorListener(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;)V

    .line 133
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[ERROR_LISTENER] Error listener setup successfully for ExoPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 135
    :cond_76
    const-string v1, "PlayerUrlRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERROR_LISTENER] MediaPlayer is not ExoPlayerImpl, type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_96} :catch_23

    goto/16 :goto_12
.end method

.method public static shouldSuppressBufferingOverlay()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;->isSuppressed()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static triggerErrorRefresh(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    const-string v0, "PlayerUrlRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[STATIC_ERROR_REFRESH] Triggering error refresh: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->currentInstance:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    if-eqz v0, :cond_2c

    .line 62
    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->currentInstance:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    invoke-virtual {v0, p0, p1}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->handlePlayerError(ILjava/lang/String;)V

    .line 66
    :goto_2b
    return-void

    .line 64
    :cond_2c
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[STATIC_ERROR_REFRESH] No current instance available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method private updateMediaResourceAndSeek(Lcom/bilibili/lib/media/resource/MediaResource;I)V
    .locals 5

    .prologue
    .line 418
    const-string v0, "PlayerUrlRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UPDATE_START] Updating MediaResource and seeking to position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :try_start_1e
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    .line 422
    if-nez v0, :cond_2c

    .line 423
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[UPDATE_ERROR] VideoViewParams is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_2b
    :goto_2b
    return-void

    .line 427
    :cond_2c
    iput-object p1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 428
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[UPDATE_RESOURCE] MediaResource updated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerController:Lbl/xh;

    invoke-virtual {v0}, Lbl/xh;->n()Ltv/danmaku/videoplayer/core/context/IPlayerContext;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_d5

    .line 432
    add-int/lit16 v1, p2, 0x1f4

    .line 433
    const-string v2, "PlayerUrlRefresh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UPDATE_SEEK_ADJUST] Adjusted position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms (added 500ms to compensate for seek delay)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-interface {v0, v1}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->seekTo(I)V

    .line 436
    const-string v2, "PlayerUrlRefresh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UPDATE_SEEK] Seeked to adjusted position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/context/IPlayerContext;->start()V

    .line 439
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[UPDATE_START] Playback started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    if-eqz v0, :cond_a2

    .line 442
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[UPDATE_CLEAR_SUPPRESS] Clearing buffering overlay suppression"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;->clearSuppression()V

    .line 446
    :cond_a2
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[UPDATE_COMPLETE] Stream reload completed successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_a9} :catch_aa

    goto :goto_2b

    .line 450
    :catch_aa
    move-exception v0

    .line 451
    const-string v1, "PlayerUrlRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UPDATE_ERROR] Failed to update and seek: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    if-eqz v0, :cond_2b

    .line 454
    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/BufferingOverlayController;->clearSuppression()V

    goto/16 :goto_2b

    .line 448
    :cond_d5
    :try_start_d5
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[UPDATE_ERROR] PlayerContext is null, cannot seek"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_dc} :catch_aa

    goto/16 :goto_2b
.end method


# virtual methods
.method public cancelAutoRefresh()V
    .locals 2

    .prologue
    .line 266
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "cancelAutoRefresh() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->scheduler:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    if-eqz v0, :cond_17

    .line 268
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->scheduler:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->cancelAutoRefresh()V

    .line 269
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "Auto refresh cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_17
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 544
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[DESTROY] Destroying helper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->cancelAutoRefresh()V

    .line 546
    invoke-virtual {p0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->resetErrorRefreshCount()V

    .line 547
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_17

    .line 548
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 551
    :cond_17
    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->currentInstance:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    if-ne v0, p0, :cond_24

    .line 552
    sput-object v2, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->currentInstance:Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;

    .line 553
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[DESTROY] currentInstance static reference cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_24
    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    if-eqz v0, :cond_31

    .line 556
    sput-object v2, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    .line 557
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[DESTROY] bufferingOverlayController static reference cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_31
    iput-object v2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerController:Lbl/xh;

    .line 561
    iput-object v2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 562
    iput-object v2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->context:Landroid/content/Context;

    .line 563
    iput-object v2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->mainHandler:Landroid/os/Handler;

    .line 564
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[DESTROY] All references cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void
.end method

.method public getScheduler()Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->scheduler:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    return-object v0
.end method

.method public handlePlayerError(ILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 464
    const-string v0, "PlayerUrlRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR_HANDLE_START] errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->isUrlExpiredError(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 467
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[ERROR_HANDLE] URL expired error detected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 470
    iget-wide v2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->lastErrorRefreshTime:J

    sub-long v2, v0, v2

    .line 472
    const-wide/16 v4, 0x1388

    cmp-long v4, v2, v4

    if-gez v4, :cond_5d

    .line 473
    const-string v0, "PlayerUrlRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ERROR_HANDLE] Cooldown active, time since last error="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, skipping refresh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_5c
    return-void

    .line 477
    :cond_5d
    iget v2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->errorRefreshAttemptCount:I

    if-lt v2, v6, :cond_82

    .line 478
    const-string v0, "PlayerUrlRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR_HANDLE] Max refresh attempts reached ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->errorRefreshAttemptCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), stopping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 482
    :cond_82
    iget v2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->errorRefreshAttemptCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->errorRefreshAttemptCount:I

    .line 483
    iput-wide v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->lastErrorRefreshTime:J

    .line 485
    const-string v0, "PlayerUrlRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR_HANDLE] Triggering URL refresh, attempt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->errorRefreshAttemptCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->reloadStreamWithPosition()V

    goto :goto_5c

    .line 489
    :cond_b2
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[ERROR_HANDLE] Not a URL expired error, skipping refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c
.end method

.method public reloadStreamWithPosition()V
    .locals 6

    .prologue
    .line 290
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RELOAD_START] reloadStreamWithPosition() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->context:Landroid/content/Context;

    if-nez v0, :cond_13

    .line 293
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RELOAD_ERROR] Context is null, cannot reload stream"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_12
    return-void

    .line 297
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-nez v0, :cond_1f

    .line 298
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RELOAD_ERROR] PlayerParams is null, cannot reload stream"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 302
    :cond_1f
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerController:Lbl/xh;

    if-nez v0, :cond_2b

    .line 303
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RELOAD_ERROR] PlayerController is null, cannot reload stream"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 307
    :cond_2b
    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    if-eqz v0, :cond_3f

    .line 308
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[RELOAD_SUPPRESS] Suppressing buffering overlay for URL refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-object v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->bufferingOverlayController:Lcom/bilibili/tv/player/BufferingOverlayController;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/bilibili/tv/player/BufferingOverlayController;->suppressFor(JJ)V

    .line 312
    :cond_3f
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$3;-><init>(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_12
.end method

.method public resetErrorRefreshCount()V
    .locals 2

    .prologue
    .line 529
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[ERROR_RESET] Resetting error refresh count"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->errorRefreshAttemptCount:I

    .line 531
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->lastErrorRefreshTime:J

    .line 532
    return-void
.end method

.method public scheduleAutoRefresh()V
    .locals 13

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 162
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "scheduleAutoRefresh() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-nez v0, :cond_16

    .line 165
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "PlayerParams is null, cannot schedule auto refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_15
    return-void

    .line 169
    :cond_16
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    .line 170
    if-nez v0, :cond_24

    .line 171
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "VideoViewParams is null, cannot schedule auto refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 175
    :cond_24
    iget-object v5, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 176
    if-nez v5, :cond_30

    .line 177
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "MediaResource is null, cannot schedule auto refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 181
    :cond_30
    iget-object v1, v5, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    if-nez v1, :cond_3c

    .line 182
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "MediaResource.dash is null, cannot schedule auto refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 186
    :cond_3c
    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v6

    .line 188
    const-string v7, "PlayerUrlRefresh"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video info: bvid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v6, :cond_114

    iget-object v0, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBvid:Ljava/lang/String;

    :goto_51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v6, :cond_118

    iget-wide v0, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    :goto_5f
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v6, :cond_6d

    iget-wide v2, v6, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    :cond_6d
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    :try_start_82
    iget-object v5, v5, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    .line 198
    const-string v0, "video"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 199
    if-eqz v6, :cond_11f

    .line 200
    const-string v0, "PlayerUrlRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing video array, size="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 201
    :goto_a9
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_11f

    .line 202
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_11b

    .line 204
    const-string v7, "base_url"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 205
    if-eqz v7, :cond_f3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f3

    .line 206
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v8, "PlayerUrlRefresh"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Added video URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0x32

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "..."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_f3
    const-string v7, "backup_url"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 210
    if-eqz v7, :cond_11b

    move v0, v4

    .line 211
    :goto_fc
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_11b

    .line 212
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 213
    if-eqz v8, :cond_111

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_111

    .line 214
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_111} :catch_1b3

    .line 211
    :cond_111
    add-int/lit8 v0, v0, 0x1

    goto :goto_fc

    .line 188
    :cond_114
    const-string v0, "null"

    goto/16 :goto_51

    :cond_118
    move-wide v0, v2

    goto/16 :goto_5f

    .line 201
    :cond_11b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a9

    .line 222
    :cond_11f
    :try_start_11f
    const-string v0, "audio"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 223
    if-eqz v5, :cond_1d2

    .line 224
    const-string v0, "PlayerUrlRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing audio array, size="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 225
    :goto_144
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1d2

    .line 226
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_1af

    .line 228
    const-string v6, "base_url"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 229
    if-eqz v6, :cond_18e

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_18e

    .line 230
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v7, "PlayerUrlRefresh"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Added audio URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x32

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "..."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_18e
    const-string v6, "backup_url"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 234
    if-eqz v6, :cond_1af

    move v0, v4

    .line 235
    :goto_197
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_1af

    .line 236
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 237
    if-eqz v7, :cond_1ac

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1ac

    .line 238
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_1ac} :catch_1b3

    .line 235
    :cond_1ac
    add-int/lit8 v0, v0, 0x1

    goto :goto_197

    .line 225
    :cond_1af
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_144

    .line 245
    :catch_1b3
    move-exception v0

    .line 246
    const-string v1, "PlayerUrlRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to extract URLs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 250
    :cond_1d2
    const-string v0, "PlayerUrlRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extracted URLs: video="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", audio="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->getDuration()J

    move-result-wide v0

    .line 253
    const-string v4, "PlayerUrlRefresh"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v4, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->scheduler:Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;

    invoke-virtual {v4, v2, v3, v0, v1}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->scheduleAutoRefresh(Ljava/util/List;Ljava/util/List;J)V

    .line 257
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "Auto refresh scheduled successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->context:Landroid/content/Context;

    .line 78
    const-string v1, "PlayerUrlRefresh"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context set: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->context:Landroid/content/Context;

    if-eqz v0, :cond_25

    const-string v0, "not null"

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 78
    :cond_25
    const-string v0, "null"

    goto :goto_19
.end method

.method public setPlayerController(Lbl/xh;)V
    .locals 3

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerController:Lbl/xh;

    .line 83
    const-string v1, "PlayerUrlRefresh"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerController set: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1f

    const-string v0, "not null"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void

    .line 83
    :cond_1f
    const-string v0, "null"

    goto :goto_13
.end method

.method public setPlayerParams(Lcom/bilibili/tv/player/basic/context/PlayerParams;)V
    .locals 3

    .prologue
    .line 157
    iput-object p1, p0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->playerParams:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 158
    const-string v1, "PlayerUrlRefresh"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerParams set: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1f

    const-string v0, "not null"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 158
    :cond_1f
    const-string v0, "null"

    goto :goto_13
.end method

.method public setRefreshCallback(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 274
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "setRefreshCallback() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz p1, :cond_18

    .line 276
    new-instance v0, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$2;

    invoke-direct {v0, p0, p2}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper$2;-><init>(Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshScheduler;->setRefreshCallback(Ltv/danmaku/videoplayer/core/media/resource/UrlAutoRefreshManager$RefreshCallback;)V

    .line 285
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "Refresh callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_18
    return-void
.end method

.method public triggerManualRefresh()V
    .locals 2

    .prologue
    .line 539
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[MANUAL_REFRESH] Manual refresh triggered by user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {p0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->reloadStreamWithPosition()V

    .line 541
    return-void
.end method

.method public tryScheduleAutoRefresh()V
    .locals 2

    .prologue
    .line 261
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "tryScheduleAutoRefresh() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->scheduleAutoRefresh()V

    .line 263
    return-void
.end method

.method public trySetupErrorListener()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "PlayerUrlRefresh"

    const-string v1, "[ERROR_LISTENER] Trying to setup error listener..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/bilibili/tv/player/PlayerActivityUrlRefreshHelper;->setupErrorListener()V

    .line 89
    return-void
.end method
