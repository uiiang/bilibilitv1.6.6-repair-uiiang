.class final Lcom/google/android/exoplayer2/PlaylistTimeline;
.super Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;
.source "PlaylistTimeline.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final childIndexByUid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final firstPeriodInChildIndices:[I

.field private final firstWindowInChildIndices:[I

.field private final periodCount:I

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;

.field private final uids:[Ljava/lang/Object;

.field private final windowCount:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 5
    .param p2, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/android/exoplayer2/MediaSourceInfoHolder;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 50
    .local p1, "mediaSourceInfoHolders":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/android/exoplayer2/MediaSourceInfoHolder;>;"
    invoke-static {p1}, Lcom/google/android/exoplayer2/PlaylistTimeline;->getTimelines(Ljava/util/Collection;)[Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/exoplayer2/PlaylistTimeline;->getUids(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/exoplayer2/PlaylistTimeline;-><init>([Lcom/google/android/exoplayer2/Timeline;[Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 51
    return-void
.end method

.method private constructor <init>([Lcom/google/android/exoplayer2/Timeline;[Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 14
    .param p1, "timelines"    # [Lcom/google/android/exoplayer2/Timeline;
    .param p2, "uids"    # [Ljava/lang/Object;
    .param p3, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 55
    array-length v1, p1

    .line 56
    .local v1, "childCount":I
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 57
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    .line 58
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->uids:[Ljava/lang/Object;

    .line 60
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, "index":I
    const/4 v3, 0x0

    .line 63
    .local v3, "windowCount":I
    const/4 v4, 0x0

    .line 64
    .local v4, "periodCount":I
    array-length v5, p1

    :goto_1c
    if-ge v0, v5, :cond_4b

    aget-object v6, p1, v0

    .line 65
    .local v6, "timeline":Lcom/google/android/exoplayer2/Timeline;
    iget-object v7, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aput-object v6, v7, v2

    .line 66
    iget-object v7, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    aput v3, v7, v2

    .line 67
    iget-object v7, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    aput v4, v7, v2

    .line 68
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v7

    add-int/2addr v3, v7

    .line 69
    iget-object v7, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v7

    add-int/2addr v4, v7

    .line 70
    iget-object v7, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    aget-object v8, p2, v2

    add-int/lit8 v9, v2, 0x1

    .end local v2    # "index":I
    .local v9, "index":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v6    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    add-int/lit8 v0, v0, 0x1

    move v2, v9

    goto :goto_1c

    .line 72
    .end local v9    # "index":I
    .restart local v2    # "index":I
    :cond_4b
    iput v3, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->windowCount:I

    .line 73
    iput v4, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->periodCount:I

    .line 74
    return-void
.end method

.method private static getTimelines(Ljava/util/Collection;)[Lcom/google/android/exoplayer2/Timeline;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/android/exoplayer2/MediaSourceInfoHolder;",
            ">;)[",
            "Lcom/google/android/exoplayer2/Timeline;"
        }
    .end annotation

    .line 183
    .local p0, "mediaSourceInfoHolders":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/android/exoplayer2/MediaSourceInfoHolder;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/Timeline;

    .line 184
    .local v0, "timelines":[Lcom/google/android/exoplayer2/Timeline;
    const/4 v1, 0x0

    .line 185
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/MediaSourceInfoHolder;

    .line 186
    .local v3, "holder":Lcom/google/android/exoplayer2/MediaSourceInfoHolder;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-interface {v3}, Lcom/google/android/exoplayer2/MediaSourceInfoHolder;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v5

    aput-object v5, v0, v1

    .line 187
    .end local v3    # "holder":Lcom/google/android/exoplayer2/MediaSourceInfoHolder;
    move v1, v4

    goto :goto_b

    .line 188
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_21
    return-object v0
.end method

.method private static getUids(Ljava/util/Collection;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/android/exoplayer2/MediaSourceInfoHolder;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 173
    .local p0, "mediaSourceInfoHolders":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/android/exoplayer2/MediaSourceInfoHolder;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 174
    .local v0, "uids":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 175
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/MediaSourceInfoHolder;

    .line 176
    .local v3, "holder":Lcom/google/android/exoplayer2/MediaSourceInfoHolder;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-interface {v3}, Lcom/google/android/exoplayer2/MediaSourceInfoHolder;->getUid()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v1

    .line 177
    .end local v3    # "holder":Lcom/google/android/exoplayer2/MediaSourceInfoHolder;
    move v1, v4

    goto :goto_b

    .line 178
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_21
    return-object v0
.end method


# virtual methods
.method public copyWithPlaceholderTimeline(Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/PlaylistTimeline;
    .registers 6
    .param p1, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/Timeline;

    .line 143
    .local v0, "newTimelines":[Lcom/google/android/exoplayer2/Timeline;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    array-length v2, v2

    if-ge v1, v2, :cond_19

    .line 144
    new-instance v2, Lcom/google/android/exoplayer2/PlaylistTimeline$1;

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v3, v3, v1

    invoke-direct {v2, p0, v3}, Lcom/google/android/exoplayer2/PlaylistTimeline$1;-><init>(Lcom/google/android/exoplayer2/PlaylistTimeline;Lcom/google/android/exoplayer2/Timeline;)V

    aput-object v2, v0, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 168
    .end local v1    # "i":I
    :cond_19
    new-instance v1, Lcom/google/android/exoplayer2/PlaylistTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->uids:[Ljava/lang/Object;

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/exoplayer2/PlaylistTimeline;-><init>([Lcom/google/android/exoplayer2/Timeline;[Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-object v1
.end method

.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .registers 4
    .param p1, "childUid"    # Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 94
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_c

    const/4 v1, -0x1

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_10
    return v1
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .registers 5
    .param p1, "periodIndex"    # I

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    return v0
.end method

.method protected getChildIndexByWindowIndex(I)I
    .registers 5
    .param p1, "windowIndex"    # I

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    return v0
.end method

.method getChildTimelines()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Timeline;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .registers 3
    .param p1, "childIndex"    # I

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->uids:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .registers 3
    .param p1, "childIndex"    # I

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .registers 3
    .param p1, "childIndex"    # I

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPeriodCount()I
    .registers 2

    .line 124
    iget v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->periodCount:I

    return v0
.end method

.method protected getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
    .registers 3
    .param p1, "childIndex"    # I

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getWindowCount()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->windowCount:I

    return v0
.end method
