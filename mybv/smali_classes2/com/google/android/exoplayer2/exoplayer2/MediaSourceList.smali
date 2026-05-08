.class final Lcom/google/android/exoplayer2/MediaSourceList;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;,
        Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;,
        Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;,
        Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSourceList"


# instance fields
.field private final childSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;",
            ">;"
        }
    .end annotation
.end field

.field private final enabledMediaSourceHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private final eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field private isPrepared:Z

.field private final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceListInfoListener:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

.field private shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/util/HandlerWrapper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 7
    .param p1, "listener"    # Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;
    .param p2, "analyticsCollector"    # Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .param p3, "analyticsCollectorHandler"    # Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .param p4, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaSourceList;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 115
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceListInfoListener:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;

    .line 116
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 117
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    .line 120
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 121
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaSourceList;

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->eventHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 68
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;I)I
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    .param p1, "x1"    # I

    .line 68
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->getWindowIndexForChildWindowIndex(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaSourceList;

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->eventListener:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object v0
.end method

.method private correctOffsets(II)V
    .registers 6
    .param p1, "startIndex"    # I
    .param p2, "windowOffsetUpdate"    # I

    .line 421
    move v0, p1

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 422
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 423
    .local v1, "mediaSourceHolder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    iget v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 421
    .end local v1    # "mediaSourceHolder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 425
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method private disableChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .registers 5
    .param p1, "holder"    # Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    .line 401
    .local v0, "disabledChild":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;
    if-eqz v0, :cond_11

    .line 402
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 404
    :cond_11
    return-void
.end method

.method private disableUnusedMediaSources()V
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 390
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 392
    .local v1, "holder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 393
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/MediaSourceList;->disableChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 394
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 396
    .end local v1    # "holder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    :cond_20
    goto :goto_6

    .line 397
    :cond_21
    return-void
.end method

.method private enableMediaSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .registers 5
    .param p1, "mediaSourceHolder"    # Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    .line 383
    .local v0, "enabledChild":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;
    if-eqz v0, :cond_16

    .line 384
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->enable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 386
    :cond_16
    return-void
.end method

.method private static getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "periodUid"    # Ljava/lang/Object;

    .line 478
    invoke-static {p0}, Lcom/google/android/exoplayer2/PlaylistTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 8
    .param p0, "mediaSourceHolder"    # Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    .param p1, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 435
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_24

    .line 437
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/MediaSourceList;->getPeriodUid(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 438
    .local v1, "periodUid":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    return-object v2

    .line 432
    .end local v1    # "periodUid":Ljava/lang/Object;
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 441
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "periodUid"    # Ljava/lang/Object;

    .line 473
    invoke-static {p0}, Lcom/google/android/exoplayer2/PlaylistTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getPeriodUid(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "holder"    # Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    .param p1, "childPeriodUid"    # Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/PlaylistTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getWindowIndexForChildWindowIndex(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;I)I
    .registers 3
    .param p0, "mediaSourceHolder"    # Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    .param p1, "windowIndex"    # I

    .line 446
    iget v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v0, p1

    return v0
.end method

.method private maybeReleaseChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .registers 5
    .param p1, "mediaSourceHolder"    # Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 462
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 463
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    .line 464
    .local v0, "removedChild":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 465
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 466
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->removeDrmEventListener(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 467
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 469
    .end local v0    # "removedChild":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;
    :cond_34
    return-void
.end method

.method private prepareChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .registers 7
    .param p1, "holder"    # Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 450
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 451
    .local v0, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    new-instance v1, Lcom/google/android/exoplayer2/MediaSourceList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/MediaSourceList$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/MediaSourceList;)V

    .line 453
    .local v1, "caller":Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;-><init>(Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 454
    .local v2, "eventListener":Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 456
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->addDrmEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 457
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaSourceList;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-interface {v0, v1, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 458
    return-void
.end method

.method private removeMediaSourcesInternal(II)V
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 407
    add-int/lit8 v0, p2, -0x1

    .local v0, "index":I
    :goto_2
    if-lt v0, p1, :cond_2f

    .line 408
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 409
    .local v1, "holder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    .line 411
    .local v2, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    nop

    .line 412
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    neg-int v3, v3

    .line 411
    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/MediaSourceList;->correctOffsets(II)V

    .line 413
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    .line 414
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    if-eqz v3, :cond_2c

    .line 415
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/MediaSourceList;->maybeReleaseChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 407
    .end local v1    # "holder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    .end local v2    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 418
    .end local v0    # "index":I
    :cond_2f
    return-void
.end method


# virtual methods
.method public addMediaSources(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;
    .registers 10
    .param p1, "index"    # I
    .param p3, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")",
            "Lcom/google/android/exoplayer2/Timeline;"
        }
    .end annotation

    .line 149
    .local p2, "holders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 150
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 151
    move v0, p1

    .local v0, "insertionIndex":I
    :goto_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_6e

    .line 152
    sub-int v1, v0, p1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 153
    .local v1, "holder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    if-lez v0, :cond_35

    .line 154
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 155
    .local v2, "previousHolder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    .line 156
    .local v3, "previousTimeline":Lcom/google/android/exoplayer2/Timeline;
    iget v4, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 158
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v5

    add-int/2addr v4, v5

    .line 156
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->reset(I)V

    .line 159
    .end local v2    # "previousHolder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    .end local v3    # "previousTimeline":Lcom/google/android/exoplayer2/Timeline;
    goto :goto_39

    .line 160
    :cond_35
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->reset(I)V

    .line 162
    :goto_39
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    .line 163
    .local v2, "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    nop

    .line 165
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    .line 163
    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/MediaSourceList;->correctOffsets(II)V

    .line 166
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 167
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    if-eqz v3, :cond_6b

    .line 169
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/MediaSourceList;->prepareChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 170
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 171
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 173
    :cond_68
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/MediaSourceList;->disableChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 151
    .end local v1    # "holder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    .end local v2    # "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_6b
    :goto_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 178
    .end local v0    # "insertionIndex":I
    :cond_6e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->createTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public clear(Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;
    .registers 4
    .param p1, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 260
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->getSize()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/MediaSourceList;->removeMediaSourcesInternal(II)V

    .line 262
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->createTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 10
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 314
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 315
    .local v0, "mediaSourceHolderUid":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 316
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaSourceList;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    .line 317
    .local v1, "childMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 318
    .local v2, "holder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/MediaSourceList;->enableMediaSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 319
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 321
    invoke-virtual {v3, v1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    move-result-object v3

    .line 322
    .local v3, "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->disableUnusedMediaSources()V

    .line 324
    return-object v3
.end method

.method public createTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 5

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 362
    sget-object v0, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    return-object v0

    .line 364
    :cond_b
    const/4 v0, 0x0

    .line 365
    .local v0, "windowOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 366
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 367
    .local v2, "mediaSourceHolder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    iput v0, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 368
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 365
    .end local v2    # "mediaSourceHolder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 370
    .end local v1    # "i":I
    :cond_2d
    new-instance v1, Lcom/google/android/exoplayer2/PlaylistTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/PlaylistTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-object v1
.end method

.method public getShuffleOrder()Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isPrepared()Z
    .registers 2

    .line 267
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    return v0
.end method

.method synthetic lambda$prepareChildSource$0$com-google-android-exoplayer2-MediaSourceList(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 452
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceListInfoListener:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;->onPlaylistUpdateRequested()V

    return-void
.end method

.method public moveMediaSource(IILcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;
    .registers 5
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 217
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/MediaSourceList;->moveMediaSourceRange(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public moveMediaSourceRange(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;
    .registers 12
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newFromIndex"    # I
    .param p4, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 239
    const/4 v0, 0x1

    if-ltz p1, :cond_f

    if-gt p1, p2, :cond_f

    .line 240
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->getSize()I

    move-result v1

    if-gt p2, v1, :cond_f

    if-ltz p3, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 239
    :goto_10
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 241
    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 242
    if-eq p1, p2, :cond_57

    if-ne p1, p3, :cond_1a

    goto :goto_57

    .line 245
    :cond_1a
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 246
    .local v1, "startIndex":I
    sub-int v2, p2, p1

    add-int/2addr v2, p3

    sub-int/2addr v2, v0

    .line 247
    .local v2, "newEndIndex":I
    add-int/lit8 v0, p2, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 248
    .local v0, "endIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    iget v3, v3, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 249
    .local v3, "windowOffset":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-static {v4, p1, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->moveItems(Ljava/util/List;III)V

    .line 250
    move v4, v1

    .local v4, "i":I
    :goto_38
    if-gt v4, v0, :cond_52

    .line 251
    iget-object v5, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 252
    .local v5, "holder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    iput v3, v5, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 253
    iget-object v6, v5, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v6

    add-int/2addr v3, v6

    .line 250
    .end local v5    # "holder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 255
    .end local v4    # "i":I
    :cond_52
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->createTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    return-object v4

    .line 243
    .end local v0    # "endIndex":I
    .end local v1    # "startIndex":I
    .end local v2    # "newEndIndex":I
    .end local v3    # "windowOffset":I
    :cond_57
    :goto_57
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->createTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 6
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 294
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 295
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 297
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 298
    .local v2, "mediaSourceHolder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/MediaSourceList;->prepareChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 299
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v2    # "mediaSourceHolder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 301
    .end local v0    # "i":I
    :cond_25
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    .line 302
    return-void
.end method

.method public release()V
    .registers 6

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    .line 346
    .local v1, "childSource":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;
    :try_start_16
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 350
    goto :goto_26

    .line 347
    :catch_1e
    move-exception v2

    .line 349
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    invoke-static {v3, v4, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_26
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 352
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->removeDrmEventListener(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 353
    .end local v1    # "childSource":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;
    goto :goto_a

    .line 354
    :cond_35
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    .line 357
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 5
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 334
    .local v0, "holder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 335
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 336
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 337
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->disableUnusedMediaSources()V

    .line 339
    :cond_28
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList;->maybeReleaseChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 340
    return-void
.end method

.method public removeMediaSourceRange(IILcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 198
    if-ltz p1, :cond_c

    if-gt p1, p2, :cond_c

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->getSize()I

    move-result v0

    if-gt p2, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 199
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList;->removeMediaSourcesInternal(II)V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->createTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public setMediaSources(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;
    .registers 5
    .param p2, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")",
            "Lcom/google/android/exoplayer2/Timeline;"
        }
    .end annotation

    .line 134
    .local p1, "holders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/MediaSourceList;->removeMediaSourcesInternal(II)V

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList;->addMediaSources(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;
    .registers 5
    .param p1, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 281
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->getSize()I

    move-result v0

    .line 282
    .local v0, "size":I
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result v1

    if-eq v1, v0, :cond_14

    .line 283
    nop

    .line 285
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v1

    .line 286
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    .line 288
    :cond_14
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 289
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->createTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    return-object v1
.end method
