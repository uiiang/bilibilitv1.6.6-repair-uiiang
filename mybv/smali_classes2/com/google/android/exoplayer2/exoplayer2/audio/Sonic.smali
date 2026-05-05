.class final Lcom/google/android/exoplayer2/audio/Sonic;
.super Ljava/lang/Object;
.source "Sonic.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AMDF_FREQUENCY:I = 0xfa0

.field private static final BYTES_PER_SAMPLE:I = 0x2

.field private static final MAXIMUM_PITCH:I = 0x190

.field private static final MINIMUM_PITCH:I = 0x41


# instance fields
.field private final channelCount:I

.field private final downSampleBuffer:[S

.field private inputBuffer:[S

.field private inputFrameCount:I

.field private final inputSampleRateHz:I

.field private maxDiff:I

.field private final maxPeriod:I

.field private final maxRequiredFrameCount:I

.field private minDiff:I

.field private final minPeriod:I

.field private newRatePosition:I

.field private oldRatePosition:I

.field private outputBuffer:[S

.field private outputFrameCount:I

.field private final pitch:F

.field private pitchBuffer:[S

.field private pitchFrameCount:I

.field private prevMinDiff:I

.field private prevPeriod:I

.field private final rate:F

.field private remainingInputToCopyFrameCount:I

.field private final speed:F


# direct methods
.method public constructor <init>(IIFFI)V
    .registers 8
    .param p1, "inputSampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "speed"    # F
    .param p4, "pitch"    # F
    .param p5, "outputSampleRateHz"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    .line 79
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    .line 80
    iput p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    .line 81
    iput p4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    .line 82
    int-to-float v0, p1

    int-to-float v1, p5

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->rate:F

    .line 83
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    .line 84
    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    .line 85
    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    .line 86
    new-array v1, v0, [S

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    .line 87
    mul-int v1, v0, p2

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    .line 88
    mul-int v1, v0, p2

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    .line 89
    mul-int v0, v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    .line 90
    return-void
.end method

.method private adjustRate(FI)V
    .registers 12
    .param p1, "rate"    # F
    .param p2, "originalOutputFrameCount"    # I

    .line 376
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    if-ne v0, p2, :cond_5

    .line 377
    return-void

    .line 379
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v0, v0

    .line 380
    .local v0, "newSampleRate":I
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    .line 382
    .local v1, "oldSampleRate":I
    :goto_c
    const/16 v2, 0x4000

    if-gt v0, v2, :cond_73

    if-le v1, v2, :cond_13

    goto :goto_73

    .line 386
    :cond_13
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    .line 388
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_17
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    if-ge v2, v4, :cond_6e

    .line 389
    :goto_1e
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v4, v3, 0x1

    mul-int v4, v4, v0

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    mul-int v7, v6, v1

    if-le v4, v7, :cond_59

    .line 390
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    .line 391
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    .line 393
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_35
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    if-ge v3, v4, :cond_4e

    .line 394
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    mul-int v7, v7, v4

    add-int/2addr v7, v3

    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    mul-int v4, v4, v2

    add-int/2addr v4, v3

    .line 395
    invoke-direct {p0, v8, v4, v1, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->interpolate([SIII)S

    move-result v4

    aput-short v4, v6, v7

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 397
    .end local v3    # "i":I
    :cond_4e
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 398
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    goto :goto_1e

    .line 400
    :cond_59
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 401
    if-ne v3, v1, :cond_6b

    .line 402
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 403
    if-ne v6, v0, :cond_65

    goto :goto_66

    :cond_65
    const/4 v5, 0x0

    :goto_66
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 404
    iput v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 388
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 407
    .end local v2    # "position":I
    :cond_6e
    sub-int/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/audio/Sonic;->removePitchFrames(I)V

    .line 408
    return-void

    .line 383
    :cond_73
    :goto_73
    div-int/lit8 v0, v0, 0x2

    .line 384
    div-int/lit8 v1, v1, 0x2

    goto :goto_c
.end method

.method private changeSpeed(F)V
    .registers 10
    .param p1, "speed"    # F

    .line 464
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    if-ge v0, v1, :cond_7

    .line 465
    return-void

    .line 467
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    .line 468
    .local v0, "frameCount":I
    const/4 v1, 0x0

    .line 470
    .local v1, "positionFrames":I
    :cond_a
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    if-lez v2, :cond_14

    .line 471
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->copyInputToOutput(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_31

    .line 473
    :cond_14
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v2, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriod([SI)I

    move-result v2

    .line 474
    .local v2, "period":I
    float-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_2a

    .line 475
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v1, p1, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->skipPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_31

    .line 477
    :cond_2a
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v1, p1, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->insertPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v1, v3

    .line 480
    .end local v2    # "period":I
    :goto_31
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    add-int/2addr v2, v1

    if-le v2, v0, :cond_a

    .line 481
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->removeProcessedInputFrames(I)V

    .line 482
    return-void
.end method

.method private copyInputToOutput(I)I
    .registers 4
    .param p1, "positionFrames"    # I

    .line 224
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 225
    .local v0, "frameCount":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->copyToOutput([SII)V

    .line 226
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 227
    return v0
.end method

.method private copyToOutput([SII)V
    .registers 8
    .param p1, "samples"    # [S
    .param p2, "positionFrames"    # I
    .param p3, "frameCount"    # I

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    .line 214
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v2, p2, v1

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    mul-int v3, v3, v1

    mul-int v1, v1, p3

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    .line 221
    return-void
.end method

.method private downSampleInput([SII)V
    .registers 10
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "skip"    # I

    .line 233
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    div-int/2addr v0, p3

    .line 234
    .local v0, "frameCount":I
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v2, v1, p3

    .line 235
    .local v2, "samplesPerValue":I
    mul-int p2, p2, v1

    .line 236
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_23

    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, "value":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_e
    if-ge v4, v2, :cond_1a

    .line 239
    mul-int v5, v1, v2

    add-int/2addr v5, p2

    add-int/2addr v5, v4

    aget-short v5, p1, v5

    add-int/2addr v3, v5

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 241
    .end local v4    # "j":I
    :cond_1a
    div-int/2addr v3, v2

    .line 242
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    int-to-short v5, v3

    aput-short v5, v4, v1

    .line 236
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 244
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method private ensureSpaceForAdditionalFrames([SII)[S
    .registers 7
    .param p1, "buffer"    # [S
    .param p2, "frameCount"    # I
    .param p3, "additionalFrameCount"    # I

    .line 196
    array-length v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    .line 197
    .local v0, "currentCapacityFrames":I
    add-int v2, p2, p3

    if-gt v2, v0, :cond_9

    .line 198
    return-object p1

    .line 200
    :cond_9
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    .line 201
    .local v2, "newCapacityFrames":I
    mul-int v1, v1, v2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v1

    return-object v1
.end method

.method private findPitchPeriod([SI)I
    .registers 10
    .param p1, "samples"    # [S
    .param p2, "position"    # I

    .line 304
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    const/4 v1, 0x1

    const/16 v2, 0xfa0

    if-le v0, v2, :cond_9

    div-int/2addr v0, v2

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    .line 305
    .local v0, "skip":I
    :goto_a
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    if-ne v2, v1, :cond_19

    if-ne v0, v1, :cond_19

    .line 306
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    .local v1, "period":I
    goto :goto_54

    .line 308
    .end local v1    # "period":I
    :cond_19
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleInput([SII)V

    .line 309
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    div-int/2addr v3, v0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    div-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v2

    .line 310
    .local v2, "period":I
    if-eq v0, v1, :cond_53

    .line 311
    mul-int v2, v2, v0

    .line 312
    mul-int/lit8 v3, v0, 0x4

    sub-int v3, v2, v3

    .line 313
    .local v3, "minP":I
    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    .line 314
    .local v4, "maxP":I
    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    if-ge v3, v6, :cond_3a

    .line 315
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    .line 317
    :cond_3a
    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    if-le v4, v6, :cond_40

    .line 318
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    .line 320
    :cond_40
    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    if-ne v6, v1, :cond_49

    .line 321
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    .end local v2    # "period":I
    .restart local v1    # "period":I
    goto :goto_54

    .line 323
    .end local v1    # "period":I
    .restart local v2    # "period":I
    :cond_49
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleInput([SII)V

    .line 324
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    invoke-direct {p0, v1, v5, v3, v4}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    .end local v2    # "period":I
    .restart local v1    # "period":I
    goto :goto_54

    .line 310
    .end local v1    # "period":I
    .end local v3    # "minP":I
    .end local v4    # "maxP":I
    .restart local v2    # "period":I
    :cond_53
    move v1, v2

    .line 328
    .end local v2    # "period":I
    .restart local v1    # "period":I
    :goto_54
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxDiff:I

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/audio/Sonic;->previousPeriodBetter(II)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 329
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    .local v2, "retPeriod":I
    goto :goto_62

    .line 331
    .end local v2    # "retPeriod":I
    :cond_61
    move v2, v1

    .line 333
    .restart local v2    # "retPeriod":I
    :goto_62
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    iput v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    .line 334
    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    .line 335
    return v2
.end method

.method private findPitchPeriodInRange([SIII)I
    .registers 15
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "minPeriod"    # I
    .param p4, "maxPeriod"    # I

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "bestPeriod":I
    const/16 v1, 0xff

    .line 251
    .local v1, "worstPeriod":I
    const/4 v2, 0x1

    .line 252
    .local v2, "minDiff":I
    const/4 v3, 0x0

    .line 253
    .local v3, "maxDiff":I
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int p2, p2, v4

    .line 254
    move v4, p3

    .local v4, "period":I
    :goto_a
    if-gt v4, p4, :cond_36

    .line 255
    const/4 v5, 0x0

    .line 256
    .local v5, "diff":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_e
    if-ge v6, v4, :cond_23

    .line 257
    add-int v7, p2, v6

    aget-short v7, p1, v7

    .line 258
    .local v7, "sVal":S
    add-int v8, p2, v4

    add-int/2addr v8, v6

    aget-short v8, p1, v8

    .line 259
    .local v8, "pVal":S
    sub-int v9, v7, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v5, v9

    .line 256
    .end local v7    # "sVal":S
    .end local v8    # "pVal":S
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 264
    .end local v6    # "i":I
    :cond_23
    mul-int v6, v5, v0

    mul-int v7, v2, v4

    if-ge v6, v7, :cond_2b

    .line 265
    move v2, v5

    .line 266
    move v0, v4

    .line 268
    :cond_2b
    mul-int v6, v5, v1

    mul-int v7, v3, v4

    if-le v6, v7, :cond_33

    .line 269
    move v3, v5

    .line 270
    move v1, v4

    .line 254
    .end local v5    # "diff":I
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 273
    .end local v4    # "period":I
    :cond_36
    div-int v4, v2, v0

    iput v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    .line 274
    div-int v4, v3, v1

    iput v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxDiff:I

    .line 275
    return v0
.end method

.method private insertPitchPeriod([SIFI)I
    .registers 15
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "speed"    # F
    .param p4, "period"    # I

    .line 436
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_f

    .line 437
    int-to-float v0, p4

    mul-float v0, v0, p3

    sub-float/2addr v1, p3

    div-float/2addr v0, v1

    float-to-int v0, v0

    .local v0, "newFrameCount":I
    goto :goto_1d

    .line 439
    .end local v0    # "newFrameCount":I
    :cond_f
    move v0, p4

    .line 440
    .restart local v0    # "newFrameCount":I
    int-to-float v2, p4

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, p3

    sub-float/2addr v3, v1

    mul-float v2, v2, v3

    sub-float/2addr v1, p3

    div-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 442
    :goto_1d
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int v3, p4, v0

    .line 443
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    .line 444
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v3, p2, v2

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    mul-int v4, v4, v2

    mul-int v2, v2, p4

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int v5, v1, p4

    add-int v7, p2, p4

    move v2, v0

    move-object v6, p1

    move-object v8, p1

    move v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 459
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int v2, p4, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    .line 460
    return v0
.end method

.method private interpolate([SIII)S
    .registers 14
    .param p1, "in"    # [S
    .param p2, "inPos"    # I
    .param p3, "oldSampleRate"    # I
    .param p4, "newSampleRate"    # I

    .line 365
    aget-short v0, p1, p2

    .line 366
    .local v0, "left":S
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    add-int/2addr v1, p2

    aget-short v1, p1, v1

    .line 367
    .local v1, "right":S
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    mul-int v2, v2, p3

    .line 368
    .local v2, "position":I
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    mul-int v4, v3, p4

    .line 369
    .local v4, "leftPosition":I
    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, p4

    .line 370
    .local v3, "rightPosition":I
    sub-int v5, v3, v2

    .line 371
    .local v5, "ratio":I
    sub-int v6, v3, v4

    .line 372
    .local v6, "width":I
    mul-int v7, v5, v0

    sub-int v8, v6, v5

    mul-int v8, v8, v1

    add-int/2addr v7, v8

    div-int/2addr v7, v6

    int-to-short v7, v7

    return v7
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .registers 8
    .param p1, "originalOutputFrameCount"    # I

    .line 339
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v0, p1

    .line 340
    .local v0, "frameCount":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    .line 341
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v4, p1, v3

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    mul-int v5, v5, v3

    mul-int v3, v3, v0

    invoke-static {v2, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    .line 348
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    .line 349
    return-void
.end method

.method private static overlapAdd(II[SI[SI[SI)V
    .registers 15
    .param p0, "frameCount"    # I
    .param p1, "channelCount"    # I
    .param p2, "out"    # [S
    .param p3, "outPosition"    # I
    .param p4, "rampDown"    # [S
    .param p5, "rampDownPosition"    # I
    .param p6, "rampUp"    # [S
    .param p7, "rampUpPosition"    # I

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_27

    .line 510
    mul-int v1, p3, p1

    add-int/2addr v1, v0

    .line 511
    .local v1, "o":I
    mul-int v2, p7, p1

    add-int/2addr v2, v0

    .line 512
    .local v2, "u":I
    mul-int v3, p5, p1

    add-int/2addr v3, v0

    .line 513
    .local v3, "d":I
    const/4 v4, 0x0

    .local v4, "t":I
    :goto_d
    if-ge v4, p0, :cond_24

    .line 514
    aget-short v5, p4, v3

    sub-int v6, p0, v4

    mul-int v5, v5, v6

    aget-short v6, p6, v2

    mul-int v6, v6, v4

    add-int/2addr v5, v6

    div-int/2addr v5, p0

    int-to-short v5, v5

    aput-short v5, p2, v1

    .line 515
    add-int/2addr v1, p1

    .line 516
    add-int/2addr v3, p1

    .line 517
    add-int/2addr v2, p1

    .line 513
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 509
    .end local v1    # "o":I
    .end local v2    # "u":I
    .end local v3    # "d":I
    .end local v4    # "t":I
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 520
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method private previousPeriodBetter(II)Z
    .registers 6
    .param p1, "minDiff"    # I
    .param p2, "maxDiff"    # I

    .line 283
    const/4 v0, 0x0

    if-eqz p1, :cond_18

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    if-nez v1, :cond_8

    goto :goto_18

    .line 286
    :cond_8
    mul-int/lit8 v1, p1, 0x3

    if-le p2, v1, :cond_d

    .line 288
    return v0

    .line 290
    :cond_d
    mul-int/lit8 v1, p1, 0x2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    mul-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_16

    .line 292
    return v0

    .line 294
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 284
    :cond_18
    :goto_18
    return v0
.end method

.method private processStreamInput()V
    .registers 9

    .line 486
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    .line 487
    .local v0, "originalOutputFrameCount":I
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    .line 488
    .local v1, "s":F
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->rate:F

    mul-float v3, v3, v2

    .line 489
    .local v3, "r":F
    float-to-double v4, v1

    const-wide v6, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v2, v4, v6

    if-gtz v2, :cond_2b

    float-to-double v4, v1

    const-wide v6, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v2, v4, v6

    if-gez v2, :cond_20

    goto :goto_2b

    .line 492
    :cond_20
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    const/4 v5, 0x0

    invoke-direct {p0, v2, v5, v4}, Lcom/google/android/exoplayer2/audio/Sonic;->copyToOutput([SII)V

    .line 493
    iput v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    goto :goto_2e

    .line 490
    :cond_2b
    :goto_2b
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->changeSpeed(F)V

    .line 495
    :goto_2e
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_37

    .line 496
    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->adjustRate(FI)V

    .line 498
    :cond_37
    return-void
.end method

.method private removePitchFrames(I)V
    .registers 6
    .param p1, "frameCount"    # I

    .line 352
    if-nez p1, :cond_3

    .line 353
    return-void

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v2, p1, v1

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v3, p1

    mul-int v3, v3, v1

    const/4 v1, 0x0

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    .line 362
    return-void
.end method

.method private removeProcessedInputFrames(I)V
    .registers 7
    .param p1, "positionFrames"    # I

    .line 206
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    sub-int/2addr v0, p1

    .line 207
    .local v0, "remainingFrames":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v3, p1, v2

    const/4 v4, 0x0

    mul-int v2, v2, v0

    invoke-static {v1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    .line 210
    return-void
.end method

.method private skipPitchPeriod([SIFI)I
    .registers 16
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "speed"    # F
    .param p4, "period"    # I

    .line 413
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, p3, v1

    if-ltz v2, :cond_e

    .line 414
    int-to-float v1, p4

    sub-float v0, p3, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    .local v0, "newFrameCount":I
    goto :goto_1a

    .line 416
    .end local v0    # "newFrameCount":I
    :cond_e
    move v2, p4

    .line 417
    .local v2, "newFrameCount":I
    int-to-float v3, p4

    sub-float/2addr v1, p3

    mul-float v3, v3, v1

    sub-float v0, p3, v0

    div-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    move v0, v2

    .line 419
    .end local v2    # "newFrameCount":I
    .restart local v0    # "newFrameCount":I
    :goto_1a
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    .line 420
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int v10, p2, p4

    move v3, v0

    move-object v7, p1

    move v8, p2

    move-object v9, p1

    invoke-static/range {v3 .. v10}, Lcom/google/android/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 429
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    .line 430
    return v0
.end method


# virtual methods
.method public flush()V
    .registers 2

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    .line 166
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    .line 167
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    .line 168
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 169
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 170
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 171
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    .line 172
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    .line 173
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    .line 174
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxDiff:I

    .line 175
    return-void
.end method

.method public getOutput(Ljava/nio/ShortBuffer;)V
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ShortBuffer;

    .line 122
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 123
    .local v0, "framesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 124
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    .line 125
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v5, v0, v4

    mul-int v1, v1, v4

    invoke-static {v2, v5, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    return-void
.end method

.method public getOutputSize()I
    .registers 3

    .line 179
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getPendingInputBytes()I
    .registers 3

    .line 97
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public queueEndOfStream()V
    .registers 10

    .line 138
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    .line 139
    .local v0, "remainingFrameCount":I
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    .line 140
    .local v1, "s":F
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->rate:F

    mul-float v3, v3, v2

    .line 141
    .local v3, "r":F
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    int-to-float v4, v0

    div-float/2addr v4, v1

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v2, v4

    .line 145
    .local v2, "expectedOutputFrames":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    .line 146
    invoke-direct {p0, v4, v5, v6}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    .line 148
    const/4 v4, 0x0

    .local v4, "xSample":I
    :goto_29
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v6, v5, 0x2

    iget v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v6, v6, v7

    const/4 v8, 0x0

    if-ge v4, v6, :cond_3e

    .line 149
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    mul-int v7, v7, v0

    add-int/2addr v7, v4

    aput-short v8, v5, v7

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 151
    .end local v4    # "xSample":I
    :cond_3e
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    .line 152
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/Sonic;->processStreamInput()V

    .line 154
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    if-le v4, v2, :cond_4e

    .line 155
    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    .line 158
    :cond_4e
    iput v8, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    .line 159
    iput v8, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 160
    iput v8, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    .line 161
    return-void
.end method

.method public queueInput(Ljava/nio/ShortBuffer;)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ShortBuffer;

    .line 107
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    .line 108
    .local v0, "framesToWrite":I
    mul-int v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 109
    .local v1, "bytesToWrite":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    .line 110
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v3, v3, v4

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 111
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    .line 112
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/Sonic;->processStreamInput()V

    .line 113
    return-void
.end method
