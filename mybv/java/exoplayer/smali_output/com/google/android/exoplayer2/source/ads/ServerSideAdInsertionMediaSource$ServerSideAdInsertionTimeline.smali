.class final Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "ServerSideAdInsertionMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerSideAdInsertionTimeline"
.end annotation


# instance fields
.field private final adPlaybackStates:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/common/collect/ImmutableMap;)V
    .registers 7
    .param p1, "contentTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;",
            ">;)V"
        }
    .end annotation

    .line 1010
    .local p2, "adPlaybackStates":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 1011
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1012
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 1013
    .local v0, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 1014
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1015
    iget-object v3, v0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1013
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1017
    .end local v2    # "i":I
    :cond_2f
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    .line 1018
    return-void
.end method


# virtual methods
.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 24
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 1059
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v12, p2

    const/4 v2, 0x1

    invoke-super {v0, v1, v12, v2}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1060
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v4, v12, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1061
    .local v13, "adPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    iget-wide v3, v12, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 1062
    .local v3, "durationUs":J
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, -0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_2b

    .line 1063
    iget-wide v3, v13, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    move-wide v14, v3

    goto :goto_31

    .line 1065
    :cond_2b
    nop

    .line 1066
    invoke-static {v3, v4, v7, v13}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v3

    move-wide v14, v3

    .line 1069
    .end local v3    # "durationUs":J
    .local v14, "durationUs":J
    :goto_31
    const-wide/16 v3, 0x0

    .line 1070
    .local v3, "positionInWindowUs":J
    new-instance v5, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    move-object v11, v5

    .line 1071
    .local v11, "innerPeriod":Lcom/google/android/exoplayer2/Timeline$Period;
    const/4 v5, 0x0

    move-wide/from16 v16, v3

    .end local v3    # "positionInWindowUs":J
    .local v5, "i":I
    .local v16, "positionInWindowUs":J
    :goto_3c
    add-int/lit8 v3, v1, 0x1

    if-ge v5, v3, :cond_71

    .line 1072
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v3, v5, v11, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1073
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v4, v11, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1074
    .local v3, "innerAdPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    if-nez v5, :cond_64

    .line 1075
    nop

    .line 1077
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v8

    neg-long v8, v8

    .line 1076
    invoke-static {v8, v9, v7, v3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v8

    neg-long v8, v8

    move-wide/from16 v16, v8

    .line 1081
    :cond_64
    if-eq v5, v1, :cond_6e

    .line 1082
    iget-wide v8, v11, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 1083
    invoke-static {v8, v9, v7, v3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v8

    add-long v16, v16, v8

    .line 1071
    .end local v3    # "innerAdPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    :cond_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 1089
    .end local v5    # "i":I
    :cond_71
    iget-object v3, v12, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v4, v12, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iget v5, v12, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-boolean v10, v12, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    move-object/from16 v2, p2

    move-wide v6, v14

    move-wide/from16 v8, v16

    move/from16 v18, v10

    move-object v10, v13

    move-object/from16 v19, v11

    .end local v11    # "innerPeriod":Lcom/google/android/exoplayer2/Timeline$Period;
    .local v19, "innerPeriod":Lcom/google/android/exoplayer2/Timeline$Period;
    move/from16 v11, v18

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1097
    return-object v12
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 23
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 1022
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super/range {p0 .. p4}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1023
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 1024
    .local v2, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    iget v3, v1, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 1025
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1026
    .local v3, "firstPeriodUid":Ljava/lang/Object;
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1027
    .local v5, "firstAdPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    iget-wide v6, v1, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    .line 1028
    const/4 v8, -0x1

    invoke-static {v6, v7, v8, v5}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v6

    .line 1032
    .local v6, "positionInPeriodUs":J
    iget-wide v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v9, v11

    if-nez v13, :cond_4c

    .line 1033
    iget-wide v8, v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    cmp-long v4, v8, v11

    if-eqz v4, :cond_48

    .line 1034
    iget-wide v8, v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    sub-long/2addr v8, v6

    iput-wide v8, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    move-object v8, v2

    move-object/from16 v17, v3

    goto :goto_7a

    .line 1033
    :cond_48
    move-object v8, v2

    move-object/from16 v17, v3

    goto :goto_7a

    .line 1037
    :cond_4c
    iget v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    .line 1038
    invoke-super {v0, v9, v2, v4}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    .line 1039
    .local v4, "originalLastPeriod":Lcom/google/android/exoplayer2/Timeline$Period;
    iget-wide v9, v4, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    .line 1040
    .local v9, "originalLastPeriodPositionInWindowUs":J
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v12, v4, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1041
    invoke-virtual {v11, v12}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1042
    .local v11, "lastAdPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    iget v12, v1, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    invoke-virtual {v0, v12, v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v12

    .line 1043
    .local v12, "adjustedLastPeriod":Lcom/google/android/exoplayer2/Timeline$Period;
    iget-wide v13, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    sub-long/2addr v13, v9

    .line 1045
    .local v13, "originalWindowDurationInLastPeriodUs":J
    nop

    .line 1046
    invoke-static {v13, v14, v8, v11}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v15

    .line 1050
    .local v15, "adjustedWindowDurationInLastPeriodUs":J
    move-object v8, v2

    move-object/from16 v17, v3

    .end local v2    # "period":Lcom/google/android/exoplayer2/Timeline$Period;
    .end local v3    # "firstPeriodUid":Ljava/lang/Object;
    .local v8, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    .local v17, "firstPeriodUid":Ljava/lang/Object;
    iget-wide v2, v12, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v2, v15

    iput-wide v2, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 1053
    .end local v4    # "originalLastPeriod":Lcom/google/android/exoplayer2/Timeline$Period;
    .end local v9    # "originalLastPeriodPositionInWindowUs":J
    .end local v11    # "lastAdPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .end local v12    # "adjustedLastPeriod":Lcom/google/android/exoplayer2/Timeline$Period;
    .end local v13    # "originalWindowDurationInLastPeriodUs":J
    .end local v15    # "adjustedWindowDurationInLastPeriodUs":J
    :goto_7a
    iput-wide v6, v1, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    .line 1054
    return-object v1
.end method
