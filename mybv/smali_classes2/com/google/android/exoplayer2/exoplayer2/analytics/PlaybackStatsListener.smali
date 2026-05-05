.class public final Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;
.super Ljava/lang/Object;
.source "PlaybackStatsListener.java"

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
.implements Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;,
        Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private audioFormat:Lcom/google/android/exoplayer2/Format;

.field private bandwidthBytes:J

.field private bandwidthTimeMs:J

.field private final callback:Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;

.field private discontinuityFromPositionMs:J

.field private discontinuityFromSession:Ljava/lang/String;

.field private discontinuityReason:I

.field private droppedFrames:I

.field private finishedPlaybackStats:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

.field private final keepHistory:Z

.field private nonFatalException:Ljava/lang/Exception;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final playbackStatsTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

.field private final sessionStartEventTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field

.field private videoFormat:Lcom/google/android/exoplayer2/Format;

.field private videoSize:Lcom/google/android/exoplayer2/video/VideoSize;


# direct methods
.method public constructor <init>(ZLcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;)V
    .registers 5
    .param p1, "keepHistory"    # Z
    .param p2, "callback"    # Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->callback:Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;

    .line 109
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->keepHistory:Z

    .line 110
    new-instance v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionStartEventTimes:Ljava/util/Map;

    .line 113
    sget-object v1, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->EMPTY:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->finishedPlaybackStats:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    .line 114
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 115
    sget-object v1, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 116
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->setListener(Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;)V

    .line 117
    return-void
.end method

.method private findBestEventTime(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;Ljava/lang/String;)Landroid/util/Pair;
    .registers 33
    .param p1, "events"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;
    .param p2, "session"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 306
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 307
    .local v3, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    const/4 v4, 0x0

    .line 308
    .local v4, "belongsToPlayback":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->size()I

    move-result v6

    if-ge v5, v6, :cond_32

    .line 309
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->get(I)I

    move-result v6

    .line 310
    .local v6, "event":I
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 311
    .local v7, "newEventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    iget-object v8, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v8, v7, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v8

    .line 312
    .local v8, "newBelongsToPlayback":Z
    if-eqz v3, :cond_2d

    if-eqz v8, :cond_23

    if-eqz v4, :cond_2d

    :cond_23
    if-ne v8, v4, :cond_2f

    iget-wide v9, v7, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v11, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    cmp-long v13, v9, v11

    if-lez v13, :cond_2f

    .line 317
    :cond_2d
    move-object v3, v7

    .line 318
    move v4, v8

    .line 308
    .end local v6    # "event":I
    .end local v7    # "newEventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .end local v8    # "newBelongsToPlayback":Z
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 321
    .end local v5    # "i":I
    :cond_32
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    if-nez v4, :cond_af

    iget-object v5, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v5, :cond_af

    iget-object v5, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v5

    if-eqz v5, :cond_af

    .line 324
    iget-object v5, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 327
    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 328
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v5

    .line 329
    .local v5, "contentPeriodPositionUs":J
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v5, v7

    if-nez v9, :cond_61

    .line 330
    iget-object v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v5, v7, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 332
    :cond_61
    iget-object v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 333
    .local v7, "contentWindowPositionUs":J
    new-instance v24, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-wide v10, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-object v12, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v13, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    new-instance v14, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v9, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v15, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move/from16 v25, v4

    move-wide/from16 v26, v5

    .end local v4    # "belongsToPlayback":Z
    .end local v5    # "contentPeriodPositionUs":J
    .local v25, "belongsToPlayback":Z
    .local v26, "contentPeriodPositionUs":J
    iget-wide v4, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v6, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-direct {v14, v9, v4, v5, v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 342
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v15

    iget-object v4, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v5, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    iget-object v6, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-wide/from16 v28, v7

    .end local v7    # "contentWindowPositionUs":J
    .local v28, "contentWindowPositionUs":J
    iget-wide v7, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    iget-wide v1, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    move-object/from16 v9, v24

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v20, v7

    move-wide/from16 v22, v1

    invoke-direct/range {v9 .. v23}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;-><init>(JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    move-object/from16 v3, v24

    .line 348
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    move-object/from16 v2, p2

    invoke-interface {v1, v3, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v4

    .end local v25    # "belongsToPlayback":Z
    .restart local v4    # "belongsToPlayback":Z
    goto :goto_b3

    .line 322
    .end local v26    # "contentPeriodPositionUs":J
    .end local v28    # "contentWindowPositionUs":J
    :cond_af
    move/from16 v25, v4

    .line 350
    .end local v4    # "belongsToPlayback":Z
    .restart local v25    # "belongsToPlayback":Z
    move/from16 v4, v25

    .end local v25    # "belongsToPlayback":Z
    .restart local v4    # "belongsToPlayback":Z
    :goto_b3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private hasEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "events"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;
    .param p2, "session"    # Ljava/lang/String;
    .param p3, "event"    # I

    .line 354
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    .line 355
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 354
    :goto_15
    return v0
.end method

.method private maybeAddSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V
    .registers 7
    .param p1, "events"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 293
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->get(I)I

    move-result v1

    .line 294
    .local v1, "event":I
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    .line 295
    .local v2, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    if-nez v1, :cond_17

    .line 296
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessionsWithTimelineChange(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    goto :goto_28

    .line 297
    :cond_17
    const/16 v3, 0xb

    if-ne v1, v3, :cond_23

    .line 298
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    iget v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->discontinuityReason:I

    invoke-interface {v3, v2, v4}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessionsWithDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    goto :goto_28

    .line 300
    :cond_23
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 292
    .end local v1    # "event":I
    .end local v2    # "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method


# virtual methods
.method public getCombinedPlaybackStats()Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    .registers 8

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    .line 129
    .local v0, "allPendingPlaybackStats":[Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->finishedPlaybackStats:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 130
    const/4 v1, 0x1

    .line 131
    .local v1, "index":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    .line 132
    .local v4, "tracker":Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .local v5, "index":I
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->build(Z)Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-result-object v6

    aput-object v6, v0, v1

    .line 133
    .end local v4    # "tracker":Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;
    move v1, v5

    goto :goto_1a

    .line 134
    .end local v5    # "index":I
    .restart local v1    # "index":I
    :cond_30
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->merge([Lcom/google/android/exoplayer2/analytics/PlaybackStats;)Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-result-object v2

    return-object v2
.end method

.method public getPlaybackStats()Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->getActiveSessionId()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "activeSessionId":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v2, v1

    goto :goto_13

    :cond_b
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    .line 149
    .local v2, "activeStatsTracker":Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;
    :goto_13
    if-nez v2, :cond_16

    goto :goto_1b

    :cond_16
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->build(Z)Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-result-object v1

    :goto_1b
    return-object v1
.end method

.method public onAdPlaybackStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "contentSessionId"    # Ljava/lang/String;
    .param p3, "adSessionId"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onInterruptedByAd()V

    .line 170
    return-void
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .registers 9
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "totalLoadTimeMs"    # I
    .param p3, "totalBytesLoaded"    # J
    .param p5, "bitrateEstimate"    # J

    .line 227
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->bandwidthTimeMs:J

    .line 228
    iput-wide p3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->bandwidthBytes:J

    .line 229
    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method public onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 233
    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    if-nez v0, :cond_a

    goto :goto_14

    .line 236
    :cond_a
    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 237
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->audioFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_18

    .line 235
    :cond_14
    :goto_14
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->videoFormat:Lcom/google/android/exoplayer2/Format;

    .line 239
    :cond_18
    :goto_18
    return-void
.end method

.method public synthetic onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Ljava/lang/Exception;

    .line 221
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->nonFatalException:Ljava/lang/Exception;

    .line 222
    return-void
.end method

.method public synthetic onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
    .registers 5
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "droppedFrames"    # I
    .param p3, "elapsedMs"    # J

    .line 206
    iput p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->droppedFrames:I

    .line 207
    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V
    .registers 38
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "events"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 249
    return-void

    .line 251
    :cond_b
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->maybeAddSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V

    .line 252
    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 253
    .local v3, "session":Ljava/lang/String;
    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->findBestEventTime(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 254
    .local v5, "eventTimeAndBelongsToPlayback":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Boolean;>;"
    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    .line 255
    .local v6, "tracker":Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;
    const/16 v7, 0xb

    invoke-direct {v0, v1, v3, v7}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v26

    .line 256
    .local v26, "hasDiscontinuityToPlayback":Z
    const/16 v7, 0x3fa

    invoke-direct {v0, v1, v3, v7}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v27

    .line 257
    .local v27, "hasDroppedFrames":Z
    const/16 v7, 0x3f3

    invoke-direct {v0, v1, v3, v7}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v28

    .line 258
    .local v28, "hasAudioUnderrun":Z
    const/16 v7, 0x3e8

    invoke-direct {v0, v1, v3, v7}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v29

    .line 259
    .local v29, "startedLoading":Z
    const/16 v7, 0xa

    invoke-direct {v0, v1, v3, v7}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v30

    .line 260
    .local v30, "hasFatalError":Z
    nop

    .line 261
    const/16 v7, 0x3eb

    invoke-direct {v0, v1, v3, v7}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_64

    .line 262
    const/16 v7, 0x400

    invoke-direct {v0, v1, v3, v7}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_62

    goto :goto_64

    :cond_62
    const/4 v7, 0x0

    goto :goto_65

    :cond_64
    :goto_64
    const/4 v7, 0x1

    :goto_65
    move/from16 v31, v7

    .line 263
    .local v31, "hasNonFatalException":Z
    const/16 v7, 0x3ee

    invoke-direct {v0, v1, v3, v7}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v32

    .line 264
    .local v32, "hasBandwidthData":Z
    const/16 v7, 0x3ec

    invoke-direct {v0, v1, v3, v7}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v33

    .line 265
    .local v33, "hasFormatData":Z
    const/16 v7, 0x19

    invoke-direct {v0, v1, v3, v7}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v34

    .line 266
    .local v34, "hasVideoSize":Z
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v7

    check-cast v9, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    .line 269
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 270
    iget-object v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    iget-wide v11, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->discontinuityFromPositionMs:J

    goto :goto_96

    :cond_91
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 272
    :goto_96
    if-eqz v27, :cond_9c

    iget v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->droppedFrames:I

    move v14, v7

    goto :goto_9d

    :cond_9c
    const/4 v14, 0x0

    .line 275
    :goto_9d
    if-eqz v30, :cond_a6

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/Player;->getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v7

    move-object/from16 v17, v7

    goto :goto_a8

    :cond_a6
    move-object/from16 v17, v4

    .line 276
    :goto_a8
    if-eqz v31, :cond_af

    iget-object v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->nonFatalException:Ljava/lang/Exception;

    move-object/from16 v18, v7

    goto :goto_b1

    :cond_af
    move-object/from16 v18, v4

    .line 277
    :goto_b1
    if-eqz v32, :cond_b8

    iget-wide v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->bandwidthTimeMs:J

    move-wide/from16 v19, v7

    goto :goto_ba

    :cond_b8
    const-wide/16 v19, 0x0

    .line 278
    :goto_ba
    if-eqz v32, :cond_c1

    iget-wide v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->bandwidthBytes:J

    move-wide/from16 v21, v7

    goto :goto_c3

    :cond_c1
    const-wide/16 v21, 0x0

    .line 279
    :goto_c3
    if-eqz v33, :cond_ca

    iget-object v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->videoFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v23, v7

    goto :goto_cc

    :cond_ca
    move-object/from16 v23, v4

    .line 280
    :goto_cc
    if-eqz v33, :cond_d3

    iget-object v7, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->audioFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v24, v7

    goto :goto_d5

    :cond_d3
    move-object/from16 v24, v4

    .line 281
    :goto_d5
    if-eqz v34, :cond_d9

    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    :cond_d9
    move-object/from16 v25, v4

    .line 266
    move-object v7, v6

    move-object/from16 v8, p1

    move/from16 v13, v26

    move/from16 v15, v28

    move/from16 v16, v29

    invoke-virtual/range {v7 .. v25}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZJZIZZLcom/google/android/exoplayer2/PlaybackException;Ljava/lang/Exception;JJLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 282
    .end local v3    # "session":Ljava/lang/String;
    .end local v5    # "eventTimeAndBelongsToPlayback":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Boolean;>;"
    .end local v6    # "tracker":Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;
    .end local v26    # "hasDiscontinuityToPlayback":Z
    .end local v27    # "hasDroppedFrames":Z
    .end local v28    # "hasAudioUnderrun":Z
    .end local v29    # "startedLoading":Z
    .end local v30    # "hasFatalError":Z
    .end local v31    # "hasNonFatalException":Z
    .end local v32    # "hasBandwidthData":Z
    .end local v33    # "hasFormatData":Z
    .end local v34    # "hasVideoSize":Z
    goto/16 :goto_18

    .line 283
    :cond_e9
    iput-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->videoFormat:Lcom/google/android/exoplayer2/Format;

    .line 284
    iput-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->audioFormat:Lcom/google/android/exoplayer2/Format;

    .line 285
    iput-object v4, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    .line 286
    const/16 v2, 0x404

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_100

    .line 287
    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->finishAllSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 289
    :cond_100
    return-void
.end method

.method public synthetic onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 6
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p4, "error"    # Ljava/io/IOException;
    .param p5, "wasCanceled"    # Z

    .line 216
    iput-object p4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->nonFatalException:Ljava/lang/Exception;

    .line 217
    return-void
.end method

.method public synthetic onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .registers 7
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "oldPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p3, "newPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p4, "reason"    # I

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->getActiveSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    .line 199
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->discontinuityFromPositionMs:J

    .line 201
    :cond_10
    iput p4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->discontinuityReason:I

    .line 202
    return-void
.end method

.method public synthetic onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onSessionActive(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 4
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onForeground()V

    .line 164
    return-void
.end method

.method public onSessionCreated(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 5
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->keepHistory:Z

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;-><init>(ZLcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 157
    .local v0, "tracker":Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionStartEventTimes:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public onSessionFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "automaticTransitionToNextPlayback"    # Z

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    .line 176
    .local v0, "tracker":Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->sessionStartEventTimes:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 178
    .local v1, "startEventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 179
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->discontinuityFromPositionMs:J

    goto :goto_2c

    .line 180
    :cond_27
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2c
    nop

    .line 181
    .local v2, "discontinuityFromPositionMs":J
    invoke-virtual {v0, p1, p3, v2, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZJ)V

    .line 182
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$PlaybackStatsTracker;->build(Z)Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-result-object v5

    .line 183
    .local v5, "playbackStats":Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->finishedPlaybackStats:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    aput-object v8, v6, v7

    aput-object v5, v6, v4

    invoke-static {v6}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->merge([Lcom/google/android/exoplayer2/analytics/PlaybackStats;)Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->finishedPlaybackStats:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    .line 184
    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->callback:Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;

    if-eqz v4, :cond_4c

    .line 185
    invoke-interface {v4, v1, v5}, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener$Callback;->onPlaybackStatsReady(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/PlaybackStats;)V

    .line 187
    :cond_4c
    return-void
.end method

.method public synthetic onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public synthetic onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 3
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "videoSize"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 243
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStatsListener;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 244
    return-void
.end method

.method public synthetic onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method
