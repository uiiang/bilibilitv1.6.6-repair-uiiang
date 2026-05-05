.class final Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfinitelyLoopingTimeline"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;)V
    .registers 2
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 199
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 200
    return-void
.end method


# virtual methods
.method public getNextWindowIndex(IIZ)I
    .registers 6
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 206
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    .line 207
    .local v0, "childNextWindowIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 208
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;->getFirstWindowIndex(Z)I

    move-result v1

    goto :goto_f

    .line 209
    :cond_e
    move v1, v0

    .line 207
    :goto_f
    return v1
.end method

.method public getPreviousWindowIndex(IIZ)I
    .registers 6
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 216
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v0

    .line 217
    .local v0, "childPreviousWindowIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 218
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;->getLastWindowIndex(Z)I

    move-result v1

    goto :goto_f

    .line 219
    :cond_e
    move v1, v0

    .line 217
    :goto_f
    return v1
.end method
