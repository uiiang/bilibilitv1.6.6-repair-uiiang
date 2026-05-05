.class public final Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "SinglePeriodTimeline.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

.field private static final UID:Ljava/lang/Object;


# instance fields
.field private final elapsedRealtimeEpochOffsetMs:J

.field private final isDynamic:Z

.field private final isSeekable:Z

.field private final liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field private final manifest:Ljava/lang/Object;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private final periodDurationUs:J

.field private final presentationStartTimeMs:J

.field private final suppressPositionProjection:Z

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowPositionInPeriodUs:J

.field private final windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 40
    const-string v1, "SinglePeriodTimeline"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    .line 39
    return-void
.end method

.method public constructor <init>(JJJJJJJZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V
    .registers 41
    .param p1, "presentationStartTimeMs"    # J
    .param p3, "windowStartTimeMs"    # J
    .param p5, "elapsedRealtimeEpochOffsetMs"    # J
    .param p7, "periodDurationUs"    # J
    .param p9, "windowDurationUs"    # J
    .param p11, "windowPositionInPeriodUs"    # J
    .param p13, "windowDefaultStartPositionUs"    # J
    .param p15, "isSeekable"    # Z
    .param p16, "isDynamic"    # Z
    .param p17, "manifest"    # Ljava/lang/Object;
    .param p18, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p19, "liveConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    .line 239
    const/16 v17, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    .line 253
    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V
    .registers 38
    .param p1, "presentationStartTimeMs"    # J
    .param p3, "windowStartTimeMs"    # J
    .param p5, "elapsedRealtimeEpochOffsetMs"    # J
    .param p7, "periodDurationUs"    # J
    .param p9, "windowDurationUs"    # J
    .param p11, "windowPositionInPeriodUs"    # J
    .param p13, "windowDefaultStartPositionUs"    # J
    .param p15, "isSeekable"    # Z
    .param p16, "isDynamic"    # Z
    .param p17, "suppressPositionProjection"    # Z
    .param p18, "manifest"    # Ljava/lang/Object;
    .param p19, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p20, "liveConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 295
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 296
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    .line 297
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->windowStartTimeMs:J

    .line 298
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->elapsedRealtimeEpochOffsetMs:J

    .line 299
    move-wide/from16 v7, p7

    iput-wide v7, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->periodDurationUs:J

    .line 300
    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->windowDurationUs:J

    .line 301
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    .line 302
    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    .line 303
    move/from16 v15, p15

    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->isSeekable:Z

    .line 304
    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->isDynamic:Z

    .line 305
    move/from16 v2, p17

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->suppressPositionProjection:Z

    .line 306
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->manifest:Ljava/lang/Object;

    .line 307
    invoke-static/range {p19 .. p19}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 308
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 309
    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V
    .registers 41
    .param p1, "presentationStartTimeMs"    # J
    .param p3, "windowStartTimeMs"    # J
    .param p5, "elapsedRealtimeEpochOffsetMs"    # J
    .param p7, "periodDurationUs"    # J
    .param p9, "windowDurationUs"    # J
    .param p11, "windowPositionInPeriodUs"    # J
    .param p13, "windowDefaultStartPositionUs"    # J
    .param p15, "isSeekable"    # Z
    .param p16, "isDynamic"    # Z
    .param p17, "isLive"    # Z
    .param p18, "manifest"    # Ljava/lang/Object;
    .param p19, "tag"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    const/16 v17, 0x0

    sget-object v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    .line 217
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    move-object/from16 v15, p19

    invoke-virtual {v1, v15}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v19

    .line 218
    if-eqz p17, :cond_17

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    move-object/from16 v20, v0

    .line 205
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v18, p18

    invoke-direct/range {v0 .. v20}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    .line 219
    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V
    .registers 35
    .param p1, "periodDurationUs"    # J
    .param p3, "windowDurationUs"    # J
    .param p5, "windowPositionInPeriodUs"    # J
    .param p7, "windowDefaultStartPositionUs"    # J
    .param p9, "isSeekable"    # Z
    .param p10, "isDynamic"    # Z
    .param p11, "useLiveConfiguration"    # Z
    .param p12, "manifest"    # Ljava/lang/Object;
    .param p13, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 171
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    .line 184
    if-eqz p11, :cond_18

    move-object/from16 v15, p13

    iget-object v0, v15, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    goto :goto_1b

    :cond_18
    move-object/from16 v15, p13

    const/4 v0, 0x0

    :goto_1b
    move-object/from16 v20, v0

    .line 171
    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    invoke-direct/range {v0 .. v20}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    .line 185
    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V
    .registers 34
    .param p1, "periodDurationUs"    # J
    .param p3, "windowDurationUs"    # J
    .param p5, "windowPositionInPeriodUs"    # J
    .param p7, "windowDefaultStartPositionUs"    # J
    .param p9, "isSeekable"    # Z
    .param p10, "isDynamic"    # Z
    .param p11, "isLive"    # Z
    .param p12, "manifest"    # Ljava/lang/Object;
    .param p13, "tag"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    .line 129
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v19}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V
    .registers 22
    .param p1, "durationUs"    # J
    .param p3, "isSeekable"    # Z
    .param p4, "isDynamic"    # Z
    .param p5, "useLiveConfiguration"    # Z
    .param p6, "manifest"    # Ljava/lang/Object;
    .param p7, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 100
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    .line 110
    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Ljava/lang/Object;)V
    .registers 22
    .param p1, "durationUs"    # J
    .param p3, "isSeekable"    # Z
    .param p4, "isDynamic"    # Z
    .param p5, "isLive"    # Z
    .param p6, "manifest"    # Ljava/lang/Object;
    .param p7, "tag"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 3
    .param p1, "uid"    # Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    const/4 v0, -0x1

    :goto_b
    return v0
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 13
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 357
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 358
    if-eqz p3, :cond_a

    sget-object v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move-object v3, v0

    .line 359
    .local v3, "uid":Ljava/lang/Object;
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->periodDurationUs:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    neg-long v7, v0

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodCount()I
    .registers 2

    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .registers 4
    .param p1, "periodIndex"    # I

    .line 369
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 370
    sget-object v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    return-object v0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 30
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 319
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 320
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    .line 321
    .local v1, "windowDefaultStartPositionUs":J
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->isDynamic:Z

    if-eqz v4, :cond_35

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->suppressPositionProjection:Z

    if-nez v4, :cond_35

    const-wide/16 v4, 0x0

    cmp-long v6, p3, v4

    if-eqz v6, :cond_35

    .line 322
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->windowDurationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-nez v8, :cond_2a

    .line 324
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_35

    .line 326
    :cond_2a
    add-long v1, v1, p3

    .line 327
    cmp-long v6, v1, v4

    if-lez v6, :cond_35

    .line 329
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 333
    :cond_35
    :goto_35
    sget-object v5, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->manifest:Ljava/lang/Object;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->windowStartTimeMs:J

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->elapsedRealtimeEpochOffsetMs:J

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->isSeekable:Z

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->isDynamic:Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-object/from16 v16, v4

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->windowDurationUs:J

    move-wide/from16 v19, v3

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    move-wide/from16 v23, v3

    move-object/from16 v4, p2

    move-wide/from16 v17, v1

    invoke-virtual/range {v4 .. v24}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    return-object v3
.end method

.method public getWindowCount()I
    .registers 2

    .line 313
    const/4 v0, 0x1

    return v0
.end method
