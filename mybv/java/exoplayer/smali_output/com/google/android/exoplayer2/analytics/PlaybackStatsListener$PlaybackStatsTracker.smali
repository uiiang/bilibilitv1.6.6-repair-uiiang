.class final Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;
.super Ljava/lang/Object;
.source "PlaybackStatsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackStatsTracker"
.end annotation


# instance fields
.field private audioFormatBitrateTimeProduct:J

.field private final audioFormatHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;"
        }
    .end annotation
.end field

.field private audioFormatTimeMs:J

.field private audioUnderruns:J

.field private bandwidthBytes:J

.field private bandwidthTimeMs:J

.field private currentAudioFormat:Lcom/google/android/exoplayer2/Format;

.field private currentPlaybackSpeed:F

.field private currentPlaybackState:I

.field private currentPlaybackStateStartTimeMs:J

.field private currentVideoFormat:Lcom/google/android/exoplayer2/Format;

.field private droppedFrames:J

.field private fatalErrorCount:I

.field private final fatalErrorHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;",
            ">;"
        }
    .end annotation
.end field

.field private firstReportedTimeMs:J

.field private hasBeenReady:Z

.field private hasEnded:Z

.field private hasFatalError:Z

.field private initialAudioFormatBitrate:J

.field private initialVideoFormatBitrate:J

.field private initialVideoFormatHeight:I

.field private final isAd:Z

.field private isForeground:Z

.field private isInterruptedByAd:Z

.field private isJoinTimeInvalid:Z

.field private isSeeking:Z

.field private final keepHistory:Z

.field private lastAudioFormatStartTimeMs:J

.field private lastRebufferStartTimeMs:J

.field private lastVideoFormatStartTimeMs:J

.field private maxRebufferTimeMs:J

.field private final mediaTimeHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation
.end field

.field private nonFatalErrorCount:I

.field private final nonFatalErrorHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;",
            ">;"
        }
    .end annotation
.end field

.field private pauseBufferCount:I

.field private pauseCount:I

.field private final playbackStateDurationsMs:[J

.field private final playbackStateHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field private rebufferCount:I

.field private seekCount:I

.field private startedLoading:Z

.field private videoFormatBitrateTimeMs:J

.field private videoFormatBitrateTimeProduct:J

.field private videoFormatHeightTimeMs:J

.field private videoFormatHeightTimeProduct:J

.field private final videoFormatHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 6
    .param p1, "keepHistory"    # Z
    .param p2, "startTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    .line 420
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateDurationsMs:[J

    .line 421
    if-eqz p1, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_17

    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_17
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateHistory:Ljava/util/List;

    .line 422
    if-eqz p1, :cond_21

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_25

    :cond_21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_25
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    .line 423
    if-eqz p1, :cond_2f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_33

    :cond_2f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_33
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHistory:Ljava/util/List;

    .line 424
    if-eqz p1, :cond_3d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_41

    :cond_3d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_41
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatHistory:Ljava/util/List;

    .line 425
    if-eqz p1, :cond_4b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4f

    :cond_4b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_4f
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorHistory:Ljava/util/List;

    .line 426
    if-eqz p1, :cond_59

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5d

    :cond_59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_5d
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorHistory:Ljava/util/List;

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    .line 428
    iget-wide v1, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    .line 429
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->firstReportedTimeMs:J

    .line 430
    iput-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    .line 431
    iget-object v1, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v1, :cond_7c

    iget-object v1, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_7c

    const/4 v0, 0x1

    :cond_7c
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isAd:Z

    .line 432
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    .line 433
    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    .line 434
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    .line 435
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    .line 436
    return-void
.end method

.method private guessMediaTimeBasedOnElapsedRealtime(J)[J
    .registers 15
    .param p1, "realtimeMs"    # J

    .line 775
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 776
    .local v0, "previousKnownMediaTimeHistory":[J
    const/4 v1, 0x0

    aget-wide v3, v0, v1

    .line 777
    .local v3, "previousRealtimeMs":J
    aget-wide v5, v0, v2

    .line 778
    .local v5, "previousMediaTimeMs":J
    sub-long v7, p1, v3

    long-to-float v7, v7

    iget v8, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    mul-float v7, v7, v8

    float-to-long v7, v7

    .line 780
    .local v7, "elapsedMediaTimeEstimateMs":J
    add-long v9, v5, v7

    .line 781
    .local v9, "mediaTimeEstimateMs":J
    const/4 v11, 0x2

    new-array v11, v11, [J

    aput-wide p1, v11, v1

    aput-wide v9, v11, v2

    return-object v11
.end method

.method private static isInvalidJoinTransition(II)Z
    .registers 6
    .param p0, "oldState"    # I
    .param p1, "newState"    # I

    .line 865
    const/16 v0, 0xe

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_c

    if-eq p0, v2, :cond_c

    if-eq p0, v0, :cond_c

    .line 868
    return v1

    .line 870
    :cond_c
    if-eq p1, v3, :cond_21

    if-eq p1, v2, :cond_21

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    const/4 v0, 0x4

    if-eq p1, v0, :cond_21

    const/16 v0, 0x9

    if-eq p1, v0, :cond_21

    const/16 v0, 0xb

    if-eq p1, v0, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method private static isPausedState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 853
    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private static isReadyState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 847
    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    const/16 v0, 0x9

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private static isRebufferingState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 858
    const/4 v0, 0x6

    if-eq p0, v0, :cond_d

    const/4 v0, 0x7

    if-eq p0, v0, :cond_d

    const/16 v0, 0xa

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private maybeRecordAudioFormatTime(J)V
    .registers 9
    .param p1, "nowMs"    # J

    .line 836
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_29

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    .line 839
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastAudioFormatStartTimeMs:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 840
    .local v0, "mediaDurationMs":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatTimeMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatTimeMs:J

    .line 841
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatBitrateTimeProduct:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v4, v4

    mul-long v4, v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatBitrateTimeProduct:J

    .line 843
    .end local v0    # "mediaDurationMs":J
    :cond_29
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastAudioFormatStartTimeMs:J

    .line 844
    return-void
.end method

.method private maybeRecordVideoFormatTime(J)V
    .registers 11
    .param p1, "nowMs"    # J

    .line 820
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_40

    .line 822
    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastVideoFormatStartTimeMs:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    mul-float v1, v1, v2

    float-to-long v1, v1

    .line 823
    .local v1, "mediaDurationMs":J
    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_29

    .line 824
    iget-wide v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeMs:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeMs:J

    .line 825
    iget-wide v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeProduct:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    int-to-long v6, v0

    mul-long v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeProduct:J

    .line 827
    :cond_29
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v0, v3, :cond_40

    .line 828
    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeMs:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeMs:J

    .line 829
    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeProduct:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v5, v0

    mul-long v5, v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeProduct:J

    .line 832
    .end local v1    # "mediaDurationMs":J
    :cond_40
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastVideoFormatStartTimeMs:J

    .line 833
    return-void
.end method

.method private maybeUpdateAudioFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .registers 8
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "newFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 804
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 805
    return-void

    .line 807
    :cond_9
    iget-wide v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordAudioFormatTime(J)V

    .line 808
    if-eqz p2, :cond_22

    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_22

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 811
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    .line 813
    :cond_22
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 814
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v0, :cond_32

    .line 815
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatHistory:Ljava/util/List;

    new-instance v1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_32
    return-void
.end method

.method private maybeUpdateMaxRebufferTimeMs(J)V
    .registers 10
    .param p1, "nowMs"    # J

    .line 743
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isRebufferingState(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 744
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastRebufferStartTimeMs:J

    sub-long v0, p1, v0

    .line 745
    .local v0, "rebufferDurationMs":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1b

    cmp-long v4, v0, v2

    if-lez v4, :cond_1d

    .line 746
    :cond_1b
    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    .line 749
    .end local v0    # "rebufferDurationMs":J
    :cond_1d
    return-void
.end method

.method private maybeUpdateMediaTimeHistory(JJ)V
    .registers 14
    .param p1, "realtimeMs"    # J
    .param p3, "mediaTimeMs"    # J

    .line 752
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-nez v0, :cond_5

    .line 753
    return-void

    .line 755
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-eq v0, v1, :cond_3d

    .line 756
    cmp-long v0, p3, v4

    if-nez v0, :cond_17

    .line 757
    return-void

    .line 759
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 760
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v7, v0, v6

    .line 761
    .local v7, "previousMediaTimeMs":J
    cmp-long v0, v7, p3

    if-eqz v0, :cond_3d

    .line 762
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    new-array v1, v3, [J

    aput-wide p1, v1, v2

    aput-wide v7, v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    .end local v7    # "previousMediaTimeMs":J
    :cond_3d
    cmp-long v0, p3, v4

    if-eqz v0, :cond_4d

    .line 768
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    new-array v1, v3, [J

    aput-wide p1, v1, v2

    aput-wide p3, v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 769
    :cond_4d
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 770
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->guessMediaTimeBasedOnElapsedRealtime(J)[J

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_5e
    :goto_5e
    return-void
.end method

.method private maybeUpdateVideoFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .registers 9
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "newFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 785
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 786
    return-void

    .line 788
    :cond_9
    iget-wide v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordVideoFormatTime(J)V

    .line 789
    if-eqz p2, :cond_2e

    .line 790
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v0, v1, :cond_1d

    .line 791
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->height:I

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    .line 793
    :cond_1d
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2e

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v0, v1, :cond_2e

    .line 794
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    .line 797
    :cond_2e
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    .line 798
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v0, :cond_3e

    .line 799
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHistory:Ljava/util/List;

    new-instance v1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_3e
    return-void
.end method

.method private resolveNewPlaybackState(Lcom/google/android/exoplayer2/Player;)I
    .registers 7
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 698
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    .line 699
    .local v0, "playerPlaybackState":I
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSeeking:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isForeground:Z

    if-eqz v1, :cond_e

    .line 701
    const/4 v1, 0x5

    return v1

    .line 702
    :cond_e
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasFatalError:Z

    if-eqz v1, :cond_15

    .line 703
    const/16 v1, 0xd

    return v1

    .line 704
    :cond_15
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isForeground:Z

    const/4 v2, 0x1

    if-nez v1, :cond_21

    .line 706
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->startedLoading:Z

    if-eqz v1, :cond_1f

    .line 707
    goto :goto_20

    .line 708
    :cond_1f
    const/4 v2, 0x0

    .line 706
    :goto_20
    return v2

    .line 709
    :cond_21
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInterruptedByAd:Z

    const/16 v3, 0xe

    if-eqz v1, :cond_28

    .line 710
    return v3

    .line 711
    :cond_28
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 712
    const/16 v1, 0xb

    return v1

    .line 713
    :cond_2e
    const/4 v4, 0x2

    if-ne v0, v4, :cond_50

    .line 714
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-eqz v1, :cond_4f

    if-eq v1, v2, :cond_4f

    if-eq v1, v4, :cond_4f

    if-ne v1, v3, :cond_3c

    goto :goto_4f

    .line 720
    :cond_3c
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v1

    if-nez v1, :cond_44

    .line 721
    const/4 v1, 0x7

    return v1

    .line 723
    :cond_44
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackSuppressionReason()I

    move-result v1

    if-eqz v1, :cond_4d

    .line 724
    const/16 v1, 0xa

    goto :goto_4e

    .line 725
    :cond_4d
    const/4 v1, 0x6

    .line 723
    :goto_4e
    return v1

    .line 718
    :cond_4f
    :goto_4f
    return v4

    .line 726
    :cond_50
    const/4 v3, 0x3

    if-ne v0, v3, :cond_65

    .line 727
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 728
    return v1

    .line 730
    :cond_5a
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackSuppressionReason()I

    move-result v1

    if-eqz v1, :cond_63

    .line 731
    const/16 v3, 0x9

    goto :goto_64

    .line 732
    :cond_63
    nop

    .line 730
    :goto_64
    return v3

    .line 733
    :cond_65
    if-ne v0, v2, :cond_6e

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-eqz v1, :cond_6e

    .line 737
    const/16 v1, 0xc

    return v1

    .line 739
    :cond_6e
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    return v1
.end method

.method private updatePlaybackState(ILcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 12
    .param p1, "newPlaybackState"    # I
    .param p2, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 664
    iget-wide v0, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-ltz v6, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 665
    iget-wide v0, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    sub-long/2addr v0, v2

    .line 666
    .local v0, "stateDurationMs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateDurationsMs:[J

    iget v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    aget-wide v6, v2, v3

    add-long/2addr v6, v0

    aput-wide v6, v2, v3

    .line 667
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->firstReportedTimeMs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v2, v6

    if-nez v8, :cond_2d

    .line 668
    iget-wide v2, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->firstReportedTimeMs:J

    .line 670
    :cond_2d
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isJoinTimeInvalid:Z

    iget v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInvalidJoinTransition(II)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isJoinTimeInvalid:Z

    .line 671
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasBeenReady:Z

    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isReadyState(I)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasBeenReady:Z

    .line 672
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasEnded:Z

    const/16 v3, 0xb

    if-ne p1, v3, :cond_48

    const/4 v4, 0x1

    :cond_48
    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasEnded:Z

    .line 673
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isPausedState(I)Z

    move-result v2

    if-nez v2, :cond_5e

    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isPausedState(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 674
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseCount:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseCount:I

    .line 676
    :cond_5e
    const/4 v2, 0x5

    if-ne p1, v2, :cond_66

    .line 677
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->seekCount:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->seekCount:I

    .line 679
    :cond_66
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isRebufferingState(I)Z

    move-result v2

    if-nez v2, :cond_7d

    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isRebufferingState(I)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 680
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->rebufferCount:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->rebufferCount:I

    .line 681
    iget-wide v2, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastRebufferStartTimeMs:J

    .line 683
    :cond_7d
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isRebufferingState(I)Z

    move-result v2

    if-eqz v2, :cond_91

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_91

    if-ne p1, v3, :cond_91

    .line 686
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseBufferCount:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseBufferCount:I

    .line 688
    :cond_91
    iget-wide v2, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMaxRebufferTimeMs(J)V

    .line 690
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    .line 691
    iget-wide v2, p2, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    .line 692
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v2, :cond_ac

    .line 693
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateHistory:Ljava/util/List;

    new-instance v3, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;

    iget v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-direct {v3, p2, v4}, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_ac
    return-void
.end method


# virtual methods
.method public build(Z)Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    .registers 70
    .param p1, "isFinal"    # Z

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateDurationsMs:[J

    .line 594
    .local v1, "playbackStateDurationsMs":[J
    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    .line 595
    .local v2, "mediaTimeHistory":Ljava/util/List;, "Ljava/util/List<[J>;"
    const-wide/16 v3, 0x0

    if-nez p1, :cond_46

    .line 596
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 597
    .local v5, "buildTimeMs":J
    iget-object v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateDurationsMs:[J

    .line 598
    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 599
    iget-wide v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    sub-long v7, v5, v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 600
    .local v7, "lastStateDurationMs":J
    iget v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    aget-wide v10, v1, v9

    add-long/2addr v10, v7

    aput-wide v10, v1, v9

    .line 601
    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMaxRebufferTimeMs(J)V

    .line 602
    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordVideoFormatTime(J)V

    .line 603
    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordAudioFormatTime(J)V

    .line 604
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v9

    .line 605
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v9, :cond_46

    iget v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_46

    .line 606
    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->guessMediaTimeBasedOnElapsedRealtime(J)[J

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    .end local v5    # "buildTimeMs":J
    .end local v7    # "lastStateDurationMs":J
    :cond_46
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isJoinTimeInvalid:Z

    const/4 v7, 0x1

    if-nez v5, :cond_52

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasBeenReady:Z

    if-nez v5, :cond_50

    goto :goto_52

    :cond_50
    const/4 v5, 0x0

    goto :goto_53

    :cond_52
    :goto_52
    const/4 v5, 0x1

    .line 611
    .local v5, "isJoinTimeInvalid":Z
    :goto_53
    if-eqz v5, :cond_5d

    .line 612
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v21, v8

    goto :goto_62

    .line 613
    :cond_5d
    const/4 v8, 0x2

    aget-wide v8, v1, v8

    move-wide/from16 v21, v8

    :goto_62
    nop

    .line 614
    .local v21, "validJoinTimeMs":J
    aget-wide v8, v1, v7

    cmp-long v10, v8, v3

    if-lez v10, :cond_6b

    const/4 v3, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v3, 0x0

    .line 617
    .local v3, "hasBackgroundJoin":Z
    :goto_6c
    if-eqz p1, :cond_71

    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHistory:Ljava/util/List;

    goto :goto_78

    :cond_71
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHistory:Ljava/util/List;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_78
    move-object/from16 v31, v4

    .line 619
    .local v31, "videoHistory":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;>;"
    if-eqz p1, :cond_7f

    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatHistory:Ljava/util/List;

    goto :goto_86

    :cond_7f
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatHistory:Ljava/util/List;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_86
    move-object/from16 v32, v4

    .line 620
    .local v32, "audioHistory":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;>;"
    new-instance v4, Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    .line 623
    if-eqz p1, :cond_8f

    iget-object v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateHistory:Ljava/util/List;

    goto :goto_96

    :cond_8f
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateHistory:Ljava/util/List;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_96
    move-object v13, v8

    iget-wide v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->firstReportedTimeMs:J

    .line 626
    iget-boolean v15, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isForeground:Z

    .line 627
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasBeenReady:Z

    .line 628
    xor-int/lit8 v18, v10, 0x1

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasEnded:Z

    .line 629
    if-eqz v3, :cond_a6

    const/16 v20, 0x1

    goto :goto_a8

    :cond_a6
    const/16 v20, 0x0

    .line 631
    :goto_a8
    if-eqz v5, :cond_ad

    const/16 v23, 0x0

    goto :goto_af

    :cond_ad
    const/16 v23, 0x1

    :goto_af
    iget v12, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseCount:I

    iget v10, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseBufferCount:I

    iget v6, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->seekCount:I

    iget v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->rebufferCount:I

    move/from16 v24, v12

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    .line 637
    move-wide/from16 v25, v11

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isAd:Z

    move/from16 v27, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeMs:J

    move-wide/from16 v28, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeProduct:J

    move-wide/from16 v33, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeMs:J

    move-wide/from16 v35, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeProduct:J

    move-wide/from16 v37, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatTimeMs:J

    move-wide/from16 v39, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatBitrateTimeProduct:J

    .line 646
    move-wide/from16 v41, v11

    iget v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_e1

    const/16 v45, 0x0

    goto :goto_e3

    :cond_e1
    const/16 v45, 0x1

    .line 647
    :goto_e3
    move/from16 v30, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    const-wide/16 v43, -0x1

    cmp-long v46, v11, v43

    if-nez v46, :cond_f0

    const/16 v46, 0x0

    goto :goto_f2

    :cond_f0
    const/16 v46, 0x1

    .line 650
    :goto_f2
    move-wide/from16 v47, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    cmp-long v49, v11, v43

    if-nez v49, :cond_fd

    const/16 v50, 0x0

    goto :goto_ff

    :cond_fd
    const/16 v50, 0x1

    :goto_ff
    move-wide/from16 v43, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthTimeMs:J

    move-wide/from16 v51, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthBytes:J

    move-wide/from16 v53, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->droppedFrames:J

    move-wide/from16 v55, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioUnderruns:J

    .line 656
    move-wide/from16 v57, v11

    iget v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorCount:I

    if-lez v11, :cond_118

    const/16 v61, 0x1

    goto :goto_11a

    :cond_118
    const/16 v61, 0x0

    :goto_11a
    iget v12, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorCount:I

    move/from16 v63, v12

    iget-object v12, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorHistory:Ljava/util/List;

    move-object/from16 v64, v12

    iget-object v12, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorHistory:Ljava/util/List;

    move-object/from16 v65, v12

    move/from16 v49, v10

    move-object v10, v4

    move/from16 v62, v11

    move-wide/from16 v59, v55

    move-wide/from16 v66, v57

    const/4 v11, 0x1

    move-wide/from16 v55, v51

    move-wide/from16 v57, v53

    move-wide/from16 v53, v43

    move-wide/from16 v51, v47

    move/from16 v47, v30

    move-wide/from16 v43, v41

    move/from16 v30, v27

    move-wide/from16 v41, v39

    move-wide/from16 v39, v37

    move-wide/from16 v37, v35

    move-wide/from16 v35, v33

    move-wide/from16 v33, v28

    move-wide/from16 v28, v25

    move-object v12, v1

    move/from16 v19, v14

    move-object v14, v2

    move/from16 v17, v15

    move-wide v15, v8

    move/from16 v25, v49

    move/from16 v26, v6

    move/from16 v27, v7

    move-wide/from16 v48, v51

    move-wide/from16 v51, v53

    move-wide/from16 v53, v55

    move-wide/from16 v55, v57

    move-wide/from16 v57, v59

    move-wide/from16 v59, v66

    invoke-direct/range {v10 .. v65}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;-><init>(I[JLjava/util/List;Ljava/util/List;JIIIIJIIIIIJILjava/util/List;Ljava/util/List;JJJJJJIIIJIJJJJJIIILjava/util/List;Ljava/util/List;)V

    .line 620
    return-object v4
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZJZIZZLcom/google/android/exoplayer2/PlaybackException;Ljava/lang/Exception;JJLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 36
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p3, "belongsToPlayback"    # Z
    .param p4, "discontinuityFromPositionMs"    # J
    .param p6, "hasDiscontinuity"    # Z
    .param p7, "droppedFrameCount"    # I
    .param p8, "hasAudioUnderun"    # Z
    .param p9, "startedLoading"    # Z
    .param p10, "fatalError"    # Lcom/google/android/exoplayer2/PlaybackException;
    .param p11, "nonFatalException"    # Ljava/lang/Exception;
    .param p12, "bandwidthTimeMs"    # J
    .param p14, "bandwidthBytes"    # J
    .param p16, "videoFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p17, "audioFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p18, "videoSize"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    move-object/from16 v8, p18

    const/4 v9, 0x1

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v2, v10

    if-eqz v12, :cond_21

    .line 509
    iget-wide v12, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {v0, v12, v13, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMediaTimeHistory(JJ)V

    .line 510
    iput-boolean v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSeeking:Z

    .line 512
    :cond_21
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v12

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-eq v12, v13, :cond_2b

    .line 513
    iput-boolean v14, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSeeking:Z

    .line 515
    :cond_2b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v12

    .line 516
    .local v12, "playerPlaybackState":I
    if-eq v12, v9, :cond_36

    const/4 v15, 0x4

    if-eq v12, v15, :cond_36

    if-eqz p6, :cond_38

    .line 519
    :cond_36
    iput-boolean v14, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInterruptedByAd:Z

    .line 521
    :cond_38
    if-eqz v4, :cond_50

    .line 522
    iput-boolean v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasFatalError:Z

    .line 523
    iget v14, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorCount:I

    add-int/2addr v14, v9

    iput v14, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorCount:I

    .line 524
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v14, :cond_58

    .line 525
    iget-object v14, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorHistory:Ljava/util/List;

    new-instance v15, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;

    invoke-direct {v15, v1, v4}, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 527
    :cond_50
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v15

    if-nez v15, :cond_58

    .line 528
    iput-boolean v14, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasFatalError:Z

    .line 530
    :cond_58
    :goto_58
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isForeground:Z

    if-eqz v14, :cond_77

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInterruptedByAd:Z

    if-nez v14, :cond_77

    .line 531
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;

    move-result-object v14

    .line 532
    .local v14, "currentTracks":Lcom/google/android/exoplayer2/Tracks;
    invoke-virtual {v14, v13}, Lcom/google/android/exoplayer2/Tracks;->isTypeSelected(I)Z

    move-result v13

    const/4 v15, 0x0

    if-nez v13, :cond_6e

    .line 533
    invoke-direct {v0, v1, v15}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateVideoFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    .line 535
    :cond_6e
    invoke-virtual {v14, v9}, Lcom/google/android/exoplayer2/Tracks;->isTypeSelected(I)Z

    move-result v13

    if-nez v13, :cond_77

    .line 536
    invoke-direct {v0, v1, v15}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateAudioFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    .line 539
    .end local v14    # "currentTracks":Lcom/google/android/exoplayer2/Tracks;
    :cond_77
    if-eqz v6, :cond_7c

    .line 540
    invoke-direct {v0, v1, v6}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateVideoFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    .line 542
    :cond_7c
    if-eqz v7, :cond_81

    .line 543
    invoke-direct {v0, v1, v7}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateAudioFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    .line 545
    :cond_81
    iget-object v13, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v13, :cond_a5

    iget v13, v13, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_a5

    if-eqz v8, :cond_a5

    .line 548
    iget-object v13, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    .line 550
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    iget v14, v8, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    .line 551
    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    iget v14, v8, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    .line 552
    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 553
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    .line 554
    .local v13, "formatWithHeightAndWidth":Lcom/google/android/exoplayer2/Format;
    invoke-direct {v0, v1, v13}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateVideoFormat(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    .line 556
    .end local v13    # "formatWithHeightAndWidth":Lcom/google/android/exoplayer2/Format;
    :cond_a5
    if-eqz p9, :cond_a9

    .line 557
    iput-boolean v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->startedLoading:Z

    .line 559
    :cond_a9
    if-eqz p8, :cond_b2

    .line 560
    iget-wide v13, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioUnderruns:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iput-wide v13, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioUnderruns:J

    .line 562
    :cond_b2
    iget-wide v13, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->droppedFrames:J

    move/from16 v15, p7

    int-to-long v10, v15

    add-long/2addr v13, v10

    iput-wide v13, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->droppedFrames:J

    .line 563
    iget-wide v10, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthTimeMs:J

    add-long v10, v10, p12

    iput-wide v10, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthTimeMs:J

    .line 564
    iget-wide v10, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthBytes:J

    add-long v10, v10, p14

    iput-wide v10, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthBytes:J

    .line 565
    if-eqz v5, :cond_db

    .line 566
    iget v10, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorCount:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorCount:I

    .line 567
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v9, :cond_db

    .line 568
    iget-object v9, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorHistory:Ljava/util/List;

    new-instance v10, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;

    invoke-direct {v10, v1, v5}, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_db
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->resolveNewPlaybackState(Lcom/google/android/exoplayer2/Player;)I

    move-result v9

    .line 573
    .local v9, "newPlaybackState":I
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v10

    iget v10, v10, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 574
    .local v10, "newPlaybackSpeed":F
    iget v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-ne v11, v9, :cond_ef

    iget v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    cmpl-float v11, v11, v10

    if-eqz v11, :cond_108

    .line 575
    :cond_ef
    iget-wide v13, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    .line 577
    if-eqz p3, :cond_f6

    iget-wide v2, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    goto :goto_fb

    :cond_f6
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 575
    :goto_fb
    invoke-direct {v0, v13, v14, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMediaTimeHistory(JJ)V

    .line 578
    iget-wide v2, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordVideoFormatTime(J)V

    .line 579
    iget-wide v2, v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordAudioFormatTime(J)V

    .line 581
    :cond_108
    iput v10, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    .line 582
    iget v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-eq v2, v9, :cond_111

    .line 583
    invoke-direct {v0, v9, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->updatePlaybackState(ILcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 585
    :cond_111
    return-void
.end method

.method public onFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZJ)V
    .registers 8
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "automaticTransition"    # Z
    .param p3, "discontinuityFromPositionMs"    # J

    .line 463
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_c

    if-eqz p2, :cond_9

    goto :goto_c

    .line 465
    :cond_9
    const/16 v1, 0xf

    goto :goto_d

    .line 464
    :cond_c
    :goto_c
    nop

    .line 465
    :goto_d
    move v0, v1

    .line 466
    .local v0, "finalPlaybackState":I
    iget-wide v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMediaTimeHistory(JJ)V

    .line 467
    iget-wide v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordVideoFormatTime(J)V

    .line 468
    iget-wide v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordAudioFormatTime(J)V

    .line 469
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->updatePlaybackState(ILcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 470
    return-void
.end method

.method public onForeground()V
    .registers 2

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isForeground:Z

    .line 441
    return-void
.end method

.method public onInterruptedByAd()V
    .registers 2

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInterruptedByAd:Z

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSeeking:Z

    .line 447
    return-void
.end method
