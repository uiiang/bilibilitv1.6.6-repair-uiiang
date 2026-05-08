.class final Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;
.super Ljava/lang/Object;
.source "AudioTrackPositionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FORCE_RESET_WORKAROUND_TIMEOUT_MS:J = 0xc8L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_LATENCY_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MODE_SWITCH_SMOOTHING_DURATION_US:J = 0xf4240L

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1

.field private static final RAW_PLAYBACK_HEAD_POSITION_UPDATE_INTERVAL_MS:J = 0x5L


# instance fields
.field private audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

.field private audioTrack:Landroid/media/AudioTrack;

.field private audioTrackPlaybackSpeed:F

.field private bufferSize:I

.field private bufferSizeUs:J

.field private endPlaybackHeadPosition:J

.field private forceResetWorkaroundTimeMs:J

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private hasData:Z

.field private isOutputPcm:Z

.field private lastLatencySampleTimeUs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastPositionUs:J

.field private lastRawPlaybackHeadPositionSampleTimeMs:J

.field private lastSampleUsedGetTimestampMode:Z

.field private lastSystemTimeUs:J

.field private latencyUs:J

.field private final listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

.field private needsPassthroughWorkarounds:Z

.field private nextPlayheadOffsetIndex:I

.field private notifiedPositionIncreasing:Z

.field private outputPcmFrameSize:I

.field private outputSampleRate:I

.field private passthroughWorkaroundPauseOffset:J

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private previousModePositionUs:J

.field private previousModeSystemTimeUs:J

.field private rawPlaybackHeadPosition:J

.field private rawPlaybackHeadWrapCount:J

.field private smoothedPlayheadOffsetUs:J

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;)V
    .registers 6
    .param p1, "listener"    # Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    .line 215
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_21

    .line 217
    :try_start_11
    const-class v0, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_1f} :catch_20

    .line 220
    goto :goto_21

    .line 218
    :catch_20
    move-exception v0

    .line 222
    :cond_21
    :goto_21
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    .line 223
    return-void
.end method

.method private forceHasPendingData()Z
    .registers 6

    .line 565
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 566
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 567
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 565
    :goto_20
    return v0
.end method

.method private getPlaybackHeadPosition()J
    .registers 13

    .line 592
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 593
    .local v0, "currentTimeMs":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2a

    .line 595
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v0

    sub-long/2addr v4, v2

    .line 596
    .local v4, "elapsedTimeSinceStopUs":J
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 597
    invoke-static {v4, v5, v2}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v2

    .line 598
    .local v2, "mediaTimeSinceStopUs":J
    iget v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v2, v3, v6}, Lcom/google/android/exoplayer2/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide v6

    .line 599
    .local v6, "framesSinceStop":J
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    add-long/2addr v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    return-wide v8

    .line 601
    .end local v2    # "mediaTimeSinceStopUs":J
    .end local v4    # "elapsedTimeSinceStopUs":J
    .end local v6    # "framesSinceStop":J
    :cond_2a
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPositionSampleTimeMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5

    cmp-long v6, v2, v4

    if-ltz v6, :cond_39

    .line 603
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->updateRawPlaybackHeadPosition(J)V

    .line 604
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPositionSampleTimeMs:J

    .line 606
    :cond_39
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    return-wide v2
.end method

.method private getPlaybackHeadPositionUs()J
    .registers 4

    .line 580
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybePollAndCheckTimestamp(J)V
    .registers 20
    .param p1, "systemTimeUs"    # J

    .line 500
    move-object/from16 v0, p0

    move-wide/from16 v10, p1

    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 501
    .local v12, "audioTimestampPoller":Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;
    invoke-virtual {v12, v10, v11}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->maybePollTimestamp(J)Z

    move-result v1

    if-nez v1, :cond_14

    .line 502
    return-void

    .line 506
    :cond_14
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v13

    .line 507
    .local v13, "timestampSystemTimeUs":J
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v8

    .line 508
    .local v8, "timestampPositionFrames":J
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v15

    .line 509
    .local v15, "playbackPositionUs":J
    sub-long v1, v13, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v1, v3

    if-lez v5, :cond_3c

    .line 510
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    move-wide v2, v8

    move-wide v4, v13

    move-wide/from16 v6, p1

    move-wide v10, v8

    .end local v8    # "timestampPositionFrames":J
    .local v10, "timestampPositionFrames":J
    move-wide v8, v15

    invoke-interface/range {v1 .. v9}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onSystemTimeUsMismatch(JJJJ)V

    .line 512
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->rejectTimestamp()V

    goto :goto_5d

    .line 513
    .end local v10    # "timestampPositionFrames":J
    .restart local v8    # "timestampPositionFrames":J
    :cond_3c
    move-wide v10, v8

    .end local v8    # "timestampPositionFrames":J
    .restart local v10    # "timestampPositionFrames":J
    iget v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 514
    invoke-static {v10, v11, v1}, Lcom/google/android/exoplayer2/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v1

    sub-long/2addr v1, v15

    .line 513
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_5a

    .line 516
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    move-wide v2, v10

    move-wide v4, v13

    move-wide/from16 v6, p1

    move-wide v8, v15

    invoke-interface/range {v1 .. v9}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onPositionFramesMismatch(JJJJ)V

    .line 518
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->rejectTimestamp()V

    goto :goto_5d

    .line 520
    :cond_5a
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->acceptTimestamp()V

    .line 522
    :goto_5d
    return-void
.end method

.method private maybeSampleSyncParams()V
    .registers 14

    .line 467
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 468
    .local v0, "systemTimeUs":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-ltz v6, :cond_51

    .line 469
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v2

    .line 470
    .local v2, "playbackPositionUs":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1c

    .line 472
    return-void

    .line 475
    :cond_1c
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    iget v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    iget v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 476
    invoke-static {v2, v3, v8}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v8

    sub-long/2addr v8, v0

    aput-wide v8, v6, v7

    .line 478
    iget v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0xa

    rem-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 479
    iget v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v6, v7, :cond_3a

    .line 480
    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 482
    :cond_3a
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 483
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    .line 484
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    iget v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v4, v5, :cond_51

    .line 485
    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    aget-wide v9, v8, v4

    int-to-long v11, v5

    div-long/2addr v9, v11

    add-long/2addr v6, v9

    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    .line 484
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 489
    .end local v2    # "playbackPositionUs":J
    .end local v4    # "i":I
    :cond_51
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v2, :cond_56

    .line 492
    return-void

    .line 495
    :cond_56
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->maybePollAndCheckTimestamp(J)V

    .line 496
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->maybeUpdateLatency(J)V

    .line 497
    return-void
.end method

.method private maybeUpdateLatency(J)V
    .registers 10
    .param p1, "systemTimeUs"    # J

    .line 525
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_53

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v5, v1, v3

    if-ltz v5, :cond_53

    .line 531
    :try_start_13
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 532
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    .line 535
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    .line 537
    const-wide/32 v4, 0x4c4b40

    cmp-long v6, v0, v4

    if-lez v6, :cond_4c

    .line 538
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    invoke-interface {v4, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onInvalidLatency(J)V

    .line 539
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4c} :catch_4d

    .line 544
    :cond_4c
    goto :goto_51

    .line 541
    :catch_4d
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 545
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_51
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    .line 547
    :cond_53
    return-void
.end method

.method private static needsPassthroughWorkarounds(I)Z
    .registers 3
    .param p0, "outputEncoding"    # I

    .line 575
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_e

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x6

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private resetSyncParams()V
    .registers 4

    .line 550
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    .line 551
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 552
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 553
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 554
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    .line 555
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    .line 556
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    .line 557
    return-void
.end method

.method private updateRawPlaybackHeadPosition(J)V
    .registers 14
    .param p1, "currentTimeMs"    # J

    .line 610
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 611
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    .line 612
    .local v1, "state":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 614
    return-void

    .line 616
    :cond_10
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 617
    .local v2, "rawPlaybackHeadPosition":J
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2f

    .line 621
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2c

    cmp-long v4, v2, v5

    if-nez v4, :cond_2c

    .line 622
    iget-wide v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    iput-wide v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    .line 624
    :cond_2c
    iget-wide v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v2, v7

    .line 627
    :cond_2f
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v7, 0x1d

    if-gt v4, v7, :cond_52

    .line 628
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v5

    if-nez v4, :cond_50

    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    cmp-long v4, v9, v5

    if-lez v4, :cond_50

    const/4 v4, 0x3

    if-ne v1, v4, :cond_50

    .line 636
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    cmp-long v6, v4, v7

    if-nez v6, :cond_4f

    .line 637
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 639
    :cond_4f
    return-void

    .line 641
    :cond_50
    iput-wide v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 645
    :cond_52
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_5f

    .line 647
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    .line 649
    :cond_5f
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    .line 650
    return-void
.end method


# virtual methods
.method public getAvailableBufferSize(J)I
    .registers 7
    .param p1, "writtenBytes"    # J

    .line 403
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    sub-long v0, p1, v0

    long-to-int v1, v0

    .line 404
    .local v1, "bytesPending":I
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCurrentPositionUs(Z)J
    .registers 19
    .param p1, "sourceEnded"    # Z

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->maybeSampleSyncParams()V

    .line 281
    :cond_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 283
    .local v1, "systemTimeUs":J
    iget-object v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 284
    .local v5, "audioTimestampPoller":Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->hasAdvancingTimestamp()Z

    move-result v6

    .line 285
    .local v6, "useGetTimestampMode":Z
    if-eqz v6, :cond_41

    .line 287
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v7

    .line 288
    .local v7, "timestampPositionFrames":J
    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v7, v8, v9}, Lcom/google/android/exoplayer2/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v9

    .line 289
    .local v9, "timestampPositionUs":J
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v11

    sub-long v11, v1, v11

    .line 290
    .local v11, "elapsedSinceTimestampUs":J
    iget v13, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 291
    invoke-static {v11, v12, v13}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v11

    .line 292
    add-long/2addr v9, v11

    .line 293
    .end local v7    # "timestampPositionFrames":J
    .end local v11    # "elapsedSinceTimestampUs":J
    .local v9, "positionUs":J
    goto :goto_61

    .line 294
    .end local v9    # "positionUs":J
    :cond_41
    iget v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-nez v7, :cond_4b

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v7

    move-wide v9, v7

    .local v7, "positionUs":J
    goto :goto_55

    .line 301
    .end local v7    # "positionUs":J
    :cond_4b
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-long/2addr v7, v1

    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 302
    invoke-static {v7, v8, v9}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v7

    move-wide v9, v7

    .line 305
    .restart local v9    # "positionUs":J
    :goto_55
    if-nez p1, :cond_61

    .line 306
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    sub-long v7, v9, v7

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 310
    :cond_61
    :goto_61
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    if-eq v7, v6, :cond_6d

    .line 312
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    .line 313
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPositionUs:J

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    .line 315
    :cond_6d
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    sub-long v7, v1, v7

    .line 316
    .local v7, "elapsedSincePreviousModeUs":J
    const-wide/32 v11, 0xf4240

    cmp-long v13, v7, v11

    if-gez v13, :cond_8c

    .line 319
    iget-wide v13, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    iget v15, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 321
    invoke-static {v7, v8, v15}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v15

    add-long/2addr v13, v15

    .line 324
    .local v13, "previousModeProjectedPositionUs":J
    mul-long v15, v7, v3

    div-long/2addr v15, v11

    .line 325
    .local v15, "rampPoint":J
    mul-long v9, v9, v15

    .line 326
    sub-long v11, v3, v15

    mul-long v11, v11, v13

    add-long/2addr v9, v11

    .line 327
    div-long/2addr v9, v3

    .line 330
    .end local v13    # "previousModeProjectedPositionUs":J
    .end local v15    # "rampPoint":J
    :cond_8c
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    if-nez v3, :cond_b3

    iget-wide v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPositionUs:J

    cmp-long v11, v9, v3

    if-lez v11, :cond_b3

    .line 331
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    .line 332
    sub-long v3, v9, v3

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v3

    .line 333
    .local v3, "mediaDurationSinceLastPositionUs":J
    iget v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 334
    invoke-static {v3, v4, v11}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v11

    .line 337
    .local v11, "playoutDurationSinceLastPositionUs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 338
    .local v13, "playoutStartSystemTimeMs":J
    iget-object v15, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    invoke-interface {v15, v13, v14}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onPositionAdvancing(J)V

    .line 341
    .end local v3    # "mediaDurationSinceLastPositionUs":J
    .end local v11    # "playoutDurationSinceLastPositionUs":J
    .end local v13    # "playoutStartSystemTimeMs":J
    :cond_b3
    iput-wide v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    .line 342
    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPositionUs:J

    .line 343
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    .line 345
    return-wide v9
.end method

.method public handleEndOfStream(J)V
    .registers 7
    .param p1, "writtenFrames"    # J

    .line 422
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 424
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    .line 425
    return-void
.end method

.method public hasPendingData(J)Z
    .registers 9
    .param p1, "writtenFrames"    # J

    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getCurrentPositionUs(Z)J

    move-result-wide v1

    .line 435
    .local v1, "currentPositionUs":J
    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gtz v5, :cond_15

    .line 436
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceHasPendingData()Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    const/4 v0, 0x1

    .line 435
    :cond_16
    return v0
.end method

.method public isPlaying()Z
    .registers 3

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public isStalled(J)Z
    .registers 8
    .param p1, "writtenFrames"    # J

    .line 409
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_20

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 409
    :goto_21
    return v0
.end method

.method public mayHandleBuffer(J)Z
    .registers 11
    .param p1, "writtenFrames"    # J

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 367
    .local v0, "playState":I
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 370
    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_18

    .line 372
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    .line 373
    return v3

    .line 379
    :cond_18
    if-ne v0, v2, :cond_25

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_25

    .line 380
    return v3

    .line 384
    :cond_25
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    .line 385
    .local v1, "hadData":Z
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    .line 386
    if-eqz v1, :cond_40

    if-nez v3, :cond_40

    if-eq v0, v2, :cond_40

    .line 387
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSize:I

    iget-wide v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onUnderrun(IJ)V

    .line 390
    :cond_40
    return v2
.end method

.method public pause()Z
    .registers 6

    .line 445
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->resetSyncParams()V

    .line 446
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    .line 450
    const/4 v0, 0x1

    return v0

    .line 453
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 2

    .line 461
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->resetSyncParams()V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 463
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 464
    return-void
.end method

.method public setAudioTrack(Landroid/media/AudioTrack;ZIII)V
    .registers 12
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "isPassthrough"    # Z
    .param p3, "outputEncoding"    # I
    .param p4, "outputPcmFrameSize"    # I
    .param p5, "bufferSize"    # I

    .line 242
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 243
    iput p4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    .line 244
    iput p5, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSize:I

    .line 245
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 246
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 247
    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    invoke-static {p3}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    .line 248
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->isEncodingLinearPcm(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    .line 249
    nop

    .line 250
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_39

    .line 251
    div-int v1, p5, p4

    int-to-long v4, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v4, v5, v1}, Lcom/google/android/exoplayer2/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v4

    goto :goto_3a

    .line 252
    :cond_39
    move-wide v4, v2

    :goto_3a
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    .line 253
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    .line 254
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    .line 255
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    .line 256
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    .line 257
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 258
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 259
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    .line 260
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    .line 261
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 262
    return-void
.end method

.method public setAudioTrackPlaybackSpeed(F)V
    .registers 3
    .param p1, "audioTrackPlaybackSpeed"    # F

    .line 265
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    if-eqz v0, :cond_9

    .line 269
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    .line 271
    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->resetSyncParams()V

    .line 272
    return-void
.end method

.method public start()V
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    .line 351
    return-void
.end method
