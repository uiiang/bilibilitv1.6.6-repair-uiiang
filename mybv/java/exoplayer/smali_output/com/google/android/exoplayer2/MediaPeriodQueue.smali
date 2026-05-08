.class final Lcom/google/android/exoplayer2/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final INITIAL_RENDERER_POSITION_OFFSET_US:J = 0xe8d4a51000L

.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64


# instance fields
.field private final analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field private final analyticsCollectorHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private length:I

.field private loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

.field private nextWindowSequenceNumber:J

.field private oldFrontPeriodUid:Ljava/lang/Object;

.field private oldFrontPeriodWindowSequenceNumber:J

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

.field private reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/util/HandlerWrapper;)V
    .registers 4
    .param p1, "analyticsCollector"    # Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .param p2, "analyticsCollectorHandler"    # Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 101
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->analyticsCollectorHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 102
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 103
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 104
    return-void
.end method

.method private areDurationsCompatible(JJ)Z
    .registers 8
    .param p1, "previousDurationUs"    # J
    .param p3, "newDurationUs"    # J

    .line 631
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_10

    cmp-long v0, p1, p3

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method private canKeepMediaPeriodHolder(Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Z
    .registers 8
    .param p1, "oldInfo"    # Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .param p2, "newInfo"    # Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 624
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private getFirstMediaPeriodInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 9
    .param p1, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 683
    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v3, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method private getFirstMediaPeriodInfoOfNextPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 32
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "mediaPeriodHolder"    # Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .param p3, "bufferedDurationUs"    # J

    .line 733
    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v14, p2

    iget-object v15, v14, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 734
    .local v15, "mediaPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    iget-object v0, v15, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v16

    .line 735
    .local v16, "currentPeriodIndex":I
    iget-object v2, v7, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v3, v7, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v4, v7, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v5, v7, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 736
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v5

    .line 738
    .local v5, "nextPeriodIndex":I
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne v5, v0, :cond_25

    .line 740
    return-object v1

    .line 742
    :cond_25
    const-wide/16 v2, 0x0

    .line 743
    .local v2, "startPositionUs":J
    const-wide/16 v8, 0x0

    .line 744
    .local v8, "contentPositionUs":J
    iget-object v0, v7, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 745
    const/4 v4, 0x1

    invoke-virtual {v6, v5, v0, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v4, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 746
    .local v4, "nextWindowIndex":I
    iget-object v0, v7, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 747
    .local v0, "nextPeriodUid":Ljava/lang/Object;
    iget-object v10, v15, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v12, v10, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 748
    .local v12, "windowSequenceNumber":J
    iget-object v10, v7, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v6, v4, v10}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v10

    iget v10, v10, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ne v10, v5, :cond_ad

    .line 752
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 754
    .end local v8    # "contentPositionUs":J
    .local v17, "contentPositionUs":J
    iget-object v9, v7, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v10, v7, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    .line 760
    move-wide/from16 v21, v2

    .end local v2    # "startPositionUs":J
    .local v21, "startPositionUs":J
    const-wide/16 v1, 0x0

    move-wide/from16 v23, v12

    move-wide/from16 v12, p3

    .end local v12    # "windowSequenceNumber":J
    .local v23, "windowSequenceNumber":J
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 755
    move-object/from16 v8, p1

    move v11, v4

    move-wide/from16 v12, v19

    move-object v3, v15

    .end local v15    # "mediaPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .local v3, "mediaPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    move-wide v14, v1

    invoke-virtual/range {v8 .. v15}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    .line 761
    .local v1, "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v1, :cond_71

    .line 762
    const/4 v2, 0x0

    return-object v2

    .line 764
    :cond_71
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 765
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 766
    .end local v21    # "startPositionUs":J
    .local v8, "startPositionUs":J
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    .line 767
    .local v2, "nextMediaPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-eqz v2, :cond_9a

    iget-object v10, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9a

    .line 768
    iget-object v10, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v10, v10, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v12, v10, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-wide/from16 v21, v8

    move-wide/from16 v23, v12

    move-wide/from16 v25, v17

    move-object/from16 v17, v0

    move-wide/from16 v0, v25

    .end local v23    # "windowSequenceNumber":J
    .restart local v12    # "windowSequenceNumber":J
    goto :goto_b5

    .line 770
    .end local v12    # "windowSequenceNumber":J
    .restart local v23    # "windowSequenceNumber":J
    :cond_9a
    iget-wide v10, v7, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v12, 0x1

    add-long/2addr v12, v10

    iput-wide v12, v7, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    move-wide v12, v10

    move-wide/from16 v21, v8

    move-wide/from16 v23, v12

    move-wide/from16 v25, v17

    move-object/from16 v17, v0

    move-wide/from16 v0, v25

    .end local v23    # "windowSequenceNumber":J
    .restart local v12    # "windowSequenceNumber":J
    goto :goto_b5

    .line 748
    .end local v1    # "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v3    # "mediaPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .end local v17    # "contentPositionUs":J
    .local v2, "startPositionUs":J
    .local v8, "contentPositionUs":J
    .restart local v15    # "mediaPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    :cond_ad
    move-wide/from16 v21, v2

    move-wide/from16 v23, v12

    move-object v3, v15

    .end local v2    # "startPositionUs":J
    .end local v12    # "windowSequenceNumber":J
    .end local v15    # "mediaPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .restart local v3    # "mediaPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .restart local v21    # "startPositionUs":J
    .restart local v23    # "windowSequenceNumber":J
    move-object/from16 v17, v0

    move-wide v0, v8

    .line 775
    .end local v8    # "contentPositionUs":J
    .local v0, "contentPositionUs":J
    .local v17, "nextPeriodUid":Ljava/lang/Object;
    :goto_b5
    iget-object v14, v7, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v15, v7, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 776
    move-object/from16 v8, p1

    move-object/from16 v9, v17

    move-wide/from16 v10, v21

    move-wide/from16 v12, v23

    invoke-static/range {v8 .. v15}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v8

    .line 778
    .local v8, "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v9

    if-eqz v2, :cond_f0

    iget-wide v11, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v2, v11, v9

    if-eqz v2, :cond_f0

    .line 780
    iget-object v2, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 781
    invoke-direct {v7, v2, v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->hasServerSideInsertedAds(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline;)Z

    move-result v2

    .line 783
    .local v2, "precedingPeriodHasServerSideInsertedAds":Z
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v9

    if-eqz v9, :cond_e8

    if-eqz v2, :cond_e8

    .line 785
    iget-wide v0, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    move-wide v9, v0

    goto :goto_f1

    .line 786
    :cond_e8
    if-eqz v2, :cond_f0

    .line 788
    iget-wide v9, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    move-wide/from16 v21, v9

    move-wide v9, v0

    .end local v21    # "startPositionUs":J
    .local v9, "startPositionUs":J
    goto :goto_f1

    .line 791
    .end local v2    # "precedingPeriodHasServerSideInsertedAds":Z
    .end local v9    # "startPositionUs":J
    .restart local v21    # "startPositionUs":J
    :cond_f0
    move-wide v9, v0

    .end local v0    # "contentPositionUs":J
    .local v9, "contentPositionUs":J
    :goto_f1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v11, v3

    move v12, v4

    .end local v3    # "mediaPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .end local v4    # "nextWindowIndex":I
    .local v11, "mediaPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .local v12, "nextWindowIndex":I
    move-wide v3, v9

    move v13, v5

    .end local v5    # "nextPeriodIndex":I
    .local v13, "nextPeriodIndex":I
    move-wide/from16 v5, v21

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method private getFollowingMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 10
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "mediaPeriodHolder"    # Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .param p3, "rendererPositionUs"    # J

    .line 707
    iget-object v0, p2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 711
    .local v0, "mediaPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    nop

    .line 712
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    add-long/2addr v1, v3

    sub-long/2addr v1, p3

    .line 713
    .local v1, "bufferedDurationUs":J
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-eqz v3, :cond_14

    .line 714
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFirstMediaPeriodInfoOfNextPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v3

    goto :goto_18

    .line 715
    :cond_14
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFollowingMediaPeriodInfoOfCurrentPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v3

    .line 713
    :goto_18
    return-object v3
.end method

.method private getFollowingMediaPeriodInfoOfCurrentPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 28
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "mediaPeriodHolder"    # Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .param p3, "bufferedDurationUs"    # J

    .line 806
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    iget-object v12, v11, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 807
    .local v12, "mediaPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    iget-object v13, v12, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 808
    .local v13, "currentPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v0, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v10, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 809
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_a7

    .line 810
    iget v14, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 811
    .local v14, "adGroupIndex":I
    iget-object v0, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v15

    .line 812
    .local v15, "adCountInCurrentAdGroup":I
    const/4 v8, 0x0

    if-ne v15, v1, :cond_24

    .line 813
    return-object v8

    .line 815
    :cond_24
    iget-object v0, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 816
    invoke-virtual {v0, v14, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getNextAdIndexToPlay(II)I

    move-result v7

    .line 817
    .local v7, "nextAdIndexInAdGroup":I
    if-ge v7, v15, :cond_45

    .line 819
    iget-object v2, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v12, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v3, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v16, v3

    move v3, v14

    move v4, v7

    move/from16 v18, v7

    .end local v7    # "nextAdIndexInAdGroup":I
    .local v18, "nextAdIndexInAdGroup":I
    move-wide/from16 v7, v16

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 828
    .end local v18    # "nextAdIndexInAdGroup":I
    .restart local v7    # "nextAdIndexInAdGroup":I
    :cond_45
    move/from16 v18, v7

    .end local v7    # "nextAdIndexInAdGroup":I
    .restart local v18    # "nextAdIndexInAdGroup":I
    iget-wide v6, v12, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 829
    .local v6, "startPositionUs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v6, v0

    if-nez v2, :cond_7c

    .line 833
    iget-object v1, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v3, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 839
    const-wide/16 v8, 0x0

    move-wide/from16 v4, p3

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 834
    move-object/from16 v0, p1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v19, v6

    .end local v6    # "startPositionUs":J
    .local v19, "startPositionUs":J
    move-wide v6, v8

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v0

    .line 840
    .local v0, "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v0, :cond_72

    .line 841
    const/4 v1, 0x0

    return-object v1

    .line 843
    :cond_72
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v7, v6

    .end local v19    # "startPositionUs":J
    .restart local v6    # "startPositionUs":J
    goto :goto_80

    .line 829
    .end local v0    # "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    :cond_7c
    move-wide/from16 v19, v6

    .end local v6    # "startPositionUs":J
    .restart local v19    # "startPositionUs":J
    move-wide/from16 v7, v19

    .line 845
    .end local v19    # "startPositionUs":J
    .local v7, "startPositionUs":J
    :goto_80
    iget-object v0, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v1, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 846
    move-object/from16 v9, p0

    invoke-direct {v9, v10, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMinStartPositionAfterAdGroupUs(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)J

    move-result-wide v5

    .line 848
    .local v5, "minStartPositionUs":J
    iget-object v2, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 851
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v0, v12, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    move-wide/from16 v16, v7

    .end local v7    # "startPositionUs":J
    .local v16, "startPositionUs":J
    iget-wide v7, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 848
    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v21, v5

    .end local v5    # "minStartPositionUs":J
    .local v21, "minStartPositionUs":J
    move-wide/from16 v5, v19

    move-wide/from16 v19, v16

    .end local v16    # "startPositionUs":J
    .restart local v19    # "startPositionUs":J
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 855
    .end local v14    # "adGroupIndex":I
    .end local v15    # "adCountInCurrentAdGroup":I
    .end local v18    # "nextAdIndexInAdGroup":I
    .end local v19    # "startPositionUs":J
    .end local v21    # "minStartPositionUs":J
    :cond_a7
    iget v0, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v0, v1, :cond_ba

    iget-object v0, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 856
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 858
    invoke-direct/range {p0 .. p4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFirstMediaPeriodInfoOfNextPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 861
    :cond_ba
    iget-object v0, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v14

    .line 862
    .local v14, "adIndexInAdGroup":I
    iget-object v0, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 863
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 864
    invoke-virtual {v0, v1, v14}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdState(II)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d9

    const/4 v0, 0x1

    goto :goto_da

    :cond_d9
    const/4 v0, 0x0

    :goto_da
    move v15, v0

    .line 866
    .local v15, "isPlayedServerSideInsertedAd":Z
    iget-object v0, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v0

    if-eq v14, v0, :cond_fa

    if-eqz v15, :cond_e8

    goto :goto_fa

    .line 880
    :cond_e8
    iget-object v2, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v3, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget-wide v5, v12, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-wide v7, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v14

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 870
    :cond_fa
    :goto_fa
    iget-object v0, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v1, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 871
    invoke-direct {v9, v10, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMinStartPositionAfterAdGroupUs(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)J

    move-result-wide v16

    .line 873
    .restart local v16    # "startPositionUs":J
    iget-object v2, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v12, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-wide v7, v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, v16

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method private getMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 20
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "requestedContentPositionUs"    # J
    .param p5, "startPositionUs"    # J

    .line 901
    move-object v0, p2

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    move-object v11, p0

    iget-object v2, v11, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v12, p1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 902
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 903
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v5, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v1

    return-object v1

    .line 911
    :cond_21
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v1

    return-object v1
.end method

.method private getMediaPeriodInfoForAd(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 33
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "adGroupIndex"    # I
    .param p4, "adIndexInAdGroup"    # I
    .param p5, "contentPositionUs"    # J
    .param p7, "windowSequenceNumber"    # J

    .line 927
    move-object/from16 v0, p0

    new-instance v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    .line 929
    .local v1, "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 931
    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget v3, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v5, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 932
    invoke-virtual {v2, v3, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v2

    .line 934
    .local v2, "durationUs":J
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move/from16 v6, p3

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v5

    const-wide/16 v7, 0x0

    move/from16 v14, p4

    if-ne v14, v5, :cond_37

    .line 935
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v9

    goto :goto_38

    .line 936
    :cond_37
    move-wide v9, v7

    :goto_38
    nop

    .line 937
    .local v9, "startPositionUs":J
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v11, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 938
    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v5

    .line 939
    .local v5, "isFollowedByTransitionToSameStream":Z
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v2, v11

    if-eqz v13, :cond_59

    cmp-long v11, v9, v2

    if-ltz v11, :cond_59

    .line 941
    const-wide/16 v11, 0x1

    sub-long v11, v2, v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    move-wide/from16 v22, v9

    goto :goto_5b

    .line 943
    :cond_59
    move-wide/from16 v22, v9

    .end local v9    # "startPositionUs":J
    .local v22, "startPositionUs":J
    :goto_5b
    new-instance v7, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v8, v7

    move-object v9, v1

    move-wide/from16 v10, v22

    move-wide/from16 v12, p5

    move-wide v14, v15

    move-wide/from16 v16, v2

    move/from16 v18, v5

    invoke-direct/range {v8 .. v21}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    return-object v7
.end method

.method private getMediaPeriodInfoForContent(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 41
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "startPositionUs"    # J
    .param p5, "requestedContentPositionUs"    # J
    .param p7, "windowSequenceNumber"    # J

    .line 961
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 962
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v5

    .line 963
    .local v5, "nextAdGroupIndex":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_20

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 964
    invoke-virtual {v9, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x1

    goto :goto_21

    :cond_20
    const/4 v9, 0x0

    .line 965
    .local v9, "isNextAdGroupPostrollPlaceholder":Z
    :goto_21
    const/4 v10, 0x0

    .line 966
    .local v10, "clipPeriodAtContentDuration":Z
    if-ne v5, v8, :cond_3d

    .line 968
    iget-object v11, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 969
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v11

    if-lez v11, :cond_3a

    iget-object v11, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 970
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v11

    if-eqz v11, :cond_3a

    const/4 v11, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v11, 0x0

    :goto_3b
    move v10, v11

    goto :goto_5d

    .line 971
    :cond_3d
    iget-object v11, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v11

    if-eqz v11, :cond_5d

    iget-object v11, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 972
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v11

    iget-object v13, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v13, v13, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v15, v11, v13

    if-nez v15, :cond_5d

    iget-object v11, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 973
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v11

    if-eqz v11, :cond_5d

    .line 975
    const/4 v5, -0x1

    .line 976
    const/4 v10, 0x1

    .line 979
    :cond_5d
    :goto_5d
    new-instance v11, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-wide/from16 v12, p7

    invoke-direct {v11, v2, v12, v13, v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 980
    .local v11, "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-direct {v0, v11}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v15

    .line 981
    .local v15, "isLastInPeriod":Z
    invoke-direct {v0, v1, v11}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInWindow(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v28

    .line 982
    .local v28, "isLastInWindow":Z
    invoke-direct {v0, v1, v11, v15}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v29

    .line 983
    .local v29, "isLastInTimeline":Z
    if-eq v5, v8, :cond_7f

    iget-object v14, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 985
    invoke-virtual {v14, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v14

    if-eqz v14, :cond_7f

    if-nez v9, :cond_7f

    const/16 v24, 0x1

    goto :goto_81

    :cond_7f
    const/16 v24, 0x0

    .line 988
    .local v24, "isFollowedByTransitionToSameStream":Z
    :goto_81
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v8, :cond_93

    if-nez v9, :cond_93

    .line 989
    iget-object v8, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v18

    move-wide/from16 v6, v18

    goto :goto_9c

    .line 990
    :cond_93
    if-eqz v10, :cond_9a

    iget-object v8, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v6, v8, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    goto :goto_9c

    :cond_9a
    move-wide/from16 v6, v16

    :goto_9c
    nop

    .line 992
    .local v6, "endPositionUs":J
    cmp-long v8, v6, v16

    if-eqz v8, :cond_ac

    const-wide/high16 v19, -0x8000000000000000L

    cmp-long v8, v6, v19

    if-nez v8, :cond_a8

    goto :goto_ac

    .line 994
    :cond_a8
    move/from16 v19, v15

    move-wide v14, v6

    goto :goto_b2

    .line 993
    :cond_ac
    :goto_ac
    iget-object v8, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move/from16 v19, v15

    .end local v15    # "isLastInPeriod":Z
    .local v19, "isLastInPeriod":Z
    iget-wide v14, v8, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 994
    :goto_b2
    move-wide/from16 v30, v14

    .line 995
    .local v30, "durationUs":J
    cmp-long v8, v30, v16

    if-eqz v8, :cond_d3

    cmp-long v8, v3, v30

    if-ltz v8, :cond_d3

    .line 997
    if-nez v29, :cond_c3

    if-nez v10, :cond_c1

    goto :goto_c3

    :cond_c1
    const/4 v8, 0x0

    goto :goto_c4

    :cond_c3
    :goto_c3
    const/4 v8, 0x1

    .line 998
    .local v8, "endAtLastFrame":Z
    :goto_c4
    if-eqz v8, :cond_c8

    const/4 v14, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v14, 0x0

    :goto_c9
    int-to-long v14, v14

    sub-long v14, v30, v14

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .end local p3    # "startPositionUs":J
    .local v0, "startPositionUs":J
    goto :goto_d4

    .line 1000
    .end local v0    # "startPositionUs":J
    .end local v8    # "endAtLastFrame":Z
    .restart local p3    # "startPositionUs":J
    :cond_d3
    move-wide v0, v3

    .end local p3    # "startPositionUs":J
    .restart local v0    # "startPositionUs":J
    :goto_d4
    new-instance v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-object v14, v3

    move/from16 v4, v19

    .end local v19    # "isLastInPeriod":Z
    .local v4, "isLastInPeriod":Z
    move-object v15, v11

    move-wide/from16 v16, v0

    move-wide/from16 v18, p5

    move-wide/from16 v20, v6

    move-wide/from16 v22, v30

    move/from16 v25, v4

    move/from16 v26, v28

    move/from16 v27, v29

    invoke-direct/range {v14 .. v27}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    return-object v3
.end method

.method private getMinStartPositionAfterAdGroupUs(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)J
    .registers 9
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "adGroupIndex"    # I

    .line 1036
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1037
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v0

    .line 1038
    .local v0, "startPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    .line 1039
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    return-wide v2

    .line 1041
    :cond_16
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getContentResumeOffsetUs(I)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private hasServerSideInsertedAds(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline;)Z
    .registers 11
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 891
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v0

    .line 892
    .local v0, "adGroupCount":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v1

    .line 893
    .local v1, "firstAdGroupIndex":I
    if-lez v0, :cond_2a

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 894
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    if-gt v0, v2, :cond_29

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 895
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2a

    :cond_29
    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    .line 893
    :goto_2b
    return v2
.end method

.method private isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .registers 4
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1013
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private isLastInTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z
    .registers 12
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "isLastMediaPeriodInPeriod"    # Z

    .line 1027
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 1028
    .local v0, "periodIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v7, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1029
    .local v7, "windowIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v7, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v1, :cond_2c

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v5, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 1030
    move-object v1, p1

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->isLastPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)Z

    move-result v1

    if-eqz v1, :cond_2c

    if-eqz p3, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 1029
    :goto_2d
    return v1
.end method

.method private isLastInWindow(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .registers 7
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1017
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1018
    return v1

    .line 1020
    :cond_8
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1021
    .local v0, "windowIndex":I
    iget-object v2, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    .line 1022
    .local v2, "periodIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v0, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ne v3, v2, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method private static isSkippableAdPeriod(Lcom/google/android/exoplayer2/Timeline$Period;)Z
    .registers 10
    .param p0, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 500
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v0

    .line 501
    .local v0, "adGroupCount":I
    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    .line 502
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 503
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 504
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_24

    goto :goto_4e

    .line 507
    :cond_24
    iget-wide v5, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_2b

    .line 508
    return v2

    .line 510
    :cond_2b
    const-wide/16 v3, 0x0

    .line 511
    .local v3, "contentResumeOffsetUs":J
    nop

    .line 512
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v5

    if-eqz v5, :cond_38

    const/4 v5, 0x2

    goto :goto_39

    :cond_38
    const/4 v5, 0x1

    :goto_39
    sub-int v5, v0, v5

    .line 513
    .local v5, "lastIndexInclusive":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3c
    if-gt v6, v5, :cond_46

    .line 514
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getContentResumeOffsetUs(I)J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 513
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 516
    .end local v6    # "i":I
    :cond_46
    iget-wide v6, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v8, v6, v3

    if-gtz v8, :cond_4d

    const/4 v1, 0x1

    :cond_4d
    return v1

    .line 505
    .end local v3    # "contentResumeOffsetUs":J
    .end local v5    # "lastIndexInclusive":I
    :cond_4e
    :goto_4e
    return v1
.end method

.method private notifyQueueUpdate()V
    .registers 6

    .line 557
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 558
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 559
    .local v1, "period":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :goto_6
    if-eqz v1, :cond_14

    .line 560
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 561
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    goto :goto_6

    .line 563
    :cond_14
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_1e

    :cond_1a
    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 564
    .local v2, "readingPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :goto_1e
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->analyticsCollectorHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v4, Lcom/google/android/exoplayer2/MediaPeriodQueue$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/MediaPeriodQueue;Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 566
    return-void
.end method

.method private static resolveMediaPeriodIdForAds(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 25
    .param p0, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "positionUs"    # J
    .param p4, "windowSequenceNumber"    # J
    .param p6, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p7, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 479
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p1

    invoke-virtual {v0, v5, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 480
    iget v6, v4, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    invoke-virtual {v0, v6, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 482
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v6

    .line 483
    .end local p1    # "periodUid":Ljava/lang/Object;
    .local v5, "periodUid":Ljava/lang/Object;
    .local v6, "periodIndex":I
    :goto_16
    invoke-static/range {p7 .. p7}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isSkippableAdPeriod(Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v7

    if-eqz v7, :cond_2d

    iget v7, v3, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-gt v6, v7, :cond_2d

    .line 485
    const/4 v7, 0x1

    invoke-virtual {v0, v6, v4, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 486
    iget-object v7, v4, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 484
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 488
    .end local v6    # "periodIndex":I
    :cond_2d
    invoke-virtual {v0, v5, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 489
    invoke-virtual {v4, v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v6

    .line 490
    .local v6, "adGroupIndex":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_43

    .line 491
    invoke-virtual {v4, v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v7

    .line 492
    .local v7, "nextAdGroupIndex":I
    new-instance v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-wide/from16 v13, p4

    invoke-direct {v8, v5, v13, v14, v7}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    return-object v8

    .line 494
    .end local v7    # "nextAdGroupIndex":I
    :cond_43
    move-wide/from16 v13, p4

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v15

    .line 495
    .local v15, "adIndexInAdGroup":I
    new-instance v16, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 v7, v16

    move-object v8, v5

    move v9, v6

    move v10, v15

    move-wide/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    return-object v16
.end method

.method private resolvePeriodIndexToWindowSequenceNumber(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)J
    .registers 10
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;

    .line 578
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 579
    .local v0, "windowIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_20

    .line 580
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 581
    .local v1, "oldFrontPeriodIndex":I
    if-eq v1, v2, :cond_20

    .line 582
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 583
    .local v3, "oldFrontWindowIndex":I
    if-ne v3, v0, :cond_20

    .line 585
    iget-wide v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    return-wide v4

    .line 589
    .end local v1    # "oldFrontPeriodIndex":I
    .end local v3    # "oldFrontWindowIndex":I
    :cond_20
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 590
    .local v1, "mediaPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :goto_22
    if-eqz v1, :cond_38

    .line 591
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 593
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v2

    .line 595
    :cond_33
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    goto :goto_22

    .line 597
    :cond_38
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 598
    :goto_3a
    if-eqz v1, :cond_5a

    .line 599
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 600
    .local v3, "indexOfHolderInTimeline":I
    if-eq v3, v2, :cond_55

    .line 601
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 602
    .local v4, "holderWindowIndex":I
    if-ne v4, v0, :cond_55

    .line 604
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v5

    .line 607
    .end local v4    # "holderWindowIndex":I
    :cond_55
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 608
    .end local v3    # "indexOfHolderInTimeline":I
    goto :goto_3a

    .line 610
    :cond_5a
    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    .line 611
    .local v2, "windowSequenceNumber":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v4, :cond_69

    .line 613
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 614
    iput-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 616
    :cond_69
    return-wide v2
.end method

.method private updateForPlaybackModeChange(Lcom/google/android/exoplayer2/Timeline;)Z
    .registers 10
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 642
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 643
    .local v0, "lastValidPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-nez v0, :cond_6

    .line 644
    const/4 v1, 0x1

    return v1

    .line 646
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    move v7, v1

    .line 648
    .local v7, "currentPeriodIndex":I
    :goto_d
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v5, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 649
    move-object v1, p1

    move v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v1

    .line 651
    .local v1, "nextPeriodIndex":I
    :goto_1b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v2, :cond_2c

    .line 653
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_1b

    .line 656
    :cond_2c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    .line 657
    .local v2, "nextMediaPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    const/4 v3, -0x1

    if-eq v1, v3, :cond_42

    if-nez v2, :cond_36

    .line 658
    goto :goto_42

    .line 660
    :cond_36
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 661
    .local v3, "nextPeriodHolderPeriodIndex":I
    if-eq v3, v1, :cond_3f

    .line 662
    goto :goto_42

    .line 664
    :cond_3f
    move-object v0, v2

    .line 665
    move v7, v1

    .line 666
    .end local v1    # "nextPeriodIndex":I
    .end local v2    # "nextMediaPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .end local v3    # "nextPeriodHolderPeriodIndex":I
    goto :goto_d

    .line 669
    :cond_42
    :goto_42
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v1

    .line 672
    .local v1, "readingPeriodRemoved":Z
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 675
    xor-int/lit8 v2, v1, 0x1

    return v2
.end method


# virtual methods
.method public advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .registers 4

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 263
    return-object v1

    .line 265
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-ne v0, v2, :cond_10

    .line 266
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 268
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->release()V

    .line 269
    iget v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    .line 270
    if-nez v0, :cond_2f

    .line 271
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 275
    :cond_2f
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public advanceReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 250
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public clear()V
    .registers 4

    .line 311
    iget v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    if-nez v0, :cond_5

    .line 312
    return-void

    .line 314
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 315
    .local v0, "front":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 316
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 317
    :goto_19
    if-eqz v0, :cond_23

    .line 318
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->release()V

    .line 319
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_19

    .line 321
    :cond_23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 322
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 323
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 324
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    .line 325
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 326
    return-void
.end method

.method public enqueueNextMediaPeriodHolder([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .registers 20
    .param p1, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "trackSelector"    # Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .param p3, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p4, "mediaSourceList"    # Lcom/google/android/exoplayer2/MediaSourceList;
    .param p5, "info"    # Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .param p6, "emptyTrackSelectorResult"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 193
    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v1, :cond_e

    .line 194
    const-wide v1, 0xe8d4a51000L

    move-object/from16 v12, p5

    move-wide v5, v1

    goto :goto_1f

    .line 195
    :cond_e
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    add-long/2addr v1, v3

    move-object/from16 v12, p5

    iget-wide v3, v12, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v1, v3

    move-wide v5, v1

    :goto_1f
    nop

    .line 196
    .local v5, "rendererPositionOffsetUs":J
    new-instance v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-object v3, v1

    move-object v4, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/MediaPeriodHolder;-><init>([Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 205
    .local v1, "newPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v2, :cond_38

    .line 206
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->setNext(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V

    goto :goto_3c

    .line 208
    :cond_38
    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 209
    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 211
    :goto_3c
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 212
    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 213
    iget v2, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    .line 214
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 215
    return-object v1
.end method

.method public getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public getNextMediaPeriodInfo(JLcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 6
    .param p1, "rendererPositionUs"    # J
    .param p3, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v0, :cond_9

    .line 169
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFirstMediaPeriodInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    goto :goto_11

    .line 170
    :cond_9
    iget-object v0, p3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    .line 168
    :goto_11
    return-object v0
.end method

.method public getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 27
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "info"    # Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v15, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 411
    .local v15, "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-direct {v0, v15}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v14

    .line 412
    .local v14, "isLastInPeriod":Z
    invoke-direct {v0, v1, v15}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInWindow(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v17

    .line 413
    .local v17, "isLastInWindow":Z
    invoke-direct {v0, v1, v15, v14}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v18

    .line 414
    .local v18, "isLastInTimeline":Z
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 416
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v3, :cond_37

    iget v3, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-ne v3, v4, :cond_2e

    goto :goto_37

    .line 418
    :cond_2e
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v7, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v7

    goto :goto_38

    .line 417
    :cond_37
    :goto_37
    move-wide v7, v5

    .line 418
    :goto_38
    move-wide/from16 v19, v7

    .line 420
    .local v19, "endPositionUs":J
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 421
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v5, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v6, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v3, v5, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v5

    move-wide v11, v5

    goto :goto_61

    .line 422
    :cond_4c
    cmp-long v3, v19, v5

    if-eqz v3, :cond_5a

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v19, v5

    if-nez v3, :cond_57

    goto :goto_5a

    .line 424
    :cond_57
    move-wide/from16 v11, v19

    goto :goto_61

    .line 423
    :cond_5a
    :goto_5a
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v5

    move-wide v11, v5

    .line 424
    :goto_61
    nop

    .line 426
    .local v11, "durationUs":J
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 427
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v4, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v3

    move v13, v3

    goto :goto_85

    .line 428
    :cond_72
    iget v3, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v4, :cond_83

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v4, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 429
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_85

    :cond_83
    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_85
    nop

    .line 430
    .local v13, "isFollowedByTransitionToSameStream":Z
    new-instance v21, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v7, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    move-object/from16 v3, v21

    move-object v4, v15

    move-wide/from16 v9, v19

    move/from16 v22, v14

    .end local v14    # "isLastInPeriod":Z
    .local v22, "isLastInPeriod":Z
    move-object/from16 v23, v15

    .end local v15    # "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .local v23, "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    move/from16 v15, v17

    move/from16 v16, v18

    invoke-direct/range {v3 .. v16}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    return-object v21
.end method

.method public isLoading(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z
    .registers 3
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method synthetic lambda$notifyQueueUpdate$0$com-google-android-exoplayer2-MediaPeriodQueue(Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 5
    .param p1, "builder"    # Lcom/google/common/collect/ImmutableList$Builder;
    .param p2, "readingPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 565
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->updateMediaPeriodQueueInfo(Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public reevaluateBuffer(J)V
    .registers 4
    .param p1, "rendererPositionUs"    # J

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_7

    .line 144
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->reevaluateBuffer(J)V

    .line 146
    :cond_7
    return-void
.end method

.method public removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z
    .registers 5
    .param p1, "mediaPeriodHolder"    # Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 289
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 290
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 291
    return v1

    .line 293
    :cond_13
    const/4 v1, 0x0

    .line 294
    .local v1, "removedReading":Z
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 295
    :goto_16
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 296
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 297
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-ne p1, v2, :cond_29

    .line 298
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iput-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 299
    const/4 v1, 0x1

    .line 301
    :cond_29
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->release()V

    .line 302
    iget v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    goto :goto_16

    .line 304
    :cond_32
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->setNext(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V

    .line 305
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 306
    return v1
.end method

.method public resolveMediaPeriodIdForAds(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 15
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "positionUs"    # J

    .line 454
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolvePeriodIndexToWindowSequenceNumber(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)J

    move-result-wide v8

    .line 455
    .local v8, "windowSequenceNumber":J
    iget-object v6, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v7, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, v8

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    return-object v0
.end method

.method public resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 20
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "positionUs"    # J

    .line 531
    move-object v0, p0

    move-object/from16 v9, p1

    invoke-direct/range {p0 .. p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolvePeriodIndexToWindowSequenceNumber(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)J

    move-result-wide v10

    .line 533
    .local v10, "windowSequenceNumber":J
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v12, p2

    invoke-virtual {v9, v12, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 534
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v9, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 535
    move-object/from16 v1, p2

    .line 536
    .local v1, "periodUidToPlay":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 537
    .local v2, "seenAdPeriod":Z
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .local v3, "i":I
    :goto_1e
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-lt v3, v4, :cond_5e

    .line 538
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v5, 0x1

    invoke-virtual {v9, v3, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 539
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v4

    if-lez v4, :cond_33

    goto :goto_34

    :cond_33
    const/4 v5, 0x0

    :goto_34
    move v4, v5

    .line 540
    .local v4, "isAdPeriod":Z
    or-int/2addr v2, v4

    .line 541
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v6, v5, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_49

    .line 543
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v5, v5, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 545
    :cond_49
    if-eqz v2, :cond_5b

    if-eqz v4, :cond_58

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide/16 v7, 0x0

    cmp-long v13, v5, v7

    if-eqz v13, :cond_5b

    .line 547
    nop

    .line 550
    .end local v3    # "i":I
    .end local v4    # "isAdPeriod":Z
    :cond_58
    move-object v13, v1

    move v14, v2

    goto :goto_60

    .line 537
    .restart local v3    # "i":I
    :cond_5b
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    :cond_5e
    move-object v13, v1

    move v14, v2

    .line 550
    .end local v1    # "periodUidToPlay":Ljava/lang/Object;
    .end local v2    # "seenAdPeriod":Z
    .end local v3    # "i":I
    .local v13, "periodUidToPlay":Ljava/lang/Object;
    .local v14, "seenAdPeriod":Z
    :goto_60
    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v1, p1

    move-object v2, v13

    move-wide/from16 v3, p3

    move-wide v5, v10

    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    return-object v1
.end method

.method public shouldLoadNextMediaPeriod()Z
    .registers 6

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 152
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_28

    iget v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    .line 150
    :goto_2b
    return v0
.end method

.method public updateQueuedPeriods(Lcom/google/android/exoplayer2/Timeline;JJ)Z
    .registers 21
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "rendererPositionUs"    # J
    .param p4, "maxRendererReadPositionUs"    # J

    .line 346
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 347
    .local v2, "previousPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 348
    .local v3, "periodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :goto_6
    const/4 v4, 0x1

    if-eqz v3, :cond_86

    .line 349
    iget-object v5, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 353
    .local v5, "oldPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    if-nez v2, :cond_15

    .line 357
    invoke-virtual {p0, v1, v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v6

    move-object v8, v6

    move-wide/from16 v6, p2

    .local v6, "newPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    goto :goto_30

    .line 359
    .end local v6    # "newPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    :cond_15
    nop

    .line 360
    move-wide/from16 v6, p2

    invoke-direct {p0, v1, v2, v6, v7}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v8

    .line 361
    .local v8, "newPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    if-nez v8, :cond_24

    .line 363
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v9

    xor-int/2addr v4, v9

    return v4

    .line 365
    :cond_24
    invoke-direct {p0, v5, v8}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->canKeepMediaPeriodHolder(Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Z

    move-result v9

    if-nez v9, :cond_30

    .line 367
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v9

    xor-int/2addr v4, v9

    return v4

    .line 373
    :cond_30
    :goto_30
    iget-wide v9, v5, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 374
    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer2/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v9

    iput-object v9, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 377
    iget-wide v9, v5, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-wide v11, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->areDurationsCompatible(JJ)Z

    move-result v9

    if-nez v9, :cond_80

    .line 380
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->updateClipping()V

    .line 382
    iget-wide v9, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v9, v11

    if-nez v13, :cond_56

    .line 383
    const-wide v9, 0x7fffffffffffffffL

    goto :goto_5c

    .line 384
    :cond_56
    iget-wide v9, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    invoke-virtual {v3, v9, v10}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide v9

    :goto_5c
    nop

    .line 385
    .local v9, "newDurationInRendererTime":J
    iget-object v11, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v12, 0x0

    if-ne v3, v11, :cond_74

    iget-object v11, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v11, v11, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-nez v11, :cond_74

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v11, p4, v13

    if-eqz v11, :cond_72

    cmp-long v11, p4, v9

    if-ltz v11, :cond_74

    :cond_72
    const/4 v11, 0x1

    goto :goto_75

    :cond_74
    const/4 v11, 0x0

    .line 390
    .local v11, "isReadingAndReadBeyondNewDuration":Z
    :goto_75
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v13

    .line 391
    .local v13, "readingPeriodRemoved":Z
    if-nez v13, :cond_7e

    if-nez v11, :cond_7e

    goto :goto_7f

    :cond_7e
    const/4 v4, 0x0

    :goto_7f
    return v4

    .line 394
    .end local v9    # "newDurationInRendererTime":J
    .end local v11    # "isReadingAndReadBeyondNewDuration":Z
    .end local v13    # "readingPeriodRemoved":Z
    :cond_80
    move-object v2, v3

    .line 395
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    .line 396
    .end local v5    # "oldPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .end local v8    # "newPeriodInfo":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    goto :goto_6

    .line 397
    :cond_86
    move-wide/from16 v6, p2

    return v4
.end method

.method public updateRepeatMode(Lcom/google/android/exoplayer2/Timeline;I)Z
    .registers 4
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "repeatMode"    # I

    .line 115
    iput p2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    .line 116
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateForPlaybackModeChange(Lcom/google/android/exoplayer2/Timeline;)Z

    move-result v0

    return v0
.end method

.method public updateShuffleModeEnabled(Lcom/google/android/exoplayer2/Timeline;Z)Z
    .registers 4
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "shuffleModeEnabled"    # Z

    .line 128
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateForPlaybackModeChange(Lcom/google/android/exoplayer2/Timeline;)Z

    move-result v0

    return v0
.end method
