.class public final Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;
.super Ljava/lang/Object;
.source "DefaultLivePlaybackSpeedControl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_FALLBACK_MAX_PLAYBACK_SPEED:F = 1.03f

.field public static final DEFAULT_FALLBACK_MIN_PLAYBACK_SPEED:F = 0.97f

.field public static final DEFAULT_MAX_LIVE_OFFSET_ERROR_MS_FOR_UNIT_SPEED:J = 0x14L

.field public static final DEFAULT_MIN_POSSIBLE_LIVE_OFFSET_SMOOTHING_FACTOR:F = 0.999f

.field public static final DEFAULT_MIN_UPDATE_INTERVAL_MS:J = 0x3e8L

.field public static final DEFAULT_PROPORTIONAL_CONTROL_FACTOR:F = 0.1f

.field public static final DEFAULT_TARGET_LIVE_OFFSET_INCREMENT_ON_REBUFFER_MS:J = 0x1f4L


# instance fields
.field private adjustedPlaybackSpeed:F

.field private currentTargetLiveOffsetUs:J

.field private final fallbackMaxPlaybackSpeed:F

.field private final fallbackMinPlaybackSpeed:F

.field private idealTargetLiveOffsetUs:J

.field private lastPlaybackSpeedUpdateMs:J

.field private final maxLiveOffsetErrorUsForUnitSpeed:J

.field private maxPlaybackSpeed:F

.field private maxTargetLiveOffsetUs:J

.field private mediaConfigurationTargetLiveOffsetUs:J

.field private minPlaybackSpeed:F

.field private final minPossibleLiveOffsetSmoothingFactor:F

.field private minTargetLiveOffsetUs:J

.field private final minUpdateIntervalMs:J

.field private final proportionalControlFactor:F

.field private smoothedMinPossibleLiveOffsetDeviationUs:J

.field private smoothedMinPossibleLiveOffsetUs:J

.field private targetLiveOffsetOverrideUs:J

.field private final targetLiveOffsetRebufferDeltaUs:J


# direct methods
.method private constructor <init>(FFJFJJF)V
    .registers 14
    .param p1, "fallbackMinPlaybackSpeed"    # F
    .param p2, "fallbackMaxPlaybackSpeed"    # F
    .param p3, "minUpdateIntervalMs"    # J
    .param p5, "proportionalControlFactor"    # F
    .param p6, "maxLiveOffsetErrorUsForUnitSpeed"    # J
    .param p8, "targetLiveOffsetRebufferDeltaUs"    # J
    .param p10, "minPossibleLiveOffsetSmoothingFactor"    # F

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->fallbackMinPlaybackSpeed:F

    .line 292
    iput p2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->fallbackMaxPlaybackSpeed:F

    .line 293
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    .line 294
    iput p5, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    .line 295
    iput-wide p6, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    .line 296
    iput-wide p8, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    .line 297
    iput p10, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    .line 298
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    .line 299
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    .line 300
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    .line 301
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    .line 302
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    .line 303
    iput p2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    .line 304
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    .line 305
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    .line 306
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    .line 307
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 308
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    .line 309
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    .line 310
    return-void
.end method

.method synthetic constructor <init>(FFJFJJFLcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$1;)V
    .registers 12
    .param p1, "x0"    # F
    .param p2, "x1"    # F
    .param p3, "x2"    # J
    .param p5, "x3"    # F
    .param p6, "x4"    # J
    .param p8, "x5"    # J
    .param p10, "x6"    # F
    .param p11, "x7"    # Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$1;

    .line 55
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;-><init>(FFJFJJF)V

    return-void
.end method

.method private adjustTargetLiveOffsetUs(J)V
    .registers 18
    .param p1, "liveOffsetUs"    # J

    .line 433
    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide/16 v3, 0x3

    iget-wide v5, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    mul-long v5, v5, v3

    add-long/2addr v1, v5

    .line 435
    .local v1, "safeOffsetUs":J
    iget-wide v3, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    const/high16 v5, 0x3f800000    # 1.0f

    cmp-long v6, v3, v1

    if-lez v6, :cond_40

    .line 439
    iget-wide v3, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v3

    .line 440
    .local v3, "minUpdateIntervalUs":J
    iget v6, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v6, v5

    long-to-float v7, v3

    mul-float v6, v6, v7

    float-to-long v6, v6

    .line 442
    .local v6, "decrementToOffsetCurrentSpeedUs":J
    iget v8, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    sub-float/2addr v8, v5

    long-to-float v5, v3

    mul-float v8, v8, v5

    float-to-long v8, v8

    .line 443
    .local v8, "decrementToIncreaseSpeedUs":J
    add-long v10, v6, v8

    .line 444
    .local v10, "maxDecrementUs":J
    const/4 v5, 0x3

    new-array v5, v5, [J

    const/4 v12, 0x0

    aput-wide v1, v5, v12

    const/4 v12, 0x1

    iget-wide v13, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    aput-wide v13, v5, v12

    iget-wide v12, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr v12, v10

    const/4 v14, 0x2

    aput-wide v12, v5, v14

    .line 445
    invoke-static {v5}, Lcom/google/common/primitives/Longs;->max([J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 446
    .end local v3    # "minUpdateIntervalUs":J
    .end local v6    # "decrementToOffsetCurrentSpeedUs":J
    .end local v8    # "decrementToIncreaseSpeedUs":J
    .end local v10    # "maxDecrementUs":J
    goto :goto_69

    .line 450
    :cond_40
    iget v3, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v3, v5

    .line 451
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    div-float/2addr v3, v4

    float-to-long v3, v3

    sub-long v3, p1, v3

    .line 452
    .local v3, "offsetWhenSlowingDownNowUs":J
    iget-wide v9, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 453
    move-wide v7, v3

    move-wide v11, v1

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 454
    iget-wide v7, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v7, v9

    if-eqz v11, :cond_69

    cmp-long v9, v5, v7

    if-lez v9, :cond_69

    .line 456
    iput-wide v7, v0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 459
    .end local v3    # "offsetWhenSlowingDownNowUs":J
    :cond_69
    :goto_69
    return-void
.end method

.method private maybeResetTargetLiveOffsetUs()V
    .registers 10

    .line 383
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 384
    .local v0, "idealOffsetUs":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_32

    .line 386
    iget-wide v6, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_18

    .line 387
    move-wide v2, v6

    goto :goto_19

    .line 388
    :cond_18
    nop

    :goto_19
    move-wide v0, v2

    .line 389
    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_26

    cmp-long v6, v0, v2

    if-gez v6, :cond_26

    .line 390
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    .line 392
    :cond_26
    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_32

    cmp-long v6, v0, v2

    if-lez v6, :cond_32

    .line 393
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    .line 396
    :cond_32
    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    cmp-long v6, v2, v0

    if-nez v6, :cond_39

    .line 397
    return-void

    .line 399
    :cond_39
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    .line 400
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 401
    iput-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    .line 402
    iput-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    .line 403
    iput-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    .line 404
    return-void
.end method

.method private static smooth(JJF)J
    .registers 8
    .param p0, "smoothedValue"    # J
    .param p2, "newValue"    # J
    .param p4, "smoothingFactor"    # F

    .line 462
    long-to-float v0, p0

    mul-float v0, v0, p4

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p4

    long-to-float v2, p2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private updateSmoothedMinPossibleLiveOffsetUs(JJ)V
    .registers 12
    .param p1, "liveOffsetUs"    # J
    .param p3, "bufferedDurationUs"    # J

    .line 407
    sub-long v0, p1, p3

    .line 408
    .local v0, "minPossibleLiveOffsetUs":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_14

    .line 409
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    .line 410
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    goto :goto_30

    .line 414
    :cond_14
    iget v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    .line 417
    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smooth(JJF)J

    move-result-wide v2

    .line 415
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    .line 421
    sub-long v2, v0, v2

    .line 422
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 423
    .local v2, "minPossibleLiveOffsetDeviationUs":J
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    iget v6, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    .line 424
    invoke-static {v4, v5, v2, v3, v6}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smooth(JJF)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    .line 429
    .end local v2    # "minPossibleLiveOffsetDeviationUs":J
    :goto_30
    return-void
.end method


# virtual methods
.method public getAdjustedPlaybackSpeed(JJ)F
    .registers 13
    .param p1, "liveOffsetUs"    # J
    .param p3, "bufferedDurationUs"    # J

    .line 353
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-nez v5, :cond_e

    .line 354
    return v2

    .line 357
    :cond_e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->updateSmoothedMinPossibleLiveOffsetUs(JJ)V

    .line 359
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_27

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    sub-long/2addr v0, v3

    iget-wide v3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_27

    .line 361
    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    return v0

    .line 363
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustTargetLiveOffsetUs(J)V

    .line 366
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long v0, p1, v0

    .line 367
    .local v0, "liveOffsetErrorUs":J
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_41

    .line 368
    iput v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    goto :goto_51

    .line 370
    :cond_41
    iget v3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    long-to-float v4, v0

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    .line 371
    .local v3, "calculatedSpeed":F
    iget v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    iget v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    .line 372
    invoke-static {v3, v2, v4}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    .line 374
    .end local v3    # "calculatedSpeed":F
    :goto_51
    iget v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    return v2
.end method

.method public getTargetLiveOffsetUs()J
    .registers 3

    .line 379
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    return-wide v0
.end method

.method public notifyRebuffer()V
    .registers 8

    .line 340
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    .line 341
    return-void

    .line 343
    :cond_c
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 344
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1d

    cmp-long v6, v0, v4

    if-lez v6, :cond_1d

    .line 346
    iput-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 348
    :cond_1d
    iput-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    .line 349
    return-void
.end method

.method public setLiveConfiguration(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V
    .registers 5
    .param p1, "liveConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 314
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    .line 315
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    .line 316
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    .line 317
    nop

    .line 318
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v1, -0x800001

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_25

    .line 319
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    goto :goto_27

    .line 320
    :cond_25
    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->fallbackMinPlaybackSpeed:F

    :goto_27
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    .line 321
    nop

    .line 322
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_33

    .line 323
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    goto :goto_35

    .line 324
    :cond_33
    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->fallbackMaxPlaybackSpeed:F

    :goto_35
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    .line 325
    iget v1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4a

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4a

    .line 327
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    .line 329
    :cond_4a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    .line 330
    return-void
.end method

.method public setTargetLiveOffsetOverrideUs(J)V
    .registers 3
    .param p1, "liveOffsetUs"    # J

    .line 334
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    .line 335
    invoke-direct {p0}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    .line 336
    return-void
.end method
