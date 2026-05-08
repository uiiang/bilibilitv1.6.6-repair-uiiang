.class public final synthetic Lcom/google/android/exoplayer2/source/MediaSource$-CC;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$getInitialTimeline(Lcom/google/android/exoplayer2/source/MediaSource;)Lcom/google/android/exoplayer2/Timeline;
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$isSingleWindow(Lcom/google/android/exoplayer2/source/MediaSource;)Z
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public static $default$prepareSource(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p1, "caller"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
    .param p2, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    sget-object v0, Lcom/google/android/exoplayer2/analytics/PlayerId;->UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 293
    return-void
.end method
