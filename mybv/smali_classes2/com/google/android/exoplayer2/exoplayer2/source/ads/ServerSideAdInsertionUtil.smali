.class public final Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;
.super Ljava/lang/Object;
.source "ServerSideAdInsertionUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addAdGroupToAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;JJ[J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 16
    .param p0, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .param p1, "fromPositionUs"    # J
    .param p3, "contentResumeOffsetUs"    # J
    .param p5, "adDurationsUs"    # [J

    .line 64
    nop

    .line 65
    const/4 v0, -0x1

    invoke-static {p1, p2, v0, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v0

    .line 67
    .local v0, "adGroupInsertionPositionUs":J
    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .line 68
    .local v2, "insertionIndex":I
    :goto_8
    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v2, v3, :cond_25

    .line 69
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-eqz v7, :cond_25

    .line 70
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v5, v3, v0

    if-gtz v5, :cond_25

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 73
    :cond_25
    nop

    .line 75
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withNewAdGroup(IJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v3

    .line 76
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withIsServerSideInserted(IZ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v3

    array-length v4, p5

    .line 77
    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdCount(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v3

    .line 78
    invoke-virtual {v3, v2, p5}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdDurationsUs(I[J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v3

    .line 79
    invoke-virtual {v3, v2, p3, p4}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withContentResumeOffsetUs(IJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p0

    .line 81
    const/4 v3, 0x0

    move v9, v3

    .line 82
    .local v9, "adIndex":I
    :goto_3e
    array-length v3, p5

    if-ge v9, v3, :cond_51

    aget-wide v3, p5, v9

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_51

    .line 83
    add-int/lit8 v3, v9, 0x1

    .line 84
    .end local v9    # "adIndex":I
    .local v3, "adIndex":I
    invoke-virtual {p0, v2, v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withSkippedAd(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p0

    move v9, v3

    goto :goto_3e

    .line 86
    .end local v3    # "adIndex":I
    .restart local v9    # "adIndex":I
    :cond_51
    nop

    .line 87
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/Util;->sum([J)J

    move-result-wide v5

    .line 86
    move-object v3, p0

    move v4, v2

    move-wide v7, p3

    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->correctFollowingAdGroupTimes(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;IJJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v3

    return-object v3
.end method

.method private static correctFollowingAdGroupTimes(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;IJJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 14
    .param p0, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .param p1, "adGroupInsertionIndex"    # I
    .param p2, "insertedAdDurationUs"    # J
    .param p4, "addedContentResumeOffsetUs"    # J

    .line 308
    neg-long v0, p2

    add-long/2addr v0, p4

    .line 309
    .local v0, "followingAdGroupTimeUsOffset":J
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_4
    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v2, v3, :cond_1d

    .line 310
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    .line 311
    .local v3, "adGroupTimeUs":J
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1a

    .line 312
    add-long v5, v3, v0

    .line 313
    invoke-virtual {p0, v2, v5, v6}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdGroupTimeUs(IJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p0

    .line 309
    .end local v3    # "adGroupTimeUs":J
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 317
    .end local v2    # "i":I
    :cond_1d
    return-object p0
.end method

.method public static getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I
    .registers 5
    .param p0, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .param p1, "adGroupIndex"    # I

    .line 299
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 300
    .local v0, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    const/4 v1, 0x0

    goto :goto_d

    :cond_b
    iget v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    :goto_d
    return v1
.end method

.method public static getMediaPeriodPositionUs(JLcom/google/android/exoplayer2/source/MediaPeriodId;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .registers 6
    .param p0, "positionUs"    # J
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaPeriodId;
    .param p3, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 152
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 153
    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v1, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-static {p0, p1, v0, v1, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForAd(JIILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v0

    goto :goto_15

    .line 155
    :cond_f
    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    invoke-static {p0, p1, v0, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v0

    .line 152
    :goto_15
    return-wide v0
.end method

.method public static getMediaPeriodPositionUsForAd(JIILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .registers 12
    .param p0, "positionUs"    # J
    .param p2, "adGroupIndex"    # I
    .param p3, "adIndexInAdGroup"    # I
    .param p4, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 201
    invoke-virtual {p4, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 202
    .local v0, "currentAdGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    sub-long/2addr p0, v1

    .line 203
    iget v1, p4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .local v1, "i":I
    :goto_9
    if-ge v1, p2, :cond_24

    .line 204
    invoke-virtual {p4, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    .line 205
    .local v2, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_10
    invoke-static {p4, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v4

    if-ge v3, v4, :cond_1e

    .line 206
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v5, v4, v3

    sub-long/2addr p0, v5

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 208
    .end local v3    # "j":I
    :cond_1e
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr p0, v3

    .line 203
    .end local v2    # "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 210
    .end local v1    # "i":I
    :cond_24
    invoke-static {p4, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v1

    if-ge p3, v1, :cond_35

    .line 211
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2b
    if-ge v1, p3, :cond_35

    .line 212
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v3, v2, v1

    sub-long/2addr p0, v3

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 215
    .end local v1    # "i":I
    :cond_35
    return-wide p0
.end method

.method public static getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .registers 14
    .param p0, "positionUs"    # J
    .param p2, "nextAdGroupIndex"    # I
    .param p3, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 268
    const-wide/16 v0, 0x0

    .line 269
    .local v0, "totalAdDurationBeforePositionUs":J
    const/4 v2, -0x1

    if-ne p2, v2, :cond_7

    .line 270
    iget p2, p3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    .line 272
    :cond_7
    iget v2, p3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .local v2, "i":I
    :goto_9
    if-ge v2, p2, :cond_49

    .line 273
    invoke-virtual {p3, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 274
    .local v3, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_49

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    sub-long v6, p0, v0

    cmp-long v8, v4, v6

    if-lez v8, :cond_20

    .line 276
    goto :goto_49

    .line 278
    :cond_20
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_21
    invoke-static {p3, v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v5

    if-ge v4, v5, :cond_2f

    .line 279
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v6, v5, v4

    add-long/2addr v0, v6

    .line 278
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 281
    .end local v4    # "j":I
    :cond_2f
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    sub-long/2addr v0, v4

    .line 282
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v4, v6

    .line 283
    .local v4, "adGroupResumePositionUs":J
    sub-long v6, p0, v0

    cmp-long v8, v4, v6

    if-lez v8, :cond_46

    .line 285
    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    sub-long v8, p0, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    return-wide v6

    .line 272
    .end local v3    # "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .end local v4    # "adGroupResumePositionUs":J
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 288
    .end local v2    # "i":I
    :cond_49
    :goto_49
    sub-long v2, p0, v0

    return-wide v2
.end method

.method public static getStreamPositionUs(JLcom/google/android/exoplayer2/source/MediaPeriodId;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .registers 6
    .param p0, "positionUs"    # J
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaPeriodId;
    .param p3, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 133
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 134
    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v1, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-static {p0, p1, v0, v1, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForAd(JIILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v0

    goto :goto_15

    .line 136
    :cond_f
    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    invoke-static {p0, p1, v0, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v0

    .line 133
    :goto_15
    return-wide v0
.end method

.method public static getStreamPositionUs(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .registers 10
    .param p0, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p1, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 100
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 101
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_10

    .line 102
    return-wide v2

    .line 104
    :cond_10
    nop

    .line 105
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentPeriodIndex()I

    move-result v1

    new-instance v4, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    .line 106
    .local v1, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdsId()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 107
    return-wide v2

    .line 109
    :cond_2b
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 110
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentAdGroupIndex()I

    move-result v2

    .line 111
    .local v2, "adGroupIndex":I
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentAdIndexInAdGroup()I

    move-result v3

    .line 112
    .local v3, "adIndexInAdGroup":I
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v4

    .line 113
    .local v4, "adPositionUs":J
    invoke-static {v4, v5, v2, v3, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForAd(JIILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v6

    return-wide v6

    .line 116
    .end local v2    # "adGroupIndex":I
    .end local v3    # "adIndexInAdGroup":I
    .end local v4    # "adPositionUs":J
    :cond_46
    nop

    .line 117
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 118
    .local v2, "periodPositionUs":J
    const/4 v4, -0x1

    invoke-static {v2, v3, v4, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v4

    return-wide v4
.end method

.method public static getStreamPositionUsForAd(JIILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .registers 12
    .param p0, "positionUs"    # J
    .param p2, "adGroupIndex"    # I
    .param p3, "adIndexInAdGroup"    # I
    .param p4, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 171
    invoke-virtual {p4, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 172
    .local v0, "currentAdGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    add-long/2addr p0, v1

    .line 173
    iget v1, p4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .local v1, "i":I
    :goto_9
    if-ge v1, p2, :cond_24

    .line 174
    invoke-virtual {p4, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v2

    .line 175
    .local v2, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_10
    invoke-static {p4, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v4

    if-ge v3, v4, :cond_1e

    .line 176
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v5, v4, v3

    add-long/2addr p0, v5

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 178
    .end local v3    # "j":I
    :cond_1e
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    sub-long/2addr p0, v3

    .line 173
    .end local v2    # "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 180
    .end local v1    # "i":I
    :cond_24
    invoke-static {p4, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v1

    if-ge p3, v1, :cond_35

    .line 181
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2b
    if-ge v1, p3, :cond_35

    .line 182
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v3, v2, v1

    add-long/2addr p0, v3

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 185
    .end local v1    # "i":I
    :cond_35
    return-wide p0
.end method

.method public static getStreamPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .registers 14
    .param p0, "positionUs"    # J
    .param p2, "nextAdGroupIndex"    # I
    .param p3, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 231
    const-wide/16 v0, 0x0

    .line 232
    .local v0, "totalAdDurationBeforePositionUs":J
    const/4 v2, -0x1

    if-ne p2, v2, :cond_7

    .line 233
    iget p2, p3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    .line 235
    :cond_7
    iget v2, p3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .local v2, "i":I
    :goto_9
    if-ge v2, p2, :cond_46

    .line 236
    invoke-virtual {p3, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 237
    .local v3, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_46

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v6, v4, p0

    if-lez v6, :cond_1e

    .line 238
    goto :goto_46

    .line 240
    :cond_1e
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    add-long/2addr v4, v0

    .line 241
    .local v4, "adGroupStreamStartPositionUs":J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_22
    invoke-static {p3, v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v7

    if-ge v6, v7, :cond_30

    .line 242
    iget-object v7, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v8, v7, v6

    add-long/2addr v0, v8

    .line 241
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 244
    .end local v6    # "j":I
    :cond_30
    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    sub-long/2addr v0, v6

    .line 245
    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v8, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v6, v8

    .line 246
    .local v6, "adGroupResumePositionUs":J
    cmp-long v8, v6, p0

    if-lez v8, :cond_43

    .line 248
    add-long v8, p0, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    return-wide v8

    .line 235
    .end local v3    # "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .end local v4    # "adGroupStreamStartPositionUs":J
    .end local v6    # "adGroupResumePositionUs":J
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 251
    .end local v2    # "i":I
    :cond_46
    :goto_46
    add-long v2, p0, v0

    return-wide v2
.end method
