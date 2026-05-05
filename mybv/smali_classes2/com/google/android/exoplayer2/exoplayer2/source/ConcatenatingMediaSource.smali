.class public final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;,
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;,
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$FakeMediaSource;,
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;,
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MSG_ADD:I = 0x0

.field private static final MSG_MOVE:I = 0x2

.field private static final MSG_ON_COMPLETION:I = 0x5

.field private static final MSG_REMOVE:I = 0x1

.field private static final MSG_SET_SHUFFLE_ORDER:I = 0x3

.field private static final MSG_UPDATE_TIMELINE:I = 0x4

.field private static final PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;


# instance fields
.field private final enabledMediaSourceHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final isAtomic:Z

.field private final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourcesPublic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private nextTimelineUpdateOnCompletionActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingOnCompletionActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private playbackThreadHandler:Landroid/os/Handler;

.field private shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

.field private timelineUpdateScheduled:Z

.field private final useLazyPreparation:Z


# direct methods
.method public static synthetic $r8$lambda$JacrSZ3qF-BT98_Hb7oUkRJgk1w(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    .line 68
    return-void
.end method

.method public varargs constructor <init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;[Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 5
    .param p1, "isAtomic"    # Z
    .param p2, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .param p3, "mediaSources"    # [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>(ZZLcom/google/android/exoplayer2/source/ShuffleOrder;[Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 122
    return-void
.end method

.method public varargs constructor <init>(ZZLcom/google/android/exoplayer2/source/ShuffleOrder;[Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 8
    .param p1, "isAtomic"    # Z
    .param p2, "useLazyPreparation"    # Z
    .param p3, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .param p4, "mediaSources"    # [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 139
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 140
    array-length v0, p4

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    aget-object v2, p4, v1

    .line 141
    .local v2, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v2    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 143
    :cond_f
    invoke-interface {p3}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-interface {p3}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, p3

    :goto_1b
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 144
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    .line 150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 151
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->isAtomic:Z

    .line 152
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->useLazyPreparation:Z

    .line 153
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSources(Ljava/util/Collection;)V

    .line 154
    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 5
    .param p1, "isAtomic"    # Z
    .param p2, "mediaSources"    # [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 109
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;[Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 110
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 3
    .param p1, "mediaSources"    # [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>(Z[Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 100
    return-void
.end method

.method static synthetic access$100()Lcom/google/android/exoplayer2/MediaItem;
    .registers 1

    .line 59
    sget-object v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method private addMediaSourceInternal(ILcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;)V
    .registers 7
    .param p1, "newIndex"    # I
    .param p2, "newMediaSourceHolder"    # Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 775
    if-lez p1, :cond_1d

    .line 776
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 777
    .local v0, "previousHolder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 778
    .local v1, "previousTimeline":Lcom/google/android/exoplayer2/Timeline;
    iget v2, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 779
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 778
    invoke-virtual {p2, p1, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->reset(II)V

    .line 780
    .end local v0    # "previousHolder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    .end local v1    # "previousTimeline":Lcom/google/android/exoplayer2/Timeline;
    goto :goto_21

    .line 781
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->reset(II)V

    .line 783
    :goto_21
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 784
    .local v0, "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->correctOffsets(III)V

    .line 785
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 786
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    iget-object v2, p2, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v1, p2, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {p0, p2, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 788
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 789
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 791
    :cond_54
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->disableChildSource(Ljava/lang/Object;)V

    .line 793
    :goto_57
    return-void
.end method

.method private addMediaSourcesInternal(ILjava/util/Collection;)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;)V"
        }
    .end annotation

    .line 769
    .local p2, "mediaSourceHolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 770
    .local v1, "mediaSourceHolder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSourceInternal(ILcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    .line 771
    .end local v1    # "mediaSourceHolder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    move p1, v2

    goto :goto_4

    .line 772
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :cond_17
    return-void
.end method

.method private addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 12
    .param p1, "index"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 574
    .local p2, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-nez p4, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    if-ne v2, v3, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 576
    .local v0, "playbackThreadHandler":Landroid/os/Handler;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 577
    .local v3, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .end local v3    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    goto :goto_19

    .line 579
    :cond_29
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 580
    .local v2, "mediaSourceHolders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 581
    .local v4, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    new-instance v5, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->useLazyPreparation:Z

    invoke-direct {v5, v4, v6}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    .end local v4    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    goto :goto_36

    .line 583
    :cond_4d
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 584
    if-eqz v0, :cond_6b

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 586
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object v3

    .line 587
    .local v3, "callbackAction":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
    new-instance v4, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;

    invoke-direct {v4, p1, v2, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 588
    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 589
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .end local v3    # "callbackAction":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
    goto :goto_73

    .line 590
    :cond_6b
    if-eqz p4, :cond_73

    if-eqz p3, :cond_73

    .line 591
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_74

    .line 590
    :cond_73
    :goto_73
    nop

    .line 593
    :goto_74
    return-void
.end method

.method private correctOffsets(III)V
    .registers 7
    .param p1, "startIndex"    # I
    .param p2, "childIndexUpdate"    # I
    .param p3, "windowOffsetUpdate"    # I

    .line 834
    move v0, p1

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 835
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 836
    .local v1, "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    iget v2, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 837
    iget v2, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v2, p3

    iput v2, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 834
    .end local v1    # "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 839
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method private createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 668
    if-eqz p1, :cond_10

    if-nez p2, :cond_5

    goto :goto_10

    .line 671
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 672
    .local v0, "handlerAndRunnable":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 673
    return-object v0

    .line 669
    .end local v0    # "handlerAndRunnable":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private disableUnusedMediaSources()V
    .registers 4

    .line 855
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 856
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 857
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 858
    .local v1, "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 859
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->disableChildSource(Ljava/lang/Object;)V

    .line 860
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 862
    .end local v1    # "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    :cond_20
    goto :goto_6

    .line 863
    :cond_21
    return-void
.end method

.method private declared-synchronized dispatchOnCompletionActions(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;)V"
        }
    .end annotation

    .local p1, "onCompletionActions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;>;"
    monitor-enter p0

    .line 761
    :try_start_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;

    .line 762
    .local v1, "pendingAction":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;->dispatch()V

    .line 763
    .end local v1    # "pendingAction":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
    goto :goto_5

    .line 764
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 765
    monitor-exit p0

    return-void

    .line 760
    .end local p1    # "onCompletionActions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;>;"
    :catchall_1c
    move-exception p1

    monitor-exit p0

    goto :goto_20

    :goto_1f
    throw p1

    :goto_20
    goto :goto_1f
.end method

.method private enableMediaSource(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;)V
    .registers 3
    .param p1, "mediaSourceHolder"    # Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 850
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 851
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->enableChildSource(Ljava/lang/Object;)V

    .line 852
    return-void
.end method

.method private static getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "periodUid"    # Ljava/lang/Object;

    .line 872
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "periodUid"    # Ljava/lang/Object;

    .line 867
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getPeriodUid(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "holder"    # Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    .param p1, "childPeriodUid"    # Ljava/lang/Object;

    .line 876
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getPlaybackThreadHandlerOnPlaybackThread()Landroid/os/Handler;
    .registers 2

    .line 756
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 680
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_d0

    .line 723
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 719
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 720
    .local v0, "actions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;>;"
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->dispatchOnCompletionActions(Ljava/util/Set;)V

    .line 721
    goto/16 :goto_cf

    .line 716
    .end local v0    # "actions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;>;"
    :pswitch_19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->updateTimelineAndScheduleOnCompletionActions()V

    .line 717
    goto/16 :goto_cf

    .line 710
    :pswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 711
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;

    .line 712
    .local v0, "shuffleOrderMessage":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData<Lcom/google/android/exoplayer2/source/ShuffleOrder;>;"
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 713
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 714
    goto/16 :goto_cf

    .line 703
    .end local v0    # "shuffleOrderMessage":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData<Lcom/google/android/exoplayer2/source/ShuffleOrder;>;"
    :pswitch_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;

    .line 704
    .local v0, "moveMessage":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget v3, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->index:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->index:I

    add-int/2addr v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndRemove(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 705
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 706
    iget v2, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->index:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->moveMediaSourceInternal(II)V

    .line 707
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 708
    goto :goto_cf

    .line 689
    .end local v0    # "moveMessage":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData<Ljava/lang/Integer;>;"
    :pswitch_69
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;

    .line 690
    .local v0, "removeMessage":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData<Ljava/lang/Integer;>;"
    iget v2, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->index:I

    .line 691
    .local v2, "fromIndex":I
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 692
    .local v3, "toIndex":I
    if-nez v2, :cond_8e

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result v4

    if-ne v3, v4, :cond_8e

    .line 693
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    goto :goto_96

    .line 695
    :cond_8e
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v4, v2, v3}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndRemove(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 697
    :goto_96
    add-int/lit8 v4, v3, -0x1

    .local v4, "index":I
    :goto_98
    if-lt v4, v2, :cond_a0

    .line 698
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeMediaSourceInternal(I)V

    .line 697
    add-int/lit8 v4, v4, -0x1

    goto :goto_98

    .line 700
    .end local v4    # "index":I
    :cond_a0
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 701
    goto :goto_cf

    .line 682
    .end local v0    # "removeMessage":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData<Ljava/lang/Integer;>;"
    .end local v2    # "fromIndex":I
    .end local v3    # "toIndex":I
    :pswitch_a6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 683
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;

    .line 684
    .local v0, "addMessage":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData<Ljava/util/Collection<Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;>;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget v3, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->index:I

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 685
    iget v2, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->index:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    .line 686
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 687
    nop

    .line 725
    .end local v0    # "addMessage":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData<Ljava/util/Collection<Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;>;>;"
    :goto_cf
    return v1

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_a6
        :pswitch_69
        :pswitch_33
        :pswitch_1e
        :pswitch_19
        :pswitch_c
    .end packed-switch
.end method

.method private maybeReleaseChildSource(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;)V
    .registers 3
    .param p1, "mediaSourceHolder"    # Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 843
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 844
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 845
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    .line 847
    :cond_14
    return-void
.end method

.method private moveMediaSourceInternal(II)V
    .registers 9
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I

    .line 819
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 820
    .local v0, "startIndex":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 821
    .local v1, "endIndex":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget v2, v2, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 822
    .local v2, "windowOffset":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-interface {v3, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 823
    move v3, v0

    .local v3, "i":I
    :goto_1e
    if-gt v3, v1, :cond_3a

    .line 824
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 825
    .local v4, "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    iput v3, v4, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 826
    iput v2, v4, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 827
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v5

    add-int/2addr v2, v5

    .line 823
    .end local v4    # "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 829
    .end local v3    # "i":I
    :cond_3a
    return-void
.end method

.method private movePublicMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;

    .line 621
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-nez p4, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    if-ne v2, v3, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 622
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 623
    .local v0, "playbackThreadHandler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 624
    if-eqz v0, :cond_38

    .line 626
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object v1

    .line 627
    .local v1, "callbackAction":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
    new-instance v2, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;

    .line 628
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 629
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .end local v1    # "callbackAction":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
    goto :goto_40

    .line 630
    :cond_38
    if-eqz p4, :cond_40

    if-eqz p3, :cond_40

    .line 631
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_41

    .line 630
    :cond_40
    :goto_40
    nop

    .line 633
    :goto_41
    return-void
.end method

.method private removeMediaSourceInternal(I)V
    .registers 6
    .param p1, "index"    # I

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 811
    .local v0, "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 813
    .local v1, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    neg-int v2, v2

    const/4 v3, -0x1

    invoke-direct {p0, p1, v3, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->correctOffsets(III)V

    .line 814
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    .line 815
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->maybeReleaseChildSource(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    .line 816
    return-void
.end method

.method private removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 10
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;

    .line 601
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-nez p4, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    if-ne v2, v3, :cond_f

    const/4 v0, 0x1

    :cond_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 602
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 603
    .local v0, "playbackThreadHandler":Landroid/os/Handler;
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-static {v2, p1, p2}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    .line 604
    if-eqz v0, :cond_30

    .line 606
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object v2

    .line 607
    .local v2, "callbackAction":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
    new-instance v3, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;

    .line 608
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p1, v4, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 609
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .end local v2    # "callbackAction":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
    goto :goto_38

    .line 610
    :cond_30
    if-eqz p4, :cond_38

    if-eqz p3, :cond_38

    .line 611
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_39

    .line 610
    :cond_38
    :goto_38
    nop

    .line 613
    :goto_39
    return-void
.end method

.method private scheduleTimelineUpdate()V
    .registers 2

    .line 729
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 730
    return-void
.end method

.method private scheduleTimelineUpdate(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;)V
    .registers 4
    .param p1, "onCompletionAction"    # Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;

    .line 733
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    if-nez v0, :cond_13

    .line 734
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getPlaybackThreadHandlerOnPlaybackThread()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    .line 737
    :cond_13
    if-eqz p1, :cond_1a

    .line 738
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_1a
    return-void
.end method

.method private setPublicShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onCompletionAction"    # Ljava/lang/Runnable;

    .line 638
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-nez p3, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    if-ne v2, v3, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 639
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 640
    .local v0, "playbackThreadHandler":Landroid/os/Handler;
    if-eqz v0, :cond_3c

    .line 641
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v2

    .line 642
    .local v2, "size":I
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result v3

    if-eq v3, v2, :cond_2a

    .line 643
    nop

    .line 645
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v3

    .line 646
    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    .line 649
    :cond_2a
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object v3

    .line 650
    .local v3, "callbackAction":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
    new-instance v4, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;

    invoke-direct {v4, v1, p1, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 651
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 654
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 655
    .end local v2    # "size":I
    .end local v3    # "callbackAction":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
    goto :goto_52

    .line 656
    :cond_3c
    nop

    .line 657
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result v1

    if-lez v1, :cond_48

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v1

    goto :goto_49

    :cond_48
    move-object v1, p1

    :goto_49
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 658
    if-eqz p3, :cond_52

    if-eqz p2, :cond_52

    .line 659
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 662
    :cond_52
    :goto_52
    return-void
.end method

.method private updateMediaSourceInternal(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 7
    .param p1, "mediaSourceHolder"    # Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 796
    iget v0, p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 797
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget v1, p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 798
    .local v0, "nextHolder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    nop

    .line 799
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    iget v2, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 801
    .local v1, "windowOffsetUpdate":I
    if-eqz v1, :cond_2d

    .line 802
    iget v2, p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->correctOffsets(III)V

    .line 806
    .end local v0    # "nextHolder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    .end local v1    # "windowOffsetUpdate":I
    :cond_2d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->scheduleTimelineUpdate()V

    .line 807
    return-void
.end method

.method private updateTimelineAndScheduleOnCompletionActions()V
    .registers 6

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    .line 744
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 745
    .local v0, "onCompletionActions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 746
    new-instance v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->isAtomic:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;Z)V

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 747
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getPlaybackThreadHandlerOnPlaybackThread()Landroid/os/Handler;

    move-result-object v1

    .line 748
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 749
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 750
    return-void
.end method


# virtual methods
.method public declared-synchronized addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    monitor-enter p0

    .line 203
    nop

    .line 205
    :try_start_2
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 203
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 208
    monitor-exit p0

    return-void

    .line 202
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    .end local p2    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 222
    nop

    .line 223
    :try_start_2
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 222
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 224
    monitor-exit p0

    return-void

    .line 221
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    .end local p2    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 3
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    monitor-enter p0

    .line 179
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 180
    monitor-exit p0

    return-void

    .line 178
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 193
    monitor-exit p0

    return-void

    .line 191
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(ILjava/util/Collection;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .local p2, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    monitor-enter p0

    .line 264
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 265
    monitor-exit p0

    return-void

    .line 263
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    .end local p2    # "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "index"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .local p2, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    monitor-enter p0

    .line 283
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 284
    monitor-exit p0

    return-void

    .line 282
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    .end local p2    # "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .local p1, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    monitor-enter p0

    .line 233
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 234
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 233
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 238
    monitor-exit p0

    return-void

    .line 232
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(Ljava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 5
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onCompletionAction"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .local p1, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    monitor-enter p0

    .line 252
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 253
    monitor-exit p0

    return-void

    .line 251
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 3

    monitor-enter p0

    .line 401
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeMediaSourceRange(II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 402
    monitor-exit p0

    return-void

    .line 400
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 412
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeMediaSourceRange(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 413
    monitor-exit p0

    return-void

    .line 411
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 11
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 483
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 484
    .local v0, "mediaSourceHolderUid":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    .line 485
    .local v1, "childMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 486
    .local v2, "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    if-nez v2, :cond_30

    .line 488
    new-instance v3, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    new-instance v4, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$FakeMediaSource;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$FakeMediaSource;-><init>(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;)V

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->useLazyPreparation:Z

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    move-object v2, v3

    .line 489
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    .line 490
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 492
    :cond_30
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->enableMediaSource(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    .line 493
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 495
    invoke-virtual {v3, v1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    move-result-object v3

    .line 496
    .local v3, "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->disableUnusedMediaSources()V

    .line 498
    return-object v3
.end method

.method protected disableInternal()V
    .registers 2

    .line 515
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->disableInternal()V

    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 517
    return-void
.end method

.method protected enableInternal()V
    .registers 1

    .line 479
    return-void
.end method

.method public declared-synchronized getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 5

    monitor-enter p0

    .line 159
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_21

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 161
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 163
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 162
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v0

    goto :goto_23

    .line 164
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    :goto_23
    nop

    .line 165
    .local v0, "shuffleOrder":Lcom/google/android/exoplayer2/source/ShuffleOrder;
    new-instance v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->isAtomic:Z

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;Z)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v1

    .line 158
    .end local v0    # "shuffleOrder":Lcom/google/android/exoplayer2/source/ShuffleOrder;
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 2

    .line 458
    sget-object v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 9
    .param p1, "mediaSourceHolder"    # Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 547
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 550
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v3, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_24

    .line 552
    iget-object v1, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getPeriodUid(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 553
    .local v1, "periodUid":Ljava/lang/Object;
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    return-object v2

    .line 547
    .end local v1    # "periodUid":Ljava/lang/Object;
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 556
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 3

    .line 58
    check-cast p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 427
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 427
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSize()I
    .registers 2

    monitor-enter p0

    .line 417
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 417
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getWindowIndexForChildWindowIndex(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;I)I
    .registers 4
    .param p1, "mediaSourceHolder"    # Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    .param p2, "windowIndex"    # I

    .line 563
    iget v0, p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v0, p2

    return v0
.end method

.method protected bridge synthetic getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .registers 3

    .line 58
    check-cast p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getWindowIndexForChildWindowIndex(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;I)I

    move-result p1

    return p1
.end method

.method public isSingleWindow()Z
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized moveMediaSource(II)V
    .registers 4
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I

    monitor-enter p0

    .line 378
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->movePublicMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 380
    monitor-exit p0

    return-void

    .line 377
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "currentIndex":I
    .end local p2    # "newIndex":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized moveMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 396
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->movePublicMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 397
    monitor-exit p0

    return-void

    .line 395
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "currentIndex":I
    .end local p2    # "newIndex":I
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4
    .param p1, "mediaSourceHolder"    # Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p3, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 539
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->updateMediaSourceInternal(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/Timeline;)V

    .line 540
    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4

    .line 58
    check-cast p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected declared-synchronized prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 5
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    monitor-enter p0

    .line 464
    :try_start_1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 465
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 467
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->updateTimelineAndScheduleOnCompletionActions()V

    goto :goto_33

    .line 469
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    :cond_1c
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 470
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    .line 471
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->scheduleTimelineUpdate()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 473
    :goto_33
    monitor-exit p0

    return-void

    .line 463
    .end local p1    # "mediaTransferListener":Lcom/google/android/exoplayer2/upstream/TransferListener;
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 5
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 503
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 504
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 505
    .local v0, "holder":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 506
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 507
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 508
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->disableUnusedMediaSources()V

    .line 510
    :cond_28
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->maybeReleaseChildSource(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    .line 511
    return-void
.end method

.method protected declared-synchronized releaseSourceInternal()V
    .registers 3

    monitor-enter p0

    .line 521
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 523
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 524
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 526
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_25

    .line 527
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 528
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 530
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 532
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->dispatchOnCompletionActions(Ljava/util/Set;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 533
    monitor-exit p0

    return-void

    .line 520
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 5
    .param p1, "index"    # I

    monitor-enter p0

    .line 300
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 301
    .local v0, "removedMediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 302
    monitor-exit p0

    return-object v0

    .line 299
    .end local v0    # "removedMediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMediaSource(ILandroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 6
    .param p1, "index"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 323
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 324
    .local v0, "removedMediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 325
    monitor-exit p0

    return-object v0

    .line 322
    .end local v0    # "removedMediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMediaSourceRange(II)V
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    monitor-enter p0

    .line 343
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 345
    monitor-exit p0

    return-void

    .line 342
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMediaSourceRange(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 366
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 367
    monitor-exit p0

    return-void

    .line 365
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 3
    .param p1, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    monitor-enter p0

    .line 436
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->setPublicShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 437
    monitor-exit p0

    return-void

    .line 435
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "shuffleOrder":Lcom/google/android/exoplayer2/source/ShuffleOrder;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 449
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->setPublicShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 450
    monitor-exit p0

    return-void

    .line 448
    .end local p0    # "this":Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .end local p1    # "shuffleOrder":Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method
