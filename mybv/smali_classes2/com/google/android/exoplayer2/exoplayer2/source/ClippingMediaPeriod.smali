.class public final Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private clippingError:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

.field endUs:J

.field public final mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private pendingInitialDiscontinuityPositionUs:J

.field private sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

.field startUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaPeriod;ZJJ)V
    .registers 9
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;
    .param p2, "enableInitialDiscontinuity"    # Z
    .param p3, "startUs"    # J
    .param p5, "endUs"    # J

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 72
    if-eqz p2, :cond_e

    move-wide v0, p3

    goto :goto_13

    :cond_e
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_13
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 73
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    .line 74
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    .line 75
    return-void
.end method

.method private clipSeekParameters(JLcom/google/android/exoplayer2/SeekParameters;)Lcom/google/android/exoplayer2/SeekParameters;
    .registers 15
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 258
    iget-wide v0, p3, Lcom/google/android/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, p1, v4

    .line 259
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 261
    .local v0, "toleranceBeforeUs":J
    iget-wide v2, p3, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    const-wide/16 v4, 0x0

    .line 265
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v10, v6, v8

    if-nez v10, :cond_1e

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_1f

    :cond_1e
    sub-long/2addr v6, p1

    .line 262
    :goto_1f
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v2

    .line 266
    .local v2, "toleranceAfterUs":J
    iget-wide v4, p3, Lcom/google/android/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_30

    iget-wide v4, p3, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_30

    .line 268
    return-object p3

    .line 270
    :cond_30
    new-instance v4, Lcom/google/android/exoplayer2/SeekParameters;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/SeekParameters;-><init>(JJ)V

    return-object v4
.end method

.method private static shouldKeepInitialDiscontinuity(J[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Z
    .registers 10
    .param p0, "startUs"    # J
    .param p2, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 285
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p0, v0

    if-eqz v3, :cond_22

    .line 286
    array-length v0, p2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_22

    aget-object v3, p2, v1

    .line 287
    .local v3, "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    if-eqz v3, :cond_1f

    .line 288
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 289
    .local v4, "selectedFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v5, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v6, v4, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 291
    const/4 v0, 0x1

    return v0

    .line 286
    .end local v3    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v4    # "selectedFormat":Lcom/google/android/exoplayer2/Format;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 296
    :cond_22
    return v2
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 4
    .param p1, "positionUs"    # J

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(JZ)V
    .registers 5
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    .line 158
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 7
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 210
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    .line 212
    return-wide v0

    .line 214
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->clipSeekParameters(JLcom/google/android/exoplayer2/SeekParameters;)Lcom/google/android/exoplayer2/SeekParameters;

    move-result-object v0

    .line 215
    .local v0, "clippedSeekParameters":Lcom/google/android/exoplayer2/SeekParameters;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getBufferedPositionUs()J
    .registers 8

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    .line 186
    .local v0, "bufferedPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_17

    cmp-long v6, v0, v4

    if-ltz v6, :cond_17

    goto :goto_18

    .line 190
    :cond_17
    return-wide v0

    .line 188
    :cond_18
    :goto_18
    return-wide v2
.end method

.method public getNextLoadPositionUs()J
    .registers 8

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    .line 221
    .local v0, "nextLoadPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_17

    cmp-long v6, v0, v4

    if-ltz v6, :cond_17

    goto :goto_18

    .line 225
    :cond_17
    return-wide v0

    .line 223
    :cond_18
    :goto_18
    return-wide v2
.end method

.method public synthetic getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriod$-CC;->$default$getStreamKeys(Lcom/google/android/exoplayer2/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->isLoading()Z

    move-result v0

    return v0
.end method

.method isPendingInitialDiscontinuity()Z
    .registers 6

    .line 254
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->clippingError:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_a

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 111
    return-void

    .line 108
    :cond_a
    throw v0
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 251
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .line 41
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->clippingError:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-eqz v0, :cond_5

    .line 243
    return-void

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 246
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .registers 5
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 101
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 103
    return-void
.end method

.method public readDiscontinuity()J
    .registers 10

    .line 167
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1b

    .line 168
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 169
    .local v3, "initialDiscontinuityUs":J
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 171
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->readDiscontinuity()J

    move-result-wide v5

    .line 172
    .local v5, "childDiscontinuityUs":J
    cmp-long v0, v5, v1

    if-eqz v0, :cond_19

    move-wide v0, v5

    goto :goto_1a

    :cond_19
    move-wide v0, v3

    :goto_1a
    return-wide v0

    .line 174
    .end local v3    # "initialDiscontinuityUs":J
    .end local v5    # "childDiscontinuityUs":J
    :cond_1b
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v3

    .line 175
    .local v3, "discontinuityUs":J
    cmp-long v0, v3, v1

    if-nez v0, :cond_26

    .line 176
    return-wide v1

    .line 178
    :cond_26
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    const/4 v2, 0x1

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-ltz v6, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 179
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_42

    cmp-long v6, v3, v0

    if-gtz v6, :cond_41

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    :cond_42
    :goto_42
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 180
    return-wide v3
.end method

.method public reevaluateBuffer(J)V
    .registers 4
    .param p1, "positionUs"    # J

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->reevaluateBuffer(J)V

    .line 163
    return-void
.end method

.method public seekToUs(J)J
    .registers 11
    .param p1, "positionUs"    # J

    .line 195
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 197
    .local v4, "sampleStream":Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    if-eqz v4, :cond_15

    .line 198
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->clearSentEos()V

    .line 196
    .end local v4    # "sampleStream":Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 201
    :cond_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v0

    .line 202
    .local v0, "seekUs":J
    cmp-long v3, v0, p1

    if-eqz v3, :cond_34

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_35

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-eqz v7, :cond_34

    cmp-long v5, v0, v3

    if-gtz v5, :cond_35

    :cond_34
    const/4 v2, 0x1

    :cond_35
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 205
    return-wide v0
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .registers 16
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 125
    array-length v0, p3

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 126
    array-length v0, p3

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 127
    .local v0, "childStreams":[Lcom/google/android/exoplayer2/source/SampleStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p3

    const/4 v8, 0x0

    if-ge v1, v2, :cond_1e

    .line 128
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v3, p3, v1

    check-cast v3, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v3, v2, v1

    .line 129
    if-eqz v3, :cond_19

    iget-object v8, v3, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    :cond_19
    aput-object v8, v0, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 131
    .end local v1    # "i":I
    :cond_1e
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 132
    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v1

    .line 134
    .local v1, "enablePositionUs":J
    nop

    .line 137
    nop

    .line 135
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v5, p5, v3

    if-nez v5, :cond_3f

    .line 137
    invoke-static {v3, v4, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->shouldKeepInitialDiscontinuity(J[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 138
    move-wide v3, v1

    goto :goto_44

    .line 139
    :cond_3f
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_44
    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 140
    cmp-long v3, v1, p5

    if-eqz v3, :cond_5f

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5d

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5f

    cmp-long v5, v1, v3

    if-gtz v5, :cond_5d

    goto :goto_5f

    :cond_5d
    const/4 v3, 0x0

    goto :goto_60

    :cond_5f
    :goto_5f
    const/4 v3, 0x1

    :goto_60
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 144
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_64
    array-length v4, p3

    if-ge v3, v4, :cond_90

    .line 145
    aget-object v4, v0, v3

    if-nez v4, :cond_70

    .line 146
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v8, v4, v3

    goto :goto_87

    .line 147
    :cond_70
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v4, v4, v3

    if-eqz v4, :cond_7c

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v0, v3

    if-eq v4, v5, :cond_87

    .line 148
    :cond_7c
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    new-instance v5, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v6, v0, v3

    invoke-direct {v5, p0, v6}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;-><init>(Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;Lcom/google/android/exoplayer2/source/SampleStream;)V

    aput-object v5, v4, v3

    .line 150
    :cond_87
    :goto_87
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v4, v4, v3

    aput-object v4, p3, v3

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 152
    .end local v3    # "i":I
    :cond_90
    return-wide v1
.end method

.method public setClippingError(Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;)V
    .registers 2
    .param p1, "clippingError"    # Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->clippingError:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 97
    return-void
.end method

.method public updateClipping(JJ)V
    .registers 5
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J

    .line 85
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    .line 86
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    .line 87
    return-void
.end method
