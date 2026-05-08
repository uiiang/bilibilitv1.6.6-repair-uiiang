.class final Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;
.super Ljava/lang/Object;
.source "FilteringMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/FilteringMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilteringMediaPeriod"
.end annotation


# instance fields
.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private filteredTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private final trackTypes:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Lcom/google/common/collect/ImmutableSet;)V
    .registers 3
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p2, "trackTypes":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 95
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 96
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 4
    .param p1, "positionUs"    # J

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(JZ)V
    .registers 5
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    .line 133
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 6
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation

    .line 116
    .local p1, "trackSelections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->filteredTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 107
    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 193
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .line 83
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 8
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 177
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    .line 178
    .local v0, "trackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 179
    .local v1, "trackGroupsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/source/TrackGroup;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget v3, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v3, :cond_25

    .line 180
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    .line 181
    .local v3, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    iget v5, v3, Lcom/google/android/exoplayer2/source/TrackGroup;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 182
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 179
    .end local v3    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 185
    .end local v2    # "i":I
    :cond_25
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 186
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->filteredTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 187
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 188
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .registers 5
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 100
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 102
    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 4
    .param p1, "positionUs"    # J

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->reevaluateBuffer(J)V

    .line 173
    return-void
.end method

.method public seekToUs(J)J
    .registers 5
    .param p1, "positionUs"    # J

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .registers 14
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v0

    return-wide v0
.end method
