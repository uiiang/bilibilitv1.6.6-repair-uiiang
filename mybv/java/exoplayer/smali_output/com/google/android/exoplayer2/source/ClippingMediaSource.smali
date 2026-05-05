.class public final Lcom/google/android/exoplayer2/source/ClippingMediaSource;
.super Lcom/google/android/exoplayer2/source/WrappingMediaSource;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;,
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final allowDynamicClippingUpdates:Z

.field private clippingError:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

.field private clippingTimeline:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

.field private final enableInitialDiscontinuity:Z

.field private final endUs:J

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private periodEndUs:J

.field private periodStartUs:J

.field private final relativeToDefaultPosition:Z

.field private final startUs:J

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .registers 13
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "durationUs"    # J

    .line 138
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;JJZZZ)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;JJ)V
    .registers 15
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "startPositionUs"    # J
    .param p4, "endPositionUs"    # J

    .line 119
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;JJZZZ)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;JJZZZ)V
    .registers 12
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "startPositionUs"    # J
    .param p4, "endPositionUs"    # J
    .param p6, "enableInitialDiscontinuity"    # Z
    .param p7, "allowDynamicClippingUpdates"    # Z
    .param p8, "relativeToDefaultPosition"    # Z

    .line 187
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 188
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 189
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->startUs:J

    .line 190
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->endUs:J

    .line 191
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    .line 192
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    .line 193
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 196
    return-void
.end method

.method private refreshClippedTimeline(Lcom/google/android/exoplayer2/Timeline;)V
    .registers 18
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 245
    move-object/from16 v1, p0

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v9, p1

    invoke-virtual {v9, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 246
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v10

    .line 247
    .local v10, "windowPositionInPeriodUs":J
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v0, :cond_33

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-eqz v0, :cond_23

    goto :goto_33

    .line 266
    :cond_23
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->periodStartUs:J

    sub-long/2addr v4, v10

    .line 268
    .local v4, "windowStartUs":J
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_2d

    .line 269
    goto :goto_30

    .line 270
    :cond_2d
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->periodEndUs:J

    sub-long/2addr v2, v10

    :goto_30
    move-wide v12, v2

    move-wide v14, v4

    .local v2, "windowEndUs":J
    goto :goto_70

    .line 248
    .end local v2    # "windowEndUs":J
    .end local v4    # "windowStartUs":J
    :cond_33
    :goto_33
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->startUs:J

    .line 249
    .restart local v4    # "windowStartUs":J
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->endUs:J

    .line 250
    .local v6, "windowEndUs":J
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    if-eqz v0, :cond_43

    .line 251
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v12

    .line 252
    .local v12, "windowDefaultPositionUs":J
    add-long/2addr v4, v12

    .line 253
    add-long/2addr v6, v12

    .line 255
    .end local v12    # "windowDefaultPositionUs":J
    :cond_43
    add-long v12, v10, v4

    iput-wide v12, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->periodStartUs:J

    .line 256
    nop

    .line 257
    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v12, v2

    if-nez v0, :cond_4f

    .line 258
    goto :goto_51

    .line 259
    :cond_4f
    add-long v2, v10, v6

    :goto_51
    iput-wide v2, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->periodEndUs:J

    .line 260
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 261
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5a
    if-ge v2, v0, :cond_6e

    .line 262
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->periodEndUs:J

    invoke-virtual {v3, v12, v13, v14, v15}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->updateClipping(JJ)V

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 264
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_6e
    move-wide v14, v4

    move-wide v12, v6

    .line 273
    .end local v4    # "windowStartUs":J
    .end local v6    # "windowEndUs":J
    .local v12, "windowEndUs":J
    .local v14, "windowStartUs":J
    :goto_70
    :try_start_70
    new-instance v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    move-object v3, v0

    move-object/from16 v4, p1

    move-wide v5, v14

    move-wide v7, v12

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;JJ)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;
    :try_end_7c
    .catch Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException; {:try_start_70 .. :try_end_7c} :catch_81

    .line 282
    nop

    .line 283
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 284
    return-void

    .line 274
    :catch_81
    move-exception v0

    .line 275
    .local v0, "e":Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;
    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingError:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 278
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_85
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9d

    .line 279
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingError:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->setClippingError(Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;)V

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 281
    .end local v2    # "i":I
    :cond_9d
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 13
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 208
    new-instance v7, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 210
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->periodEndUs:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;ZJJ)V

    .line 214
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingError:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_8

    .line 203
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 204
    return-void

    .line 201
    :cond_8
    throw v0
.end method

.method protected onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V
    .registers 3
    .param p1, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingError:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-eqz v0, :cond_5

    .line 237
    return-void

    .line 239
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->refreshClippedTimeline(Lcom/google/android/exoplayer2/Timeline;)V

    .line 240
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-nez v0, :cond_2c

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->refreshClippedTimeline(Lcom/google/android/exoplayer2/Timeline;)V

    .line 225
    :cond_2c
    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 2

    .line 229
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->releaseSourceInternal()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingError:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 231
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    .line 232
    return-void
.end method
