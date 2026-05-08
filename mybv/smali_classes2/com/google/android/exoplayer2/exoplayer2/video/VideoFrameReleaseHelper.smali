.class public final Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;,
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;,
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$Api30;,
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;,
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV16;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_ALLOWED_ADJUSTMENT_NS:J = 0x1312d00L

.field private static final MINIMUM_FRAMES_WITHOUT_SYNC_TO_CLEAR_SURFACE_FRAME_RATE:I = 0x1e

.field private static final MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS:J = 0x12a05f200L

.field private static final MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_HIGH_CONFIDENCE:F = 0.02f

.field private static final MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_LOW_CONFIDENCE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "VideoFrameReleaseHelper"

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L

.field private static final VSYNC_SAMPLE_UPDATE_PERIOD_MS:J = 0x1f4L


# instance fields
.field private changeFrameRateStrategy:I

.field private final displayHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

.field private formatFrameRate:F

.field private frameIndex:J

.field private final frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

.field private lastAdjustedFrameIndex:J

.field private lastAdjustedReleaseTimeNs:J

.field private pendingLastAdjustedFrameIndex:J

.field private pendingLastAdjustedReleaseTimeNs:J

.field private playbackSpeed:F

.field private started:Z

.field private surface:Landroid/view/Surface;

.field private surfaceMediaFrameRate:F

.field private surfacePlaybackFrameRate:F

.field private vsyncDurationNs:J

.field private vsyncOffsetNs:J

.field private final vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;


# direct methods
.method public static synthetic $r8$lambda$A5Zm0DOJniOJatrcB4x11ZTkanw(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;Landroid/view/Display;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateDefaultDisplayRefreshRateParams(Landroid/view/Display;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    .line 136
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->maybeBuildDisplayHelper(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->displayHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    .line 137
    if-eqz v0, :cond_17

    invoke-static {}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->getInstance()Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 138
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    .line 139
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    .line 140
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 141
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    .line 143
    return-void
.end method

.method private static adjustmentAllowed(JJ)Z
    .registers 9
    .param p0, "unadjustedReleaseTimeNs"    # J
    .param p2, "adjustedReleaseTimeNs"    # J

    .line 294
    sub-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1312d00

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private clearSurfaceFrameRate()V
    .registers 4

    .line 379
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1e

    iget v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1e

    iget v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    goto :goto_1e

    .line 385
    :cond_18
    iput v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 386
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    .line 387
    return-void

    .line 383
    :cond_1e
    :goto_1e
    return-void
.end method

.method private static closestVsync(JJJ)J
    .registers 20
    .param p0, "releaseTime"    # J
    .param p2, "sampledVsyncTime"    # J
    .param p4, "vsyncDuration"    # J

    .line 404
    sub-long v0, p0, p2

    div-long v0, v0, p4

    .line 405
    .local v0, "vsyncCount":J
    mul-long v2, p4, v0

    add-long v2, p2, v2

    .line 408
    .local v2, "snappedTimeNs":J
    cmp-long v4, p0, v2

    if-gtz v4, :cond_10

    .line 409
    sub-long v4, v2, p4

    .line 410
    .local v4, "snappedBeforeNs":J
    move-wide v6, v2

    .local v6, "snappedAfterNs":J
    goto :goto_13

    .line 412
    .end local v4    # "snappedBeforeNs":J
    .end local v6    # "snappedAfterNs":J
    :cond_10
    move-wide v4, v2

    .line 413
    .restart local v4    # "snappedBeforeNs":J
    add-long v6, v2, p4

    .line 415
    .restart local v6    # "snappedAfterNs":J
    :goto_13
    sub-long v8, v6, p0

    .line 416
    .local v8, "snappedAfterDiff":J
    sub-long v10, p0, v4

    .line 417
    .local v10, "snappedBeforeDiff":J
    cmp-long v12, v8, v10

    if-gez v12, :cond_1d

    move-wide v12, v6

    goto :goto_1e

    :cond_1d
    move-wide v12, v4

    :goto_1e
    return-wide v12
.end method

.method private static maybeBuildDisplayHelper(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "displayHelper":Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;
    if-eqz p0, :cond_17

    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 425
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_11

    .line 426
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->maybeBuildNewInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    move-result-object v0

    .line 428
    :cond_11
    if-nez v0, :cond_17

    .line 429
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV16;->maybeBuildNewInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    move-result-object v0

    .line 432
    :cond_17
    return-object v0
.end method

.method private resetAdjustment()V
    .registers 3

    .line 287
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 288
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 289
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    .line 290
    return-void
.end method

.method private updateDefaultDisplayRefreshRateParams(Landroid/view/Display;)V
    .registers 8
    .param p1, "defaultDisplay"    # Landroid/view/Display;

    .line 392
    if-eqz p1, :cond_1d

    .line 393
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    .line 394
    .local v0, "defaultDisplayRefreshRate":D
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    .line 395
    const-wide/16 v4, 0x50

    mul-long v2, v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    .line 396
    .end local v0    # "defaultDisplayRefreshRate":D
    goto :goto_2d

    .line 397
    :cond_1d
    const-string v0, "VideoFrameReleaseHelper"

    const-string v1, "Unable to query display refresh rate"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    .line 399
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    .line 401
    :goto_2d
    return-void
.end method

.method private updateSurfaceMediaFrameRate()V
    .registers 9

    .line 305
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_7c

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-nez v0, :cond_c

    goto/16 :goto_7c

    .line 310
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->getFrameRate()F

    move-result v0

    goto :goto_1d

    :cond_1b
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 311
    .local v0, "candidateFrameRate":F
    :goto_1d
    iget v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    cmpl-float v3, v0, v2

    if-nez v3, :cond_24

    .line 312
    return-void

    .line 318
    :cond_24
    const/4 v3, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    cmpl-float v6, v0, v4

    if-eqz v6, :cond_63

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_63

    .line 319
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    .line 320
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    .line 321
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->getMatchingFrameDurationSumNs()J

    move-result-wide v1

    const-wide v6, 0x12a05f200L

    cmp-long v4, v1, v6

    if-ltz v4, :cond_49

    const/4 v1, 0x1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    .line 324
    .local v1, "candidateIsHighConfidence":Z
    :goto_4a
    if-eqz v1, :cond_50

    .line 325
    const v2, 0x3ca3d70a    # 0.02f

    goto :goto_52

    .line 326
    :cond_50
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_52
    nop

    .line 327
    .local v2, "minimumChangeForUpdate":F
    iget v4, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v2

    if-ltz v4, :cond_60

    goto :goto_61

    :cond_60
    const/4 v3, 0x0

    :goto_61
    move v1, v3

    .line 328
    .end local v2    # "minimumChangeForUpdate":F
    .local v1, "shouldUpdate":Z
    goto :goto_74

    .end local v1    # "shouldUpdate":Z
    :cond_63
    cmpl-float v2, v0, v4

    if-eqz v2, :cond_69

    .line 329
    const/4 v1, 0x1

    .restart local v1    # "shouldUpdate":Z
    goto :goto_74

    .line 331
    .end local v1    # "shouldUpdate":Z
    :cond_69
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    .line 332
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->getFramesWithoutSyncCount()I

    move-result v2

    if-lt v2, v1, :cond_72

    goto :goto_73

    :cond_72
    const/4 v3, 0x0

    :goto_73
    move v1, v3

    .line 336
    .restart local v1    # "shouldUpdate":Z
    :goto_74
    if-eqz v1, :cond_7b

    .line 337
    iput v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    .line 338
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 340
    :cond_7b
    return-void

    .line 306
    .end local v0    # "candidateFrameRate":F
    .end local v1    # "shouldUpdate":Z
    :cond_7c
    :goto_7c
    return-void
.end method

.method private updateSurfacePlaybackFrameRate(Z)V
    .registers 6
    .param p1, "forceUpdate"    # Z

    .line 353
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_31

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_31

    iget v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_11

    goto :goto_31

    .line 359
    :cond_11
    const/4 v1, 0x0

    .line 360
    .local v1, "surfacePlaybackFrameRate":F
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->started:Z

    if-eqz v2, :cond_22

    iget v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_22

    .line 361
    iget v3, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->playbackSpeed:F

    mul-float v1, v2, v3

    .line 365
    :cond_22
    if-nez p1, :cond_2b

    iget v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2b

    .line 366
    return-void

    .line 368
    :cond_2b
    iput v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 369
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    .line 370
    return-void

    .line 356
    .end local v1    # "surfacePlaybackFrameRate":F
    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public adjustReleaseTime(J)J
    .registers 15
    .param p1, "releaseTimeNs"    # J

    .line 257
    move-wide v0, p1

    .line 259
    .local v0, "adjustedReleaseTimeNs":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_31

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 260
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->getFrameDurationNs()J

    move-result-wide v2

    .line 261
    .local v2, "frameDurationNs":J
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    sub-long/2addr v6, v8

    mul-long v6, v6, v2

    long-to-float v6, v6

    iget v7, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->playbackSpeed:F

    div-float/2addr v6, v7

    float-to-long v6, v6

    add-long/2addr v4, v6

    .line 264
    .local v4, "candidateAdjustedReleaseTimeNs":J
    invoke-static {p1, p2, v4, v5}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->adjustmentAllowed(JJ)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 265
    move-wide v0, v4

    goto :goto_31

    .line 267
    :cond_2e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 270
    .end local v2    # "frameDurationNs":J
    .end local v4    # "candidateAdjustedReleaseTimeNs":J
    :cond_31
    :goto_31
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    .line 271
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    .line 273
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    if-eqz v2, :cond_5b

    iget-wide v3, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_47

    goto :goto_5b

    .line 276
    :cond_47
    iget-wide v2, v2, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 277
    .local v2, "sampledVsyncTimeNs":J
    cmp-long v4, v2, v5

    if-nez v4, :cond_4e

    .line 278
    return-wide v0

    .line 281
    :cond_4e
    iget-wide v10, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    move-wide v6, v0

    move-wide v8, v2

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->closestVsync(JJJ)J

    move-result-wide v4

    .line 283
    .local v4, "snappedTimeNs":J
    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    sub-long v6, v4, v6

    return-wide v6

    .line 274
    .end local v2    # "sampledVsyncTimeNs":J
    .end local v4    # "snappedTimeNs":J
    :cond_5b
    :goto_5b
    return-wide v0
.end method

.method public onFormatChanged(F)V
    .registers 3
    .param p1, "formatFrameRate"    # F

    .line 209
    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->reset()V

    .line 211
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    .line 212
    return-void
.end method

.method public onNextFrame(J)V
    .registers 8
    .param p1, "framePresentationTimeUs"    # J

    .line 220
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    .line 221
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 222
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    .line 224
    :cond_e
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    const-wide/16 v1, 0x3e8

    mul-long v1, v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->onNextFrame(J)V

    .line 226
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    .line 227
    return-void
.end method

.method public onPlaybackSpeed(F)V
    .registers 3
    .param p1, "playbackSpeed"    # F

    .line 198
    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 199
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 201
    return-void
.end method

.method public onPositionReset()V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 190
    return-void
.end method

.method public onStarted()V
    .registers 3

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->started:Z

    .line 161
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->displayHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v0, :cond_1f

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->addObserver()V

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->displayHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    new-instance v1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;->register(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;)V

    .line 166
    :cond_1f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 167
    return-void
.end method

.method public onStopped()V
    .registers 2

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->started:Z

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->displayHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v0, :cond_15

    .line 233
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;->unregister()V

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->removeObserver()V

    .line 236
    :cond_15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    .line 237
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 175
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v0, :cond_5

    .line 177
    const/4 p1, 0x0

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-ne v0, p1, :cond_a

    .line 180
    return-void

    .line 182
    :cond_a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    .line 183
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 185
    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .registers 3
    .param p1, "changeFrameRateStrategy"    # I

    .line 151
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    if-ne v0, p1, :cond_5

    .line 152
    return-void

    .line 154
    :cond_5
    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 156
    return-void
.end method
