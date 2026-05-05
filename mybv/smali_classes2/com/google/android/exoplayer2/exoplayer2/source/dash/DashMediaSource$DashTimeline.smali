.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DashTimeline"
.end annotation


# instance fields
.field private final elapsedRealtimeEpochOffsetMs:J

.field private final firstPeriodId:I

.field private final liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field private final manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private final offsetInFirstPeriodUs:J

.field private final presentationStartTimeMs:J

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowStartTimeMs:J


# direct methods
.method public constructor <init>(JJJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V
    .registers 33
    .param p1, "presentationStartTimeMs"    # J
    .param p3, "windowStartTimeMs"    # J
    .param p5, "elapsedRealtimeEpochOffsetMs"    # J
    .param p7, "firstPeriodId"    # I
    .param p8, "offsetInFirstPeriodUs"    # J
    .param p10, "windowDurationUs"    # J
    .param p12, "windowDefaultStartPositionUs"    # J
    .param p14, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p15, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p16, "liveConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1224
    move-object/from16 v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, p16

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 1225
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_11

    const/4 v6, 0x1

    goto :goto_12

    :cond_11
    const/4 v6, 0x0

    :goto_12
    if-ne v3, v6, :cond_15

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    :goto_16
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1226
    move-wide/from16 v3, p1

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    .line 1227
    move-wide/from16 v5, p3

    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    .line 1228
    move-wide/from16 v7, p5

    iput-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    .line 1229
    move/from16 v9, p7

    iput v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    .line 1230
    move-wide/from16 v10, p8

    iput-wide v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    .line 1231
    move-wide/from16 v12, p10

    iput-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    .line 1232
    move-wide/from16 v14, p12

    iput-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 1233
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1234
    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 1235
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1236
    return-void
.end method

.method private getAdjustedWindowDefaultStartPositionUs(J)J
    .registers 19
    .param p1, "defaultPositionProjectionUs"    # J

    .line 1295
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 1296
    .local v1, "windowDefaultStartPositionUs":J
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->isMovingLiveWindow(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1297
    return-wide v1

    .line 1299
    :cond_d
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_21

    .line 1300
    add-long v1, v1, p1

    .line 1301
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    cmp-long v7, v1, v5

    if-lez v7, :cond_21

    .line 1303
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v3

    .line 1307
    :cond_21
    const/4 v5, 0x0

    .line 1308
    .local v5, "periodIndex":I
    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    add-long/2addr v6, v1

    .line 1309
    .local v6, "defaultStartPositionInPeriodUs":J
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v8

    .line 1310
    .local v8, "periodDurationUs":J
    :goto_2b
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_43

    cmp-long v10, v6, v8

    if-ltz v10, :cond_43

    .line 1312
    sub-long/2addr v6, v8

    .line 1313
    add-int/lit8 v5, v5, 0x1

    .line 1314
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v8

    goto :goto_2b

    .line 1316
    :cond_43
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1317
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v10

    .line 1318
    .local v10, "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v11

    .line 1319
    .local v11, "videoAdaptationSetIndex":I
    const/4 v12, -0x1

    if-ne v11, v12, :cond_52

    .line 1321
    return-wide v1

    .line 1326
    :cond_52
    iget-object v12, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 1327
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v12, v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v12

    .line 1328
    .local v12, "snapIndex":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-eqz v12, :cond_7e

    invoke-interface {v12, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v13

    cmp-long v15, v13, v3

    if-nez v15, :cond_72

    goto :goto_7e

    .line 1332
    :cond_72
    invoke-interface {v12, v6, v7, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v3

    .line 1333
    .local v3, "segmentNum":J
    nop

    .line 1334
    invoke-interface {v12, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v13

    add-long/2addr v13, v1

    sub-long/2addr v13, v6

    .line 1333
    return-wide v13

    .line 1330
    .end local v3    # "segmentNum":J
    :cond_7e
    :goto_7e
    return-wide v1
.end method

.method private static isMovingLiveWindow(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)Z
    .registers 6
    .param p0, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1345
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_17

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->durationMs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 6
    .param p1, "uid"    # Ljava/lang/Object;

    .line 1286
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 1287
    return v1

    .line 1289
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1290
    .local v0, "periodId":I
    iget v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    sub-int v2, v0, v2

    .line 1291
    .local v2, "periodIndex":I
    if-ltz v2, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v3

    if-lt v2, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :cond_1b
    :goto_1b
    return v1
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 15
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 1245
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1246
    const/4 v0, 0x0

    if-eqz p3, :cond_15

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->id:Ljava/lang/String;

    move-object v4, v2

    goto :goto_16

    :cond_15
    move-object v4, v0

    .line 1247
    .local v4, "id":Ljava/lang/Object;
    :goto_16
    if-eqz p3, :cond_1f

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1f
    move-object v5, v0

    .line 1248
    .local v5, "uid":Ljava/lang/Object;
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1252
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1253
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    sub-long v9, v0, v2

    .line 1248
    move-object v3, p2

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodCount()I
    .registers 2

    .line 1240
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v0

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .registers 4
    .param p1, "periodIndex"    # I

    .line 1340
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1341
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 32
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1264
    const/4 v2, 0x0

    const/4 v13, 0x1

    move/from16 v12, p1

    invoke-static {v12, v2, v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1265
    nop

    .line 1266
    move-wide/from16 v9, p3

    invoke-direct {v0, v9, v10}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getAdjustedWindowDefaultStartPositionUs(J)J

    move-result-wide v22

    .local v22, "windowDefaultStartPositionUs":J
    move-wide/from16 v14, v22

    .line 1267
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object v4, v11

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    move-wide/from16 v24, v14

    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    move-wide v9, v13

    const/4 v13, 0x1

    move-object v14, v11

    move v11, v13

    .line 1275
    invoke-static {v14}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->isMovingLiveWindow(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)Z

    move-result v13

    move v12, v13

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/4 v14, 0x1

    move/from16 v26, v12

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    move-wide/from16 v16, v11

    const/16 v18, 0x0

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v11

    add-int/lit8 v19, v11, -0x1

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    move-wide/from16 v20, v11

    .line 1267
    move-wide/from16 v14, v24

    move/from16 v12, v26

    const/4 v11, 0x1

    invoke-virtual/range {v1 .. v21}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    return-object v1
.end method

.method public getWindowCount()I
    .registers 2

    .line 1259
    const/4 v0, 0x1

    return v0
.end method
