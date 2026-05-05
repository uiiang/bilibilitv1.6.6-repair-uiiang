.class public final Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "ServerSideAdInsertionMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;,
        Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;,
        Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;,
        Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;,
        Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final adPlaybackStateUpdater:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;

.field private adPlaybackStates:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field private final drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

.field private final mediaPeriods:Lcom/google/common/collect/ListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ListMultimap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private final mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private playbackHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;)V
    .registers 5
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "adPlaybackStateUpdater"    # Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;

    .line 133
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 135
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStateUpdater:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;

    .line 136
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    .line 137
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 139
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 140
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .registers 4
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 86
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodEndPositionUs(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;
    .registers 4
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p2, "x2"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 86
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v0

    return-object v0
.end method

.method private static correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;
    .registers 14
    .param p0, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    .param p1, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p2, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 598
    new-instance v10, Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->dataType:I

    iget v2, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v4, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionReason:I

    iget-object v5, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaStartTimeMs:J

    .line 604
    invoke-static {v6, v7, p0, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadDataPositionMs(JLcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v6

    iget-wide v8, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaEndTimeMs:J

    .line 606
    invoke-static {v8, v9, p0, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadDataPositionMs(JLcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v8

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 598
    return-object v10
.end method

.method private static correctMediaLoadDataPositionMs(JLcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .registers 11
    .param p0, "mediaPositionMs"    # J
    .param p2, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    .param p3, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 611
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_a

    .line 612
    return-wide v0

    .line 614
    :cond_a
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    .line 615
    .local v0, "mediaPositionUs":J
    iget-object v2, p2, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 617
    .local v2, "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 618
    iget v3, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-static {v0, v1, v3, v4, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForAd(JIILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v3

    goto :goto_24

    .line 622
    :cond_1f
    const/4 v3, -0x1

    invoke-static {v0, v1, v3, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v3

    :goto_24
    nop

    .line 624
    .local v3, "correctedPositionUs":J
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v5

    return-wide v5
.end method

.method private static getMediaPeriodEndPositionUs(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .registers 11
    .param p0, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    .param p1, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 584
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 585
    .local v0, "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1e

    .line 586
    iget v1, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v1

    .line 587
    .local v1, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget v3, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ne v3, v2, :cond_16

    const-wide/16 v2, 0x0

    goto :goto_1d

    :cond_16
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    iget v3, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    aget-wide v3, v2, v3

    move-wide v2, v3

    :goto_1d
    return-wide v2

    .line 589
    .end local v1    # "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    :cond_1e
    iget v1, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const-wide v3, 0x7fffffffffffffffL

    if-ne v1, v2, :cond_28

    .line 590
    return-wide v3

    .line 592
    :cond_28
    iget v1, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v1

    .line 593
    .local v1, "nextAdGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v2, v5, v7

    if-nez v2, :cond_37

    goto :goto_39

    :cond_37
    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    :goto_39
    return-wide v3
.end method

.method private getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    .registers 9
    .param p1, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p3, "useLoadingPeriod"    # Z

    .line 559
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 560
    return-object v0

    .line 562
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    new-instance v2, Landroid/util/Pair;

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 563
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 564
    .local v1, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 565
    return-object v0

    .line 567
    :cond_1e
    if-eqz p3, :cond_3c

    .line 568
    invoke-static {v1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 569
    .local v0, "loadingPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;
    # getter for: Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->loadingPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$100(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 570
    # getter for: Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->loadingPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$100(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v2

    goto :goto_3b

    .line 571
    :cond_31
    # getter for: Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$200(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 569
    :goto_3b
    return-object v2

    .line 573
    .end local v0    # "loadingPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;
    :cond_3c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_53

    .line 574
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaLoadData;)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v2

    .line 575
    .local v2, "period":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    if-eqz v2, :cond_50

    .line 576
    return-object v2

    .line 573
    .end local v2    # "period":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 579
    .end local v0    # "i":I
    :cond_53
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$200(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    return-object v0
.end method

.method private releaseLastUsedMediaPeriod()V
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    if-eqz v0, :cond_c

    .line 549
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->release(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 552
    :cond_c
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 20
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 274
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    const/4 v4, 0x0

    .line 275
    .local v4, "sharedPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;
    new-instance v5, Landroid/util/Pair;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    .local v5, "sharedMediaPeriodKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 277
    .local v6, "reusedSharedPeriod":Z
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    const/4 v8, 0x0

    if-eqz v7, :cond_37

    .line 278
    # getter for: Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->periodUid:Ljava/lang/Object;
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$000(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/lang/Object;

    move-result-object v7

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 279
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 280
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    invoke-interface {v7, v5, v4}, Lcom/google/common/collect/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    const/4 v6, 0x1

    goto :goto_35

    .line 283
    :cond_2e
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->release(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 285
    :goto_35
    iput-object v8, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 287
    :cond_37
    if-nez v4, :cond_84

    .line 289
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    .line 290
    invoke-interface {v7, v5}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 291
    .local v7, "lastExistingPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;
    if-eqz v7, :cond_51

    .line 292
    invoke-virtual {v7, v1, v2, v3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->canReuseMediaPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 293
    move-object v4, v7

    move-object/from16 v2, p2

    goto :goto_86

    .line 295
    :cond_51
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 296
    .local v8, "adPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    invoke-static {v2, v3, v1, v8}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUs(JLcom/google/android/exoplayer2/source/MediaPeriodId;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v9

    .line 297
    .local v9, "streamPositionUs":J
    new-instance v11, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    new-instance v13, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v14, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 299
    move-object/from16 v2, p2

    invoke-interface {v12, v13, v2, v9, v10}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v3

    iget-object v12, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {v11, v3, v12, v8}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    move-object v4, v11

    .line 305
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    invoke-interface {v3, v5, v4}, Lcom/google/common/collect/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_86

    .line 287
    .end local v7    # "lastExistingPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;
    .end local v8    # "adPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .end local v9    # "streamPositionUs":J
    :cond_84
    move-object/from16 v2, p2

    .line 308
    :goto_86
    new-instance v3, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 310
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v7

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v8

    invoke-direct {v3, v4, v1, v7, v8}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;-><init>(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 311
    .local v3, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->add(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)V

    .line 312
    if-eqz v6, :cond_a3

    iget-object v7, v4, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v7, v7

    if-lez v7, :cond_a3

    .line 313
    move-wide/from16 v7, p3

    invoke-virtual {v3, v7, v8}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->seekToUs(J)J

    goto :goto_a5

    .line 312
    :cond_a3
    move-wide/from16 v7, p3

    .line 315
    :goto_a5
    return-object v3
.end method

.method protected disableInternal()V
    .registers 2

    .line 248
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->releaseLastUsedMediaPeriod()V

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 250
    return-void
.end method

.method protected enableInternal()V
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->enable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 244
    return-void
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$setAdPlaybackStates$0$com-google-android-exoplayer2-source-ads-ServerSideAdInsertionMediaSource(Lcom/google/common/collect/ImmutableMap;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 6
    .param p1, "adPlaybackStates"    # Lcom/google/common/collect/ImmutableMap;
    .param p2, "contentTimeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/ListMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 199
    .local v1, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;
    # getter for: Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->periodUid:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$000(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 200
    .local v2, "adPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    if-eqz v2, :cond_25

    .line 201
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->updateAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    .line 203
    .end local v1    # "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;
    .end local v2    # "adPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    :cond_25
    goto :goto_a

    .line 204
    :cond_26
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    if-eqz v0, :cond_3c

    .line 206
    nop

    .line 207
    # getter for: Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->periodUid:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$000(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 208
    .local v0, "adPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    if-eqz v0, :cond_3c

    .line 209
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->updateAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    .line 212
    .end local v0    # "adPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    :cond_3c
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    .line 213
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;

    invoke-direct {v0, p2, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/common/collect/ImmutableMap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 215
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 239
    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 8
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 533
    nop

    .line 534
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 535
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_e

    .line 536
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_2e

    .line 538
    :cond_e
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v1, v0, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->onDownstreamFormatChanged(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 539
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 543
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 540
    invoke-static {v0, p3, v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v2

    .line 539
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 545
    :goto_2e
    return-void
.end method

.method public onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 5
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 354
    nop

    .line 355
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 357
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_f

    .line 358
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    goto :goto_14

    .line 360
    :cond_f
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    .line 362
    :goto_14
    return-void
.end method

.method public onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 5
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 394
    nop

    .line 395
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 397
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_f

    .line 398
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    goto :goto_14

    .line 400
    :cond_f
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    .line 402
    :goto_14
    return-void
.end method

.method public onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 5
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 381
    nop

    .line 382
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 384
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_f

    .line 385
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    goto :goto_14

    .line 387
    :cond_f
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    .line 389
    :goto_14
    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .registers 6
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "state"    # I

    .line 341
    nop

    .line 342
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 344
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_f

    .line 345
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    goto :goto_14

    .line 347
    :cond_f
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    .line 349
    :goto_14
    return-void
.end method

.method public onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .registers 6
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "error"    # Ljava/lang/Exception;

    .line 368
    nop

    .line 369
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 371
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_f

    .line 372
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    goto :goto_14

    .line 374
    :cond_f
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    .line 376
    :goto_14
    return-void
.end method

.method public onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 5
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 407
    nop

    .line 408
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 410
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_f

    .line 411
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    goto :goto_14

    .line 413
    :cond_f
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    .line 415
    :goto_14
    return-void
.end method

.method public onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 9
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 468
    nop

    .line 469
    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 470
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_e

    .line 471
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_2e

    .line 473
    :cond_e
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->onLoadFinished(Lcom/google/android/exoplayer2/source/LoadEventInfo;)V

    .line 474
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 479
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 476
    invoke-static {v0, p4, v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v2

    .line 474
    invoke-virtual {v1, p3, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 481
    :goto_2e
    return-void
.end method

.method public onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 9
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 446
    nop

    .line 447
    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 448
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_e

    .line 449
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_2e

    .line 451
    :cond_e
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->onLoadFinished(Lcom/google/android/exoplayer2/source/LoadEventInfo;)V

    .line 452
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 457
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 454
    invoke-static {v0, p4, v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v2

    .line 452
    invoke-virtual {v1, p3, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 459
    :goto_2e
    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 11
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 492
    nop

    .line 493
    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 494
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_e

    .line 495
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    goto :goto_30

    .line 498
    :cond_e
    if-eqz p6, :cond_15

    .line 499
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->onLoadFinished(Lcom/google/android/exoplayer2/source/LoadEventInfo;)V

    .line 501
    :cond_15
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 506
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 503
    invoke-static {v0, p4, v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v2

    .line 501
    invoke-virtual {v1, p3, v2, p5, p6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 510
    :goto_30
    return-void
.end method

.method public onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 9
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 424
    nop

    .line 425
    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 426
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_e

    .line 427
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_2e

    .line 429
    :cond_e
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v1, p3, p4}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->onLoadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 430
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 435
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 432
    invoke-static {v0, p4, v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v2

    .line 430
    invoke-virtual {v1, p3, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 437
    :goto_2e
    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 5
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStateUpdater:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;

    if-eqz v0, :cond_a

    .line 255
    invoke-interface {v0, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;->onAdPlaybackStateUpdateRequested(Lcom/google/android/exoplayer2/Timeline;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    .line 256
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 257
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, p2, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/common/collect/ImmutableMap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 259
    :cond_1c
    return-void
.end method

.method public onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 8
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 516
    nop

    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v0

    .line 518
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    if-nez v0, :cond_e

    .line 519
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_29

    .line 521
    :cond_e
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 525
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 522
    invoke-static {v0, p3, v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v2

    .line 521
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 527
    :goto_29
    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 5
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 227
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v0

    .line 228
    .local v0, "handler":Landroid/os/Handler;
    monitor-enter p0

    .line 229
    :try_start_5
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->playbackHandler:Landroid/os/Handler;

    .line 230
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1c

    .line 231
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v1, v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 232
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v1, v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->addDrmEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 233
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v2

    invoke-interface {v1, p0, p1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 234
    return-void

    .line 230
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 7
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 320
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 321
    .local v0, "mediaPeriodImpl":Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->remove(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)V

    .line 322
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->isUnused()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 323
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 325
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 323
    invoke-interface {v1, v2, v3}, Lcom/google/common/collect/ListMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 328
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    invoke-interface {v1}, Lcom/google/common/collect/ListMultimap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 330
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    goto :goto_3c

    .line 332
    :cond_35
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->release(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 335
    :cond_3c
    :goto_3c
    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 2

    .line 263
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->releaseLastUsedMediaPeriod()V

    .line 264
    monitor-enter p0

    .line 265
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->playbackHandler:Landroid/os/Handler;

    .line 266
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_18

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->removeDrmEventListener(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 270
    return-void

    .line 266
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public setAdPlaybackStates(Lcom/google/common/collect/ImmutableMap;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 22
    .param p2, "contentTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;",
            ">;",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")V"
        }
    .end annotation

    .line 160
    .local p1, "adPlaybackStates":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 162
    .local v5, "adsId":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 163
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 164
    .local v7, "periodUid":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 165
    .local v8, "adPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    iget-object v9, v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v5, v9}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 166
    iget-object v9, v1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v9, v7}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 167
    .local v9, "oldAdPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    if-eqz v9, :cond_d2

    .line 168
    iget v10, v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .line 169
    .local v10, "adGroupIndex":I
    :goto_55
    iget v11, v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v10, v11, :cond_cc

    .line 171
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v11

    .line 172
    .local v11, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-boolean v12, v11, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 173
    iget v12, v9, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v10, v12, :cond_a8

    .line 174
    invoke-static {v8, v10}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v12

    .line 175
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v13

    if-ge v12, v13, :cond_a2

    .line 177
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v8, v12}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v12

    .line 178
    .local v12, "nextAdGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    iget-wide v13, v11, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-wide v3, v12, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v13, v3

    .line 180
    .local v13, "sumOfSplitContentResumeOffsetUs":J
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 181
    .local v3, "oldAdGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    move-object v15, v5

    .end local v5    # "adsId":Ljava/lang/Object;
    .local v15, "adsId":Ljava/lang/Object;
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    cmp-long v16, v13, v4

    if-nez v16, :cond_88

    const/4 v4, 0x1

    goto :goto_89

    :cond_88
    const/4 v4, 0x0

    :goto_89
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 182
    iget-wide v4, v11, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .end local v7    # "periodUid":Ljava/lang/Object;
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .local v17, "periodUid":Ljava/lang/Object;
    iget-wide v6, v11, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v4, v6

    iget-wide v6, v12, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v18, v4, v6

    if-nez v18, :cond_9d

    const/4 v4, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v4, 0x0

    :goto_9e
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    goto :goto_ad

    .line 175
    .end local v3    # "oldAdGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .end local v12    # "nextAdGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .end local v13    # "sumOfSplitContentResumeOffsetUs":J
    .end local v15    # "adsId":Ljava/lang/Object;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .end local v17    # "periodUid":Ljava/lang/Object;
    .restart local v5    # "adsId":Ljava/lang/Object;
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .restart local v7    # "periodUid":Ljava/lang/Object;
    :cond_a2
    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .end local v5    # "adsId":Ljava/lang/Object;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .end local v7    # "periodUid":Ljava/lang/Object;
    .restart local v15    # "adsId":Ljava/lang/Object;
    .restart local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .restart local v17    # "periodUid":Ljava/lang/Object;
    goto :goto_ad

    .line 173
    .end local v15    # "adsId":Ljava/lang/Object;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .end local v17    # "periodUid":Ljava/lang/Object;
    .restart local v5    # "adsId":Ljava/lang/Object;
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .restart local v7    # "periodUid":Ljava/lang/Object;
    :cond_a8
    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .line 184
    .end local v5    # "adsId":Ljava/lang/Object;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .end local v7    # "periodUid":Ljava/lang/Object;
    .restart local v15    # "adsId":Ljava/lang/Object;
    .restart local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .restart local v17    # "periodUid":Ljava/lang/Object;
    :goto_ad
    iget-wide v3, v11, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_c2

    .line 185
    nop

    .line 186
    invoke-static {v8, v10}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v3

    if-nez v3, :cond_be

    const/4 v3, 0x1

    goto :goto_bf

    :cond_be
    const/4 v3, 0x0

    .line 185
    :goto_bf
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 170
    .end local v11    # "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    :cond_c2
    add-int/lit8 v10, v10, 0x1

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_55

    .line 169
    .end local v15    # "adsId":Ljava/lang/Object;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .end local v17    # "periodUid":Ljava/lang/Object;
    .restart local v5    # "adsId":Ljava/lang/Object;
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .restart local v7    # "periodUid":Ljava/lang/Object;
    :cond_cc
    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .end local v5    # "adsId":Ljava/lang/Object;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .end local v7    # "periodUid":Ljava/lang/Object;
    .restart local v15    # "adsId":Ljava/lang/Object;
    .restart local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .restart local v17    # "periodUid":Ljava/lang/Object;
    goto :goto_d7

    .line 167
    .end local v10    # "adGroupIndex":I
    .end local v15    # "adsId":Ljava/lang/Object;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .end local v17    # "periodUid":Ljava/lang/Object;
    .restart local v5    # "adsId":Ljava/lang/Object;
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .restart local v7    # "periodUid":Ljava/lang/Object;
    :cond_d2
    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .line 190
    .end local v5    # "adsId":Ljava/lang/Object;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;>;"
    .end local v7    # "periodUid":Ljava/lang/Object;
    .end local v8    # "adPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .end local v9    # "oldAdPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .restart local v15    # "adsId":Ljava/lang/Object;
    :goto_d7
    move-object v5, v15

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_2a

    .line 191
    .end local v15    # "adsId":Ljava/lang/Object;
    .restart local v5    # "adsId":Ljava/lang/Object;
    :cond_dc
    move-object v15, v5

    .end local v5    # "adsId":Ljava/lang/Object;
    .restart local v15    # "adsId":Ljava/lang/Object;
    monitor-enter p0

    .line 192
    :try_start_de
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->playbackHandler:Landroid/os/Handler;

    if-nez v0, :cond_e7

    .line 193
    iput-object v2, v1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    move-object/from16 v4, p2

    goto :goto_f1

    .line 195
    :cond_e7
    new-instance v3, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;
    :try_end_e9
    .catchall {:try_start_de .. :try_end_e9} :catchall_f3

    move-object/from16 v4, p2

    :try_start_eb
    invoke-direct {v3, v1, v2, v4}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;Lcom/google/common/collect/ImmutableMap;Lcom/google/android/exoplayer2/Timeline;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    :goto_f1
    monitor-exit p0

    .line 218
    return-void

    .line 217
    :catchall_f3
    move-exception v0

    move-object/from16 v4, p2

    :goto_f6
    monitor-exit p0
    :try_end_f7
    .catchall {:try_start_eb .. :try_end_f7} :catchall_f8

    throw v0

    :catchall_f8
    move-exception v0

    goto :goto_f6
.end method
