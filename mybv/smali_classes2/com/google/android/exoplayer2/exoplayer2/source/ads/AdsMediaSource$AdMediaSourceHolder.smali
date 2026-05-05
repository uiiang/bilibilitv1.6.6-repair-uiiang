.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdMediaSourceHolder"
.end annotation


# instance fields
.field private final activeMediaPeriods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private adUri:Landroid/net/Uri;

.field private final id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field private timeline:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .param p2, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 462
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 464
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    .line 465
    return-void
.end method


# virtual methods
.method public createMediaPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 10
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 480
    new-instance v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)V

    .line 482
    .local v0, "maskingMediaPeriod":Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v1, :cond_23

    .line 484
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 485
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->adUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setPrepareListener(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;)V

    .line 487
    :cond_23
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-eqz v1, :cond_36

    .line 488
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v1

    .line 489
    .local v1, "periodUid":Ljava/lang/Object;
    new-instance v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 490
    .local v2, "adSourceMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 492
    .end local v1    # "periodUid":Ljava/lang/Object;
    .end local v2    # "adSourceMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :cond_36
    return-object v0
.end method

.method public getDurationUs()J
    .registers 4

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_a

    .line 511
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_19

    .line 512
    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    # getter for: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$600(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    .line 510
    :goto_19
    return-wide v0
.end method

.method public handleSourceInfoRefresh(Lcom/google/android/exoplayer2/Timeline;)V
    .registers 8
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 496
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_35

    .line 498
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v0

    .line 499
    .local v0, "periodUid":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 500
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 501
    .local v2, "mediaPeriod":Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v3, v0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 503
    .local v3, "adSourceMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 499
    .end local v2    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
    .end local v3    # "adSourceMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 506
    .end local v0    # "periodUid":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_35
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 507
    return-void
.end method

.method public hasMediaSource()Z
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public initializeWithMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Landroid/net/Uri;)V
    .registers 7
    .param p1, "adMediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "adUri"    # Landroid/net/Uri;

    .line 468
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 469
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->adUri:Landroid/net/Uri;

    .line 470
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 471
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 472
    .local v1, "maskingMediaPeriod":Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 473
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {v2, v3, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setPrepareListener(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;)V

    .line 470
    .end local v1    # "maskingMediaPeriod":Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 475
    .end local v0    # "i":I
    :cond_25
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    # invokes: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$500(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 476
    return-void
.end method

.method public isInactive()Z
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 3

    .line 521
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->hasMediaSource()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    # invokes: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->releaseChildSource(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$700(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;)V

    .line 524
    :cond_d
    return-void
.end method

.method public releaseMediaPeriod(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;)V
    .registers 3
    .param p1, "maskingMediaPeriod"    # Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 517
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->releasePeriod()V

    .line 518
    return-void
.end method
