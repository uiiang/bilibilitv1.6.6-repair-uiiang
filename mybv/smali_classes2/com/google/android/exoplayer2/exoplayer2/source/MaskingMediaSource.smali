.class public final Lcom/google/android/exoplayer2/source/MaskingMediaSource;
.super Lcom/google/android/exoplayer2/source/WrappingMediaSource;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;,
        Lcom/google/android/exoplayer2/source/MaskingMediaSource$PlaceholderTimeline;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private hasRealTimeline:Z

.field private hasStartedPreparing:Z

.field private isPrepared:Z

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

.field private unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

.field private final useLazyPreparation:Z

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .registers 6
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "useLazyPreparation"    # Z

    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 65
    const/4 v0, 0x1

    if-eqz p2, :cond_e

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->isSingleWindow()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->useLazyPreparation:Z

    .line 66
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 67
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 68
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 69
    .local v1, "initialTimeline":Lcom/google/android/exoplayer2/Timeline;
    if-eqz v1, :cond_30

    .line 70
    nop

    .line 71
    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->createWithRealTimeline(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 73
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasRealTimeline:Z

    goto :goto_3a

    .line 75
    :cond_30
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->createWithPlaceholderTimeline(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 77
    :goto_3a
    return-void
.end method

.method private getExternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "internalPeriodUid"    # Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 218
    # getter for: Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->access$000(Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 219
    # getter for: Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->access$000(Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 220
    sget-object v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    goto :goto_18

    .line 221
    :cond_17
    move-object v0, p1

    .line 218
    :goto_18
    return-object v0
.end method

.method private getInternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "externalPeriodUid"    # Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 211
    # getter for: Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->access$000(Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    # getter for: Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->access$000(Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18

    .line 214
    :cond_17
    move-object v0, p1

    .line 211
    :goto_18
    return-object v0
.end method

.method private setPreparePositionOverrideToUnpreparedMaskingPeriod(J)V
    .registers 11
    .param p1, "preparePositionOverrideUs"    # J
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "unpreparedMaskingMediaPeriod"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 227
    .local v0, "maskingPeriod":Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 228
    .local v1, "maskingPeriodIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 233
    return-void

    .line 235
    :cond_10
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 236
    .local v2, "periodDurationUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_31

    .line 238
    cmp-long v4, p1, v2

    if-ltz v4, :cond_31

    .line 239
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 242
    :cond_31
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->overridePreparePositionUs(J)V

    .line 243
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
    .registers 7
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 102
    new-instance v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)V

    .line 103
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 104
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->isPrepared:Z

    if-eqz v1, :cond_1c

    .line 105
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getInternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    .line 106
    .local v1, "idInSource":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 107
    .end local v1    # "idInSource":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    goto :goto_28

    .line 111
    :cond_1c
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 112
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasStartedPreparing:Z

    if-nez v1, :cond_28

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasStartedPreparing:Z

    .line 114
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->prepareChildSource()V

    .line 117
    :cond_28
    :goto_28
    return-object v0
.end method

.method public bridge synthetic createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 5

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 3
    .param p1, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 207
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getExternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    return-object v0
.end method

.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1

    .line 97
    return-void
.end method

.method protected onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V
    .registers 13
    .param p1, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 137
    const/4 v6, 0x0

    .line 138
    .local v6, "idForMaskingPeriodPreparation":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->isPrepared:Z

    if-eqz v0, :cond_1b

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->cloneWithUpdatedTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    if-eqz v0, :cond_b6

    .line 142
    nop

    .line 143
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->getPreparePositionOverrideUs()J

    move-result-wide v0

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->setPreparePositionOverrideToUnpreparedMaskingPeriod(J)V

    goto/16 :goto_b6

    .line 145
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 146
    nop

    .line 147
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasRealTimeline:Z

    if-eqz v0, :cond_2d

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->cloneWithUpdatedTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object v0

    goto :goto_35

    .line 149
    :cond_2d
    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->createWithRealTimeline(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object v0

    :goto_35
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    goto/16 :goto_b6

    .line 166
    :cond_39
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v2

    .line 168
    .local v2, "windowStartPositionUs":J
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v7, v0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 169
    .local v7, "windowUid":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    if-eqz v0, :cond_77

    .line 170
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->getPreparePositionUs()J

    move-result-wide v4

    .line 171
    .local v4, "periodPreparePositionUs":J
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    iget-object v8, v8, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v8, v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v8, v9}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v8

    add-long/2addr v8, v4

    .line 173
    .local v8, "windowPreparePositionUs":J
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 174
    invoke-virtual {v0, v1, v10}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v0

    .line 175
    .local v0, "oldWindowDefaultPositionUs":J
    cmp-long v10, v8, v0

    if-eqz v10, :cond_77

    .line 176
    move-wide v2, v8

    goto :goto_78

    .line 179
    .end local v0    # "oldWindowDefaultPositionUs":J
    .end local v4    # "periodPreparePositionUs":J
    .end local v8    # "windowPreparePositionUs":J
    :cond_77
    move-wide v8, v2

    .end local v2    # "windowStartPositionUs":J
    .local v8, "windowStartPositionUs":J
    :goto_78
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v3, 0x0

    .line 180
    move-object v0, p1

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 182
    .local v0, "periodUidAndPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 183
    .local v1, "periodUid":Ljava/lang/Object;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 184
    .local v2, "periodPositionUs":J
    nop

    .line 185
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasRealTimeline:Z

    if-eqz v4, :cond_99

    .line 186
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->cloneWithUpdatedTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object v4

    goto :goto_9d

    .line 187
    :cond_99
    invoke-static {p1, v7, v1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->createWithRealTimeline(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object v4

    :goto_9d
    iput-object v4, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 188
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    if-eqz v4, :cond_b6

    .line 189
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 190
    .local v4, "maskingPeriod":Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->setPreparePositionOverrideToUnpreparedMaskingPeriod(J)V

    .line 191
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v10, v4, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v10, v10, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 192
    invoke-direct {p0, v10}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getInternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v6

    .line 195
    .end local v0    # "periodUidAndPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v1    # "periodUid":Ljava/lang/Object;
    .end local v2    # "periodPositionUs":J
    .end local v4    # "maskingPeriod":Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
    .end local v7    # "windowUid":Ljava/lang/Object;
    .end local v8    # "windowStartPositionUs":J
    :cond_b6
    :goto_b6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasRealTimeline:Z

    .line 196
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->isPrepared:Z

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 198
    if-eqz v6, :cond_cd

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 200
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 202
    :cond_cd
    return-void
.end method

.method public prepareSourceInternal()V
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->useLazyPreparation:Z

    if-nez v0, :cond_a

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasStartedPreparing:Z

    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->prepareChildSource()V

    .line 90
    :cond_a
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 122
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->releasePeriod()V

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    if-ne p1, v0, :cond_d

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 126
    :cond_d
    return-void
.end method

.method public releaseSourceInternal()V
    .registers 2

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->isPrepared:Z

    .line 131
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasStartedPreparing:Z

    .line 132
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->releaseSourceInternal()V

    .line 133
    return-void
.end method
