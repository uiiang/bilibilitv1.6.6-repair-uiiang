.class final Lcom/google/android/exoplayer2/MediaPeriodInfo;
.super Ljava/lang/Object;
.source "MediaPeriodInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final durationUs:J

.field public final endPositionUs:J

.field public final id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final isFinal:Z

.field public final isFollowedByTransitionToSameStream:Z

.field public final isLastInTimelinePeriod:Z

.field public final isLastInTimelineWindow:Z

.field public final requestedContentPositionUs:J

.field public final startPositionUs:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZZ)V
    .registers 28
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "startPositionUs"    # J
    .param p4, "requestedContentPositionUs"    # J
    .param p6, "endPositionUs"    # J
    .param p8, "durationUs"    # J
    .param p10, "isFollowedByTransitionToSameStream"    # Z
    .param p11, "isLastInTimelinePeriod"    # Z
    .param p12, "isLastInTimelineWindow"    # Z
    .param p13, "isFinal"    # Z

    .line 89
    move-object v0, p0

    move/from16 v1, p10

    move/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, p13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_15

    if-eqz v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v7, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v7, 0x1

    :goto_16
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 91
    if-eqz v3, :cond_20

    if-eqz v2, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v7, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v7, 0x1

    :goto_21
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 92
    if-eqz v1, :cond_2c

    if-nez v2, :cond_2d

    if-nez v3, :cond_2d

    if-nez v4, :cond_2d

    :cond_2c
    const/4 v5, 0x1

    :cond_2d
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 95
    move-object v5, p1

    iput-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 96
    move-wide/from16 v6, p2

    iput-wide v6, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    .line 97
    move-wide/from16 v8, p4

    iput-wide v8, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 98
    move-wide/from16 v10, p6

    iput-wide v10, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    .line 99
    move-wide/from16 v12, p8

    iput-wide v12, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    .line 100
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    .line 101
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    .line 102
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    .line 103
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    .line 104
    return-void
.end method


# virtual methods
.method public copyWithRequestedContentPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 20
    .param p1, "requestedContentPositionUs"    # J

    .line 130
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_a

    .line 131
    move-object v1, v0

    goto :goto_24

    .line 132
    :cond_a
    new-instance v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    iget-wide v11, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    move-object v3, v1

    move-wide/from16 v7, p1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    .line 130
    :goto_24
    return-object v1
.end method

.method public copyWithStartPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 20
    .param p1, "startPositionUs"    # J

    .line 111
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_a

    .line 112
    move-object v1, v0

    goto :goto_24

    .line 113
    :cond_a
    new-instance v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    iget-wide v11, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    move-object v3, v1

    move-wide/from16 v5, p1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    .line 111
    :goto_24
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 146
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 147
    return v0

    .line 149
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5a

    .line 152
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 153
    .local v2, "that":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_58

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_58

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_58

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_58

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-ne v3, v4, :cond_58

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-ne v3, v4, :cond_58

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    if-ne v3, v4, :cond_58

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-ne v3, v4, :cond_58

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 161
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    .line 153
    :goto_59
    return v0

    .line 150
    .end local v2    # "that":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    :cond_5a
    :goto_5a
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 166
    const/16 v0, 0x11

    .line 167
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 168
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 169
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 170
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 171
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 172
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    add-int/2addr v0, v2

    .line 173
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    add-int/2addr v1, v2

    .line 174
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    add-int/2addr v0, v2

    .line 175
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    add-int/2addr v1, v2

    .line 176
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
