.class final Lcom/google/android/exoplayer2/source/MergingMediaPeriod;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;,
        Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;,
        Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetSampleStream;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final childrenPendingPreparation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private final periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private final streamPeriodIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;[J[Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 10
    .param p1, "compositeSequenceableLoaderFactory"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;
    .param p2, "periodTimeOffsetsUs"    # [J
    .param p3, "periods"    # [Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 69
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    .line 72
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 73
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 74
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    .line 75
    new-array v0, v0, [Lcom/google/android/exoplayer2/source/MediaPeriod;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    array-length v1, p3

    if-ge v0, v1, :cond_45

    .line 77
    aget-wide v1, p2, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_42

    .line 78
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    new-instance v2, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;

    aget-object v3, p3, v0

    aget-wide v4, p2, v0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;J)V

    aput-object v2, v1, v0

    .line 76
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 81
    .end local v0    # "i":I
    :cond_45
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 6
    .param p1, "positionUs"    # J

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 207
    .local v0, "childrenPendingPreparationSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1f

    .line 208
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v2, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 210
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, 0x0

    return v1

    .line 212
    .end local v0    # "childrenPendingPreparationSize":I
    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(JZ)V
    .registers 8
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 193
    .local v3, "period":Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-interface {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    .line 192
    .end local v3    # "period":Lcom/google/android/exoplayer2/source/MediaPeriod;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 195
    :cond_e
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 7
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_9

    aget-object v0, v0, v2

    goto :goto_d

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v0, v0, v2

    .line 276
    .local v0, "queryPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    :goto_d
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildPeriod(I)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 4
    .param p1, "index"    # I

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v0, v0, p1

    instance-of v1, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;

    if-eqz v1, :cond_f

    .line 90
    check-cast v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;

    # getter for: Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->access$000(Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    goto :goto_10

    .line 91
    :cond_f
    nop

    .line 89
    :goto_10
    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriod$-CC;->$default$getStreamKeys(Lcom/google/android/exoplayer2/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 106
    .local v3, "period":Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 105
    .end local v3    # "period":Lcom/google/android/exoplayer2/source/MediaPeriod;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 108
    :cond_e
    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "ignored"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 310
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .line 50
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 12
    .param p1, "preparedPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 285
    return-void

    .line 287
    :cond_e
    const/4 v0, 0x0

    .line 288
    .local v0, "totalTrackGroupCount":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_21

    aget-object v4, v1, v3

    .line 289
    .local v4, "period":Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v0, v5

    .line 288
    .end local v4    # "period":Lcom/google/android/exoplayer2/source/MediaPeriod;
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 291
    :cond_21
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 292
    .local v1, "trackGroupArray":[Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v2, 0x0

    .line 293
    .local v2, "trackGroupIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v5, v4

    if-ge v3, v5, :cond_66

    .line 294
    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    .line 295
    .local v4, "periodTrackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    iget v5, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 296
    .local v5, "periodTrackGroupCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_33
    if-ge v6, v5, :cond_63

    .line 297
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 298
    .local v7, "childTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->copyWithId(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 299
    .local v8, "mergedTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "trackGroupIndex":I
    .local v9, "trackGroupIndex":I
    aput-object v8, v1, v2

    .line 296
    .end local v7    # "childTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v8    # "mergedTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    add-int/lit8 v6, v6, 0x1

    move v2, v9

    goto :goto_33

    .line 293
    .end local v4    # "periodTrackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .end local v5    # "periodTrackGroupCount":I
    .end local v6    # "j":I
    .end local v9    # "trackGroupIndex":I
    .restart local v2    # "trackGroupIndex":I
    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 303
    .end local v3    # "i":I
    :cond_66
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 304
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v3, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 305
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .registers 8
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 99
    .local v3, "period":Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-interface {v3, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 98
    .end local v3    # "period":Lcom/google/android/exoplayer2/source/MediaPeriod;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 101
    :cond_17
    return-void
.end method

.method public readDiscontinuity()J
    .registers 19

    .line 228
    move-object/from16 v0, p0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 229
    .local v1, "discontinuityUs":J
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v4, :cond_64

    aget-object v7, v3, v6

    .line 230
    .local v7, "period":Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-interface {v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v8

    .line 231
    .local v8, "otherDiscontinuityUs":J
    const-string v10, "Unexpected child seekToUs result."

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v8, v11

    if-eqz v13, :cond_4e

    .line 232
    cmp-long v13, v1, v11

    if-nez v13, :cond_41

    .line 233
    move-wide v1, v8

    .line 235
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_28
    if-ge v13, v12, :cond_40

    aget-object v14, v11, v13

    .line 236
    .local v14, "previousPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    if-ne v14, v7, :cond_2f

    .line 237
    goto :goto_40

    .line 239
    :cond_2f
    invoke-interface {v14, v1, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v15

    cmp-long v17, v15, v1

    if-nez v17, :cond_3a

    .line 235
    .end local v14    # "previousPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    add-int/lit8 v13, v13, 0x1

    goto :goto_28

    .line 240
    .restart local v14    # "previousPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    :cond_3a
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    .end local v14    # "previousPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    :cond_40
    :goto_40
    goto :goto_61

    .line 243
    :cond_41
    cmp-long v10, v8, v1

    if-nez v10, :cond_46

    goto :goto_61

    .line 244
    :cond_46
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Conflicting discontinuities."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 246
    :cond_4e
    cmp-long v13, v1, v11

    if-eqz v13, :cond_61

    .line 248
    invoke-interface {v7, v1, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v11

    cmp-long v13, v11, v1

    if-nez v13, :cond_5b

    goto :goto_61

    .line 249
    :cond_5b
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    .end local v7    # "period":Lcom/google/android/exoplayer2/source/MediaPeriod;
    .end local v8    # "otherDiscontinuityUs":J
    :cond_61
    :goto_61
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 253
    :cond_64
    return-wide v1
.end method

.method public reevaluateBuffer(J)V
    .registers 4
    .param p1, "positionUs"    # J

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->reevaluateBuffer(J)V

    .line 200
    return-void
.end method

.method public seekToUs(J)J
    .registers 7
    .param p1, "positionUs"    # J

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    .line 265
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v2, v1

    if-ge v0, v2, :cond_24

    .line 266
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_1c

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 267
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected child seekToUs result."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    .end local v0    # "i":I
    :cond_24
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .registers 26
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    .line 124
    .local v3, "streamChildIndices":[I
    array-length v4, v1

    new-array v4, v4, [I

    .line 125
    .local v4, "selectionChildIndices":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    array-length v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-ge v5, v6, :cond_52

    .line 126
    aget-object v6, v2, v5

    if-nez v6, :cond_17

    goto :goto_22

    :cond_17
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    :goto_22
    move-object v6, v7

    .line 127
    .local v6, "streamChildIndex":Ljava/lang/Integer;
    const/4 v7, -0x1

    if-nez v6, :cond_28

    const/4 v9, -0x1

    goto :goto_2c

    :cond_28
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_2c
    aput v9, v3, v5

    .line 128
    aget-object v9, v1, v5

    if-eqz v9, :cond_4d

    .line 129
    aget-object v7, v1, v5

    invoke-interface {v7}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 131
    .local v7, "mergedTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget-object v9, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->id:Ljava/lang/String;

    iget-object v10, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->id:Ljava/lang/String;

    .line 132
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v4, v5

    .line 133
    .end local v7    # "mergedTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    goto :goto_4f

    .line 134
    :cond_4d
    aput v7, v4, v5

    .line 125
    .end local v6    # "streamChildIndex":Ljava/lang/Integer;
    :goto_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 137
    .end local v5    # "i":I
    :cond_52
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v5}, Ljava/util/IdentityHashMap;->clear()V

    .line 139
    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 140
    .local v5, "newStreams":[Lcom/google/android/exoplayer2/source/SampleStream;
    array-length v6, v1

    new-array v6, v6, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 141
    .local v6, "childStreams":[Lcom/google/android/exoplayer2/source/SampleStream;
    array-length v9, v1

    new-array v14, v9, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 142
    .local v14, "childSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v10, v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v9

    .line 143
    .local v15, "enabledPeriodsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/MediaPeriod;>;"
    const/4 v9, 0x0

    move-wide/from16 v16, p5

    move v13, v9

    .end local p5    # "positionUs":J
    .local v13, "i":I
    .local v16, "positionUs":J
    :goto_6d
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v9, v9

    if-ge v13, v9, :cond_115

    .line 144
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_73
    array-length v10, v1

    if-ge v9, v10, :cond_ac

    .line 145
    aget v10, v3, v9

    if-ne v10, v13, :cond_7d

    aget-object v10, v2, v9

    goto :goto_7e

    :cond_7d
    move-object v10, v7

    :goto_7e
    aput-object v10, v6, v9

    .line 146
    aget v10, v4, v9

    if-ne v10, v13, :cond_a6

    .line 147
    aget-object v10, v1, v9

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 148
    .local v10, "mergedTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    invoke-interface {v10}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v11

    .line 149
    .local v11, "mergedTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    .line 150
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 151
    .local v12, "childTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    new-instance v8, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;

    invoke-direct {v8, v10, v12}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;-><init>(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object v8, v14, v9

    .line 152
    .end local v10    # "mergedTrackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v11    # "mergedTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v12    # "childTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    goto :goto_a8

    .line 153
    :cond_a6
    aput-object v7, v14, v9

    .line 144
    :goto_a8
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto :goto_73

    .line 156
    .end local v9    # "j":I
    :cond_ac
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v9, v8, v13

    .line 157
    move-object v10, v14

    move-object/from16 v11, p2

    move-object v12, v6

    move v8, v13

    .end local v13    # "i":I
    .local v8, "i":I
    move-object/from16 v13, p4

    move-object/from16 v18, v14

    move-object v7, v15

    .end local v14    # "childSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v15    # "enabledPeriodsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/MediaPeriod;>;"
    .local v7, "enabledPeriodsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/MediaPeriod;>;"
    .local v18, "childSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    move-wide/from16 v14, v16

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v9

    .line 159
    .local v9, "selectPositionUs":J
    if-nez v8, :cond_c6

    .line 160
    move-wide v11, v9

    move-wide/from16 v16, v11

    .end local v16    # "positionUs":J
    .local v11, "positionUs":J
    goto :goto_ca

    .line 161
    .end local v11    # "positionUs":J
    .restart local v16    # "positionUs":J
    :cond_c6
    cmp-long v11, v9, v16

    if-nez v11, :cond_10d

    .line 164
    :goto_ca
    const/4 v11, 0x0

    .line 165
    .local v11, "periodEnabled":Z
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_cc
    array-length v13, v1

    if-ge v12, v13, :cond_fb

    .line 166
    aget v13, v4, v12

    if-ne v13, v8, :cond_ea

    .line 168
    aget-object v13, v6, v12

    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/source/SampleStream;

    .line 169
    .local v13, "childStream":Lcom/google/android/exoplayer2/source/SampleStream;
    aget-object v14, v6, v12

    aput-object v14, v5, v12

    .line 170
    const/4 v11, 0x1

    .line 171
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v13    # "childStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_e9
    goto :goto_f8

    :cond_ea
    aget v13, v3, v12

    if-ne v13, v8, :cond_e9

    .line 174
    aget-object v13, v6, v12

    if-nez v13, :cond_f4

    const/4 v13, 0x1

    goto :goto_f5

    :cond_f4
    const/4 v13, 0x0

    :goto_f5
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 165
    :goto_f8
    add-int/lit8 v12, v12, 0x1

    goto :goto_cc

    .line 177
    .end local v12    # "j":I
    :cond_fb
    if-eqz v11, :cond_104

    .line 178
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v12, v12, v8

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v9    # "selectPositionUs":J
    .end local v11    # "periodEnabled":Z
    :cond_104
    add-int/lit8 v13, v8, 0x1

    move-object v15, v7

    move-object/from16 v14, v18

    const/4 v7, 0x0

    const/4 v8, 0x0

    .end local v8    # "i":I
    .local v13, "i":I
    goto/16 :goto_6d

    .line 162
    .end local v13    # "i":I
    .restart local v8    # "i":I
    .restart local v9    # "selectPositionUs":J
    :cond_10d
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Children enabled at different positions."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 143
    .end local v7    # "enabledPeriodsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/MediaPeriod;>;"
    .end local v8    # "i":I
    .end local v9    # "selectPositionUs":J
    .end local v18    # "childSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v13    # "i":I
    .restart local v14    # "childSelections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .restart local v15    # "enabledPeriodsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/MediaPeriod;>;"
    :cond_115
    move-object v7, v15

    .line 182
    .end local v13    # "i":I
    .end local v15    # "enabledPeriodsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/MediaPeriod;>;"
    .restart local v7    # "enabledPeriodsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/MediaPeriod;>;"
    array-length v8, v5

    const/4 v9, 0x0

    invoke-static {v5, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    new-array v8, v9, [Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/exoplayer2/source/MediaPeriod;

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 185
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 186
    invoke-interface {v9, v8}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 187
    return-wide v16
.end method
