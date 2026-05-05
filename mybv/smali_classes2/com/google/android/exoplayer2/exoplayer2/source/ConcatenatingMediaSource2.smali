.class public final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "ConcatenatingMediaSource2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;,
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;,
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MSG_UPDATE_TIMELINE:I


# instance fields
.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private playbackThreadHandler:Landroid/os/Handler;

.field private timelineUpdateScheduled:Z


# direct methods
.method public static synthetic $r8$lambda$5QwC6UTDyJPrb6lu5LkhFaRJXVw(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/common/collect/ImmutableList;)V
    .registers 4
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p2, "mediaSourceHolders":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 228
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 229
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "x1"    # Lcom/google/common/collect/ImmutableList;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$1;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/Object;

    .line 59
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getChildIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Object;

    .line 59
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/Object;

    .line 59
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getPeriodUid(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private disableUnusedMediaSources()V
    .registers 4

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 354
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 355
    .local v1, "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    iget v2, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    if-nez v2, :cond_1e

    .line 356
    iget v2, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->disableChildSource(Ljava/lang/Object;)V

    .line 353
    .end local v1    # "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 359
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method private static getChildIndex(Ljava/lang/Object;)I
    .registers 2
    .param p0, "periodUid"    # Ljava/lang/Object;

    .line 454
    move-object v0, p0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getChildIndexFromChildWindowSequenceNumber(JI)I
    .registers 5
    .param p0, "childWindowSequenceNumber"    # J
    .param p2, "childCount"    # I

    .line 472
    int-to-long v0, p2

    rem-long v0, p0, v0

    long-to-int v1, v0

    return v1
.end method

.method private static getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "periodUid"    # Ljava/lang/Object;

    .line 460
    move-object v0, p0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method private static getChildWindowSequenceNumber(JII)J
    .registers 8
    .param p0, "windowSequenceNumber"    # J
    .param p2, "childCount"    # I
    .param p3, "childIndex"    # I

    .line 466
    int-to-long v0, p2

    mul-long v0, v0, p0

    int-to-long v2, p3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static getPeriodUid(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "childIndex"    # I
    .param p1, "childPeriodUid"    # Ljava/lang/Object;

    .line 448
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static getWindowSequenceNumberFromChildWindowSequenceNumber(JI)J
    .registers 5
    .param p0, "childWindowSequenceNumber"    # J
    .param p2, "childCount"    # I

    .line 478
    int-to-long v0, p2

    div-long v0, p0, v0

    return-wide v0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 331
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_7

    .line 332
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->updateTimeline()V

    .line 334
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method private maybeCreateConcatenatedTimeline()Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;
    .registers 33

    .line 363
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 364
    .local v1, "window":Lcom/google/android/exoplayer2/Timeline$Window;
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 365
    .local v2, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 366
    .local v3, "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/Timeline;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 367
    .local v4, "firstPeriodIndicesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v5

    .line 368
    .local v5, "periodOffsetsInWindowUsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 369
    .local v6, "periodCount":I
    const/4 v7, 0x1

    .line 370
    .local v7, "isSeekable":Z
    const/4 v8, 0x0

    .line 371
    .local v8, "isDynamic":Z
    const-wide/16 v9, 0x0

    .line 372
    .local v9, "durationUs":J
    const-wide/16 v11, 0x0

    .line 373
    .local v11, "defaultPositionUs":J
    const-wide/16 v13, 0x0

    .line 374
    .local v13, "nextPeriodOffsetInWindowUs":J
    const/4 v15, 0x1

    .line 375
    .local v15, "manifestsAreIdentical":Z
    const/16 v16, 0x0

    .line 376
    .local v16, "hasInitialManifest":Z
    const/16 v17, 0x0

    .line 377
    .local v17, "initialManifest":Ljava/lang/Object;
    const/16 v18, 0x0

    move/from16 v19, v7

    move/from16 v20, v8

    move-wide/from16 v21, v9

    move-wide/from16 v23, v11

    move-wide/from16 v25, v13

    move/from16 v27, v15

    move/from16 v28, v16

    move-object/from16 v29, v17

    move/from16 v7, v18

    .end local v8    # "isDynamic":Z
    .end local v9    # "durationUs":J
    .end local v11    # "defaultPositionUs":J
    .end local v13    # "nextPeriodOffsetInWindowUs":J
    .end local v15    # "manifestsAreIdentical":Z
    .end local v16    # "hasInitialManifest":Z
    .end local v17    # "initialManifest":Ljava/lang/Object;
    .local v7, "i":I
    .local v19, "isSeekable":Z
    .local v20, "isDynamic":Z
    .local v21, "durationUs":J
    .local v23, "defaultPositionUs":J
    .local v25, "nextPeriodOffsetInWindowUs":J
    .local v27, "manifestsAreIdentical":Z
    .local v28, "hasInitialManifest":Z
    .local v29, "initialManifest":Ljava/lang/Object;
    :goto_3a
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v8

    if-ge v7, v8, :cond_142

    .line 378
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8, v7}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 379
    .local v8, "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    iget-object v10, v8, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v10

    .line 380
    .local v10, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v11

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    const-string v13, "Can\'t concatenate empty child Timeline."

    invoke-static {v11, v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 381
    invoke-virtual {v3, v10}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 382
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 383
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v11

    add-int/2addr v6, v11

    .line 384
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_6b
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v13

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v11, v13, :cond_e6

    .line 385
    invoke-virtual {v10, v11, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 386
    if-nez v28, :cond_80

    .line 387
    iget-object v13, v1, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 388
    .end local v29    # "initialManifest":Ljava/lang/Object;
    .local v13, "initialManifest":Ljava/lang/Object;
    const/16 v28, 0x1

    goto :goto_82

    .line 386
    .end local v13    # "initialManifest":Ljava/lang/Object;
    .restart local v29    # "initialManifest":Ljava/lang/Object;
    :cond_80
    move-object/from16 v13, v29

    .line 390
    .end local v29    # "initialManifest":Ljava/lang/Object;
    .restart local v13    # "initialManifest":Ljava/lang/Object;
    :goto_82
    if-eqz v27, :cond_8e

    iget-object v14, v1, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 391
    invoke-static {v13, v14}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8e

    const/4 v14, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v14, 0x0

    :goto_8f
    move/from16 v27, v14

    .line 393
    move-object/from16 v18, v13

    .end local v13    # "initialManifest":Ljava/lang/Object;
    .local v18, "initialManifest":Ljava/lang/Object;
    iget-wide v12, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 394
    .local v12, "windowDurationUs":J
    cmp-long v29, v12, v15

    if-nez v29, :cond_a7

    .line 395
    move-object/from16 v31, v10

    .end local v10    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .local v31, "timeline":Lcom/google/android/exoplayer2/Timeline;
    iget-wide v9, v8, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    cmp-long v29, v9, v15

    if-nez v29, :cond_a3

    .line 397
    const/4 v9, 0x0

    return-object v9

    .line 399
    :cond_a3
    const/4 v9, 0x0

    iget-wide v12, v8, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    goto :goto_aa

    .line 394
    .end local v31    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v10    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_a7
    move-object/from16 v31, v10

    const/4 v9, 0x0

    .line 401
    .end local v10    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v31    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :goto_aa
    add-long v21, v21, v12

    .line 402
    iget v10, v8, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    if-nez v10, :cond_bc

    if-nez v11, :cond_bc

    .line 403
    iget-wide v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 404
    .end local v23    # "defaultPositionUs":J
    .local v9, "defaultPositionUs":J
    iget-wide v14, v1, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    neg-long v14, v14

    move-wide/from16 v23, v9

    move-wide/from16 v25, v14

    .end local v25    # "nextPeriodOffsetInWindowUs":J
    .local v14, "nextPeriodOffsetInWindowUs":J
    goto :goto_cc

    .line 406
    .end local v9    # "defaultPositionUs":J
    .end local v14    # "nextPeriodOffsetInWindowUs":J
    .restart local v23    # "defaultPositionUs":J
    .restart local v25    # "nextPeriodOffsetInWindowUs":J
    :cond_bc
    iget-wide v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    const-wide/16 v14, 0x0

    cmp-long v16, v9, v14

    if-nez v16, :cond_c6

    const/4 v9, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v9, 0x0

    :goto_c7
    const-string v10, "Can\'t concatenate windows. A window has a non-zero offset in a period."

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 411
    :goto_cc
    iget-boolean v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v9, :cond_d7

    iget-boolean v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    if-eqz v9, :cond_d5

    goto :goto_d7

    :cond_d5
    const/4 v14, 0x0

    goto :goto_d8

    :cond_d7
    :goto_d7
    const/4 v14, 0x1

    :goto_d8
    and-int v19, v19, v14

    .line 412
    iget-boolean v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    or-int v20, v20, v9

    .line 384
    .end local v12    # "windowDurationUs":J
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v29, v18

    move-object/from16 v10, v31

    const/4 v12, 0x1

    goto :goto_6b

    .end local v18    # "initialManifest":Ljava/lang/Object;
    .end local v31    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v10    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v29    # "initialManifest":Ljava/lang/Object;
    :cond_e6
    move-object/from16 v31, v10

    .line 414
    .end local v10    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v11    # "j":I
    .restart local v31    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v9

    .line 415
    .local v9, "childPeriodCount":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_ed
    if-ge v10, v9, :cond_138

    .line 416
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 417
    move-object/from16 v11, v31

    .end local v31    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .local v11, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v11, v10, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 418
    iget-wide v12, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 419
    .local v12, "periodDurationUs":J
    cmp-long v14, v12, v15

    if-nez v14, :cond_125

    .line 420
    const/4 v14, 0x1

    if-ne v9, v14, :cond_105

    goto :goto_106

    :cond_105
    const/4 v14, 0x0

    :goto_106
    const-string v15, "Can\'t concatenate multiple periods with unknown duration in one window."

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 424
    iget-wide v14, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v16, v14, v30

    if-eqz v16, :cond_119

    .line 425
    iget-wide v14, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    goto :goto_11b

    .line 426
    :cond_119
    iget-wide v14, v8, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    :goto_11b
    nop

    .line 427
    .local v14, "windowDurationUs":J
    move-object/from16 v16, v8

    move/from16 v18, v9

    .end local v8    # "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    .end local v9    # "childPeriodCount":I
    .local v16, "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    .local v18, "childPeriodCount":I
    iget-wide v8, v1, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    add-long v12, v14, v8

    goto :goto_12b

    .line 419
    .end local v14    # "windowDurationUs":J
    .end local v16    # "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    .end local v18    # "childPeriodCount":I
    .restart local v8    # "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    .restart local v9    # "childPeriodCount":I
    :cond_125
    move/from16 v18, v9

    move-wide/from16 v30, v15

    move-object/from16 v16, v8

    .line 429
    .end local v8    # "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    .end local v9    # "childPeriodCount":I
    .restart local v16    # "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    .restart local v18    # "childPeriodCount":I
    :goto_12b
    add-long v25, v25, v12

    .line 415
    .end local v12    # "periodDurationUs":J
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v16

    move/from16 v9, v18

    move-wide/from16 v15, v30

    move-object/from16 v31, v11

    goto :goto_ed

    .end local v11    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v16    # "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    .end local v18    # "childPeriodCount":I
    .restart local v8    # "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    .restart local v9    # "childPeriodCount":I
    .restart local v31    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_138
    move-object/from16 v16, v8

    move/from16 v18, v9

    move-object/from16 v11, v31

    .line 377
    .end local v8    # "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    .end local v9    # "childPeriodCount":I
    .end local v10    # "j":I
    .end local v31    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3a

    .line 432
    .end local v7    # "i":I
    :cond_142
    new-instance v31, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 434
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 435
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    .line 436
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    .line 441
    if-eqz v27, :cond_157

    move-object/from16 v18, v29

    goto :goto_159

    :cond_157
    const/16 v18, 0x0

    :goto_159
    move-object/from16 v7, v31

    move/from16 v12, v19

    move/from16 v13, v20

    move-wide/from16 v14, v21

    move-wide/from16 v16, v23

    invoke-direct/range {v7 .. v18}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ZZJJLjava/lang/Object;)V

    .line 432
    return-object v31
.end method

.method private scheduleTimelineUpdate()V
    .registers 3

    .line 338
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    if-nez v0, :cond_17

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    .line 342
    :cond_17
    return-void
.end method

.method private updateTimeline()V
    .registers 2

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    .line 346
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->maybeCreateConcatenatedTimeline()Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    move-result-object v0

    .line 347
    .local v0, "timeline":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;
    if-eqz v0, :cond_c

    .line 348
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 350
    :cond_c
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 12
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 262
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getChildIndex(Ljava/lang/Object;)I

    move-result v0

    .line 263
    .local v0, "holderIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 264
    .local v1, "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 265
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 268
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    iget v6, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    .line 267
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getChildWindowSequenceNumber(JII)J

    move-result-wide v3

    .line 266
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithWindowSequenceNumber(J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    .line 269
    .local v2, "childMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget v3, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->enableChildSource(Ljava/lang/Object;)V

    .line 270
    iget v3, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    .line 271
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 272
    invoke-virtual {v3, v2, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    move-result-object v3

    .line 273
    .local v3, "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->disableUnusedMediaSources()V

    .line 275
    return-object v3
.end method

.method protected enableInternal()V
    .registers 1

    .line 258
    return-void
.end method

.method public getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 2

    .line 235
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->maybeCreateConcatenatedTimeline()Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 8
    .param p1, "childSourceId"    # Ljava/lang/Integer;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 308
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 310
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    .line 309
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getChildIndexFromChildWindowSequenceNumber(JI)I

    move-result v0

    .line 311
    .local v0, "childIndex":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_14

    .line 314
    const/4 v1, 0x0

    return-object v1

    .line 316
    :cond_14
    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 318
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    .line 317
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getWindowSequenceNumberFromChildWindowSequenceNumber(JI)J

    move-result-wide v1

    .line 319
    .local v1, "windowSequenceNumber":J
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getPeriodUid(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 320
    .local v3, "periodUid":Ljava/lang/Object;
    nop

    .line 321
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v4

    .line 322
    invoke-virtual {v4, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithWindowSequenceNumber(J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v4

    .line 320
    return-object v4
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 3

    .line 58
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method protected getWindowIndexForChildWindowIndex(Ljava/lang/Integer;I)I
    .registers 4
    .param p1, "childSourceId"    # Ljava/lang/Integer;
    .param p2, "windowIndex"    # I

    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .registers 3

    .line 58
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getWindowIndexForChildWindowIndex(Ljava/lang/Integer;I)I

    move-result p1

    return p1
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4
    .param p1, "childSourceId"    # Ljava/lang/Integer;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p3, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 301
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->scheduleTimelineUpdate()V

    .line 302
    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4

    .line 58
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->onChildSourceInfoRefreshed(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 6
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 245
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 246
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 248
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 249
    .local v1, "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 247
    .end local v1    # "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 251
    .end local v0    # "i":I
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->scheduleTimelineUpdate()V

    .line 252
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 281
    .local v0, "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 282
    iget v1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    .line 283
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 284
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->disableUnusedMediaSources()V

    .line 286
    :cond_24
    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 3

    .line 290
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 292
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 293
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    .line 295
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    .line 296
    return-void
.end method
