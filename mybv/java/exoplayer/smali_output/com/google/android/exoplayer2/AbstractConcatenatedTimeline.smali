.class public abstract Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "AbstractConcatenatedTimeline.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final childCount:I

.field private final isAtomic:Z

.field private final shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;


# direct methods
.method public constructor <init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 4
    .param p1, "isAtomic"    # Z
    .param p2, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 78
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 79
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->isAtomic:Z

    .line 80
    iput-object p2, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 81
    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->childCount:I

    .line 82
    return-void
.end method

.method public static getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "concatenatedUid"    # Ljava/lang/Object;

    .line 56
    move-object v0, p0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public static getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "concatenatedUid"    # Ljava/lang/Object;

    .line 45
    move-object v0, p0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public static getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "childTimelineUid"    # Ljava/lang/Object;
    .param p1, "childPeriodOrWindowUid"    # Ljava/lang/Object;

    .line 67
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getNextChildIndex(IZ)I
    .registers 4
    .param p1, "childIndex"    # I
    .param p2, "shuffleModeEnabled"    # Z

    .line 323
    if-eqz p2, :cond_9

    .line 324
    iget-object v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getNextIndex(I)I

    move-result v0

    goto :goto_13

    .line 325
    :cond_9
    iget v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->childCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_12

    add-int/lit8 v0, p1, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, -0x1

    .line 323
    :goto_13
    return v0
.end method

.method private getPreviousChildIndex(IZ)I
    .registers 4
    .param p1, "childIndex"    # I
    .param p2, "shuffleModeEnabled"    # Z

    .line 329
    if-eqz p2, :cond_9

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getPreviousIndex(I)I

    move-result v0

    goto :goto_f

    .line 331
    :cond_9
    if-lez p1, :cond_e

    add-int/lit8 v0, p1, -0x1

    goto :goto_f

    :cond_e
    const/4 v0, -0x1

    .line 329
    :goto_f
    return v0
.end method


# virtual methods
.method protected abstract getChildIndexByChildUid(Ljava/lang/Object;)I
.end method

.method protected abstract getChildIndexByPeriodIndex(I)I
.end method

.method protected abstract getChildIndexByWindowIndex(I)I
.end method

.method protected abstract getChildUidByChildIndex(I)Ljava/lang/Object;
.end method

.method protected abstract getFirstPeriodIndexByChildIndex(I)I
.end method

.method public getFirstWindowIndex(Z)I
    .registers 5
    .param p1, "shuffleModeEnabled"    # Z

    .line 180
    iget v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->childCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 181
    return v1

    .line 183
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->isAtomic:Z

    if-eqz v0, :cond_b

    .line 184
    const/4 p1, 0x0

    .line 187
    :cond_b
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getFirstIndex()I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 188
    .local v0, "firstChildIndex":I
    :cond_15
    :goto_15
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 189
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v0

    .line 190
    if-ne v0, v1, :cond_15

    .line 192
    return v1

    .line 195
    :cond_26
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 196
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 195
    return v1
.end method

.method protected abstract getFirstWindowIndexByChildIndex(I)I
.end method

.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 7
    .param p1, "uid"    # Ljava/lang/Object;

    .line 247
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 248
    return v1

    .line 250
    :cond_6
    invoke-static {p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, "childUid":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 252
    .local v2, "childPeriodUid":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildIndexByChildUid(Ljava/lang/Object;)I

    move-result v3

    .line 253
    .local v3, "childIndex":I
    if-ne v3, v1, :cond_15

    .line 254
    return v1

    .line 256
    :cond_15
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    .line 257
    .local v4, "periodIndexInChild":I
    if-ne v4, v1, :cond_20

    .line 258
    goto :goto_25

    .line 259
    :cond_20
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v1

    add-int/2addr v1, v4

    .line 257
    :goto_25
    return v1
.end method

.method public getLastWindowIndex(Z)I
    .registers 5
    .param p1, "shuffleModeEnabled"    # Z

    .line 159
    iget v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->childCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 160
    return v1

    .line 162
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->isAtomic:Z

    if-eqz v2, :cond_b

    .line 163
    const/4 p1, 0x0

    .line 166
    :cond_b
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLastIndex()I

    move-result v0

    goto :goto_16

    :cond_14
    add-int/lit8 v0, v0, -0x1

    .line 167
    .local v0, "lastChildIndex":I
    :cond_16
    :goto_16
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 168
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v0

    .line 169
    if-ne v0, v1, :cond_16

    .line 171
    return v1

    .line 174
    :cond_27
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 175
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 174
    return v1
.end method

.method public getNextWindowIndex(IIZ)I
    .registers 11
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 87
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_d

    .line 89
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :cond_a
    move v0, p2

    :goto_b
    move p2, v0

    .line 90
    const/4 p3, 0x0

    .line 93
    :cond_d
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 94
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v2

    .line 95
    .local v2, "firstWindowIndexInChild":I
    nop

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    sub-int v4, p1, v2

    .line 99
    if-ne p2, v1, :cond_20

    const/4 v5, 0x0

    goto :goto_21

    :cond_20
    move v5, p2

    .line 97
    :goto_21
    invoke-virtual {v3, v4, v5, p3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v3

    .line 101
    .local v3, "nextWindowIndexInChild":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    .line 102
    add-int v1, v2, v3

    return v1

    .line 105
    :cond_2b
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v5

    .line 106
    .local v5, "nextChildIndex":I
    :goto_2f
    if-eq v5, v4, :cond_40

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 107
    invoke-direct {p0, v5, p3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v5

    goto :goto_2f

    .line 109
    :cond_40
    if-eq v5, v4, :cond_50

    .line 110
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 111
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 110
    return v1

    .line 114
    :cond_50
    if-ne p2, v1, :cond_57

    .line 115
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstWindowIndex(Z)I

    move-result v1

    return v1

    .line 117
    :cond_57
    return v4
.end method

.method public final getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 9
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 231
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 232
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 233
    .local v1, "firstWindowIndexInChild":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    .line 234
    .local v2, "firstPeriodIndexInChild":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    sub-int v4, p1, v2

    .line 235
    invoke-virtual {v3, v4, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 236
    iget v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr v3, v1

    iput v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 237
    if-eqz p3, :cond_2d

    .line 238
    nop

    .line 240
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 239
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 242
    :cond_2d
    return-object p2
.end method

.method public final getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 8
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 219
    invoke-static {p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    .local v0, "childUid":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 221
    .local v1, "childPeriodUid":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildIndexByChildUid(Ljava/lang/Object;)I

    move-result v2

    .line 222
    .local v2, "childIndex":I
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v3

    .line 223
    .local v3, "firstWindowIndexInChild":I
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    invoke-virtual {v4, v1, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 224
    iget v4, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr v4, v3

    iput v4, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 225
    iput-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 226
    return-object p2
.end method

.method public getPreviousWindowIndex(IIZ)I
    .registers 11
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 123
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_d

    .line 125
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :cond_a
    move v0, p2

    :goto_b
    move p2, v0

    .line 126
    const/4 p3, 0x0

    .line 129
    :cond_d
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 130
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v2

    .line 131
    .local v2, "firstWindowIndexInChild":I
    nop

    .line 132
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    sub-int v4, p1, v2

    .line 135
    if-ne p2, v1, :cond_20

    const/4 v5, 0x0

    goto :goto_21

    :cond_20
    move v5, p2

    .line 133
    :goto_21
    invoke-virtual {v3, v4, v5, p3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v3

    .line 137
    .local v3, "previousWindowIndexInChild":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    .line 138
    add-int v1, v2, v3

    return v1

    .line 141
    :cond_2b
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v5

    .line 142
    .local v5, "previousChildIndex":I
    :goto_2f
    if-eq v5, v4, :cond_40

    .line 143
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 144
    invoke-direct {p0, v5, p3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v5

    goto :goto_2f

    .line 146
    :cond_40
    if-eq v5, v4, :cond_50

    .line 147
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 148
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 147
    return v1

    .line 151
    :cond_50
    if-ne p2, v1, :cond_57

    .line 152
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getLastWindowIndex(Z)I

    move-result v1

    return v1

    .line 154
    :cond_57
    return v4
.end method

.method protected abstract getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
.end method

.method public final getUidOfPeriod(I)Ljava/lang/Object;
    .registers 6
    .param p1, "periodIndex"    # I

    .line 264
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 265
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v1

    .line 266
    .local v1, "firstPeriodIndexInChild":I
    nop

    .line 267
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    sub-int v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    .line 268
    .local v2, "periodUidInChild":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public final getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 11
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 201
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 202
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 203
    .local v1, "firstWindowIndexInChild":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    .line 204
    .local v2, "firstPeriodIndexInChild":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    sub-int v4, p1, v1

    .line 205
    invoke-virtual {v3, v4, p2, p3, p4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 206
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object v3

    .line 208
    .local v3, "childUid":Ljava/lang/Object;
    nop

    .line 209
    sget-object v4, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v5, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 210
    move-object v4, v3

    goto :goto_2c

    .line 211
    :cond_26
    iget-object v4, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_2c
    iput-object v4, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 212
    iget v4, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v4, v2

    iput v4, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 213
    iget v4, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v4, v2

    iput v4, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    .line 214
    return-object p2
.end method
