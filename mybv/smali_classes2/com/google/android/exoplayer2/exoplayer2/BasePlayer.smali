.class public abstract Lcom/google/android/exoplayer2/BasePlayer;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 43
    return-void
.end method

.method private getRepeatModeForNavigation()I
    .registers 3

    .line 464
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getRepeatMode()I

    move-result v0

    .line 465
    .local v0, "repeatMode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    return v1
.end method

.method private repeatCurrentMediaItem(I)V
    .registers 8
    .param p1, "seekCommand"    # I

    .line 516
    nop

    .line 517
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    .line 516
    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(IJIZ)V

    .line 521
    return-void
.end method

.method private seekToCurrentItem(JI)V
    .registers 10
    .param p1, "positionMs"    # J
    .param p3, "seekCommand"    # I

    .line 469
    nop

    .line 470
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    const/4 v5, 0x0

    .line 469
    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(IJIZ)V

    .line 471
    return-void
.end method

.method private seekToDefaultPositionInternal(II)V
    .registers 9
    .param p1, "mediaItemIndex"    # I
    .param p2, "seekCommand"    # I

    .line 484
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(IJIZ)V

    .line 489
    return-void
.end method

.method private seekToNextMediaItemInternal(I)V
    .registers 4
    .param p1, "seekCommand"    # I

    .line 492
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    .line 493
    .local v0, "nextMediaItemIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 494
    return-void

    .line 496
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 497
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->repeatCurrentMediaItem(I)V

    goto :goto_15

    .line 499
    :cond_12
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPositionInternal(II)V

    .line 501
    :goto_15
    return-void
.end method

.method private seekToOffset(JI)V
    .registers 11
    .param p1, "offsetMs"    # J
    .param p3, "seekCommand"    # I

    .line 474
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 475
    .local v0, "positionMs":J
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getDuration()J

    move-result-wide v2

    .line 476
    .local v2, "durationMs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_16

    .line 477
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 479
    :cond_16
    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 480
    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/exoplayer2/BasePlayer;->seekToCurrentItem(JI)V

    .line 481
    return-void
.end method

.method private seekToPreviousMediaItemInternal(I)V
    .registers 4
    .param p1, "seekCommand"    # I

    .line 504
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    .line 505
    .local v0, "previousMediaItemIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 506
    return-void

    .line 508
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 509
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->repeatCurrentMediaItem(I)V

    goto :goto_15

    .line 511
    :cond_12
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPositionInternal(II)V

    .line 513
    :goto_15
    return-void
.end method


# virtual methods
.method public final addMediaItem(ILcom/google/android/exoplayer2/MediaItem;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 67
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/BasePlayer;->addMediaItems(ILjava/util/List;)V

    .line 68
    return-void
.end method

.method public final addMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V
    .registers 3
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 72
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->addMediaItems(Ljava/util/List;)V

    .line 73
    return-void
.end method

.method public final addMediaItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->addMediaItems(ILjava/util/List;)V

    .line 78
    return-void
.end method

.method public final canAdvertiseSession()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public final clearMediaItems()V
    .registers 3

    .line 100
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/BasePlayer;->removeMediaItems(II)V

    .line 101
    return-void
.end method

.method public final getBufferedPercentage()I
    .registers 10

    .line 389
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getBufferedPosition()J

    move-result-wide v0

    .line 390
    .local v0, "position":J
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getDuration()J

    move-result-wide v2

    .line 391
    .local v2, "duration":J
    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v0, v5

    if-eqz v7, :cond_2d

    cmp-long v7, v2, v5

    if-nez v7, :cond_17

    goto :goto_2d

    .line 393
    :cond_17
    const-wide/16 v5, 0x0

    const/16 v7, 0x64

    cmp-long v8, v2, v5

    if-nez v8, :cond_22

    const/16 v4, 0x64

    goto :goto_2e

    :cond_22
    const-wide/16 v5, 0x64

    mul-long v5, v5, v0

    div-long/2addr v5, v2

    long-to-int v6, v5

    invoke-static {v6, v4, v7}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    goto :goto_2e

    .line 392
    :cond_2d
    :goto_2d
    nop

    .line 391
    :goto_2e
    return v4
.end method

.method public final getContentDuration()J
    .registers 4

    .line 457
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 458
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 459
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1e

    .line 460
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v1

    .line 458
    :goto_1e
    return-wide v1
.end method

.method public final getCurrentLiveOffset()J
    .registers 9

    .line 428
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 429
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_10

    .line 430
    return-wide v2

    .line 432
    :cond_10
    nop

    .line 433
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget-wide v4, v1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    .line 434
    .local v4, "windowStartTimeMs":J
    cmp-long v1, v4, v2

    if-nez v1, :cond_22

    .line 435
    return-wide v2

    .line 437
    :cond_22
    iget-object v1, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Window;->getCurrentUnixTimeMs()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr v1, v6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getContentPosition()J

    move-result-wide v6

    sub-long/2addr v1, v6

    return-wide v1
.end method

.method public final getCurrentManifest()Ljava/lang/Object;
    .registers 4

    .line 381
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 382
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 383
    const/4 v1, 0x0

    goto :goto_18

    .line 384
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 382
    :goto_18
    return-object v1
.end method

.method public final getCurrentMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 4

    .line 362
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 363
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 364
    const/4 v1, 0x0

    goto :goto_18

    .line 365
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 363
    :goto_18
    return-object v1
.end method

.method public final getCurrentWindowIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final getMediaItemAt(I)Lcom/google/android/exoplayer2/MediaItem;
    .registers 4
    .param p1, "index"    # I

    .line 375
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public final getMediaItemCount()I
    .registers 2

    .line 370
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    return v0
.end method

.method public final getNextMediaItemIndex()I
    .registers 5

    .line 334
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 335
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 336
    const/4 v1, -0x1

    goto :goto_1d

    .line 337
    :cond_c
    nop

    .line 338
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getShuffleModeEnabled()Z

    move-result v3

    .line 337
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v1

    .line 335
    :goto_1d
    return v1
.end method

.method public final getNextWindowIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final getPreviousMediaItemIndex()I
    .registers 5

    .line 352
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 353
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 354
    const/4 v1, -0x1

    goto :goto_1d

    .line 355
    :cond_c
    nop

    .line 356
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getShuffleModeEnabled()Z

    move-result v3

    .line 355
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v1

    .line 353
    :goto_1d
    return v1
.end method

.method public final getPreviousWindowIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final hasNext()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasNextMediaItem()Z
    .registers 3

    .line 240
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final hasNextWindow()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasPreviousMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasPreviousMediaItem()Z
    .registers 3

    .line 176
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final hasPreviousWindow()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasPreviousMediaItem()Z

    move-result v0

    return v0
.end method

.method public final isCommandAvailable(I)Z
    .registers 3
    .param p1, "command"    # I

    .line 105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Player$Commands;->contains(I)Z

    move-result v0

    return v0
.end method

.method public final isCurrentMediaItemDynamic()Z
    .registers 4

    .line 407
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 408
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public final isCurrentMediaItemLive()Z
    .registers 4

    .line 422
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 423
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method

.method public final isCurrentMediaItemSeekable()Z
    .registers 4

    .line 451
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 452
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public final isCurrentWindowDynamic()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 402
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v0

    return v0
.end method

.method public final isCurrentWindowLive()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 417
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v0

    return v0
.end method

.method public final isCurrentWindowSeekable()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 446
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .registers 3

    .line 130
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 131
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 132
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPlaybackSuppressionReason()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 130
    :goto_16
    return v0
.end method

.method public final moveMediaItem(II)V
    .registers 4
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I

    .line 82
    if-eq p1, p2, :cond_7

    .line 83
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/BasePlayer;->moveMediaItems(III)V

    .line 85
    :cond_7
    return-void
.end method

.method public final next()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToNextMediaItem()V

    .line 250
    return-void
.end method

.method public final pause()V
    .registers 2

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->setPlayWhenReady(Z)V

    .line 126
    return-void
.end method

.method public final play()V
    .registers 2

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->setPlayWhenReady(Z)V

    .line 121
    return-void
.end method

.method public final previous()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItem()V

    .line 186
    return-void
.end method

.method public final removeMediaItem(I)V
    .registers 3
    .param p1, "index"    # I

    .line 95
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/BasePlayer;->removeMediaItems(II)V

    .line 96
    return-void
.end method

.method public final replaceMediaItem(ILcom/google/android/exoplayer2/MediaItem;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 89
    add-int/lit8 v0, p1, 0x1

    .line 90
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 89
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/BasePlayer;->replaceMediaItems(IILjava/util/List;)V

    .line 91
    return-void
.end method

.method public final seekBack()V
    .registers 4

    .line 148
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getSeekBackIncrement()J

    move-result-wide v0

    neg-long v0, v0

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/BasePlayer;->seekToOffset(JI)V

    .line 149
    return-void
.end method

.method public final seekForward()V
    .registers 4

    .line 153
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getSeekForwardIncrement()J

    move-result-wide v0

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/BasePlayer;->seekToOffset(JI)V

    .line 154
    return-void
.end method

.method public final seekTo(IJ)V
    .registers 10
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J

    .line 286
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(IJIZ)V

    .line 291
    return-void
.end method

.method public abstract seekTo(IJIZ)V
.end method

.method public final seekTo(J)V
    .registers 4
    .param p1, "positionMs"    # J

    .line 281
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToCurrentItem(JI)V

    .line 282
    return-void
.end method

.method public final seekToDefaultPosition()V
    .registers 3

    .line 137
    nop

    .line 138
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v0

    .line 137
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPositionInternal(II)V

    .line 139
    return-void
.end method

.method public final seekToDefaultPosition(I)V
    .registers 3
    .param p1, "mediaItemIndex"    # I

    .line 143
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPositionInternal(II)V

    .line 144
    return-void
.end method

.method public final seekToNext()V
    .registers 4

    .line 268
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 269
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_31

    .line 272
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasNextMediaItem()Z

    move-result v1

    const/16 v2, 0x9

    if-eqz v1, :cond_1d

    .line 273
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/BasePlayer;->seekToNextMediaItemInternal(I)V

    goto :goto_30

    .line 274
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 275
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPositionInternal(II)V

    .line 277
    :cond_30
    :goto_30
    return-void

    .line 270
    :cond_31
    :goto_31
    return-void
.end method

.method public final seekToNextMediaItem()V
    .registers 2

    .line 263
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToNextMediaItemInternal(I)V

    .line 264
    return-void
.end method

.method public final seekToNextWindow()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToNextMediaItem()V

    .line 259
    return-void
.end method

.method public final seekToPrevious()V
    .registers 9

    .line 204
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 205
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_40

    .line 208
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasPreviousMediaItem()Z

    move-result v1

    .line 209
    .local v1, "hasPreviousMediaItem":Z
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v2

    const/4 v3, 0x7

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v2

    if-nez v2, :cond_28

    .line 210
    if-eqz v1, :cond_3f

    .line 211
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    goto :goto_3f

    .line 213
    :cond_28
    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentPosition()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getMaxSeekToPreviousPosition()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gtz v2, :cond_3a

    .line 214
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    goto :goto_3f

    .line 216
    :cond_3a
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5, v3}, Lcom/google/android/exoplayer2/BasePlayer;->seekToCurrentItem(JI)V

    .line 218
    :cond_3f
    :goto_3f
    return-void

    .line 206
    .end local v1    # "hasPreviousMediaItem":Z
    :cond_40
    :goto_40
    return-void
.end method

.method public final seekToPreviousMediaItem()V
    .registers 2

    .line 199
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    .line 200
    return-void
.end method

.method public final seekToPreviousWindow()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItem()V

    .line 195
    return-void
.end method

.method public final setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V
    .registers 3
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 47
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->setMediaItems(Ljava/util/List;)V

    .line 48
    return-void
.end method

.method public final setMediaItem(Lcom/google/android/exoplayer2/MediaItem;J)V
    .registers 6
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "startPositionMs"    # J

    .line 52
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/BasePlayer;->setMediaItems(Ljava/util/List;IJ)V

    .line 53
    return-void
.end method

.method public final setMediaItem(Lcom/google/android/exoplayer2/MediaItem;Z)V
    .registers 4
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "resetPosition"    # Z

    .line 57
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/BasePlayer;->setMediaItems(Ljava/util/List;Z)V

    .line 58
    return-void
.end method

.method public final setMediaItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/BasePlayer;->setMediaItems(Ljava/util/List;Z)V

    .line 63
    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .registers 3
    .param p1, "speed"    # F

    .line 311
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->withSpeed(F)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 312
    return-void
.end method
