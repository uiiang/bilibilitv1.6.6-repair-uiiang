.class public final synthetic Lcom/google/android/exoplayer2/LoadControl$-CC;
.super Ljava/lang/Object;
.source "LoadControl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$onTracksSelected(Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;[Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .registers 6
    .param p0, "_this"    # Lcom/google/android/exoplayer2/LoadControl;
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaPeriodId;
    .param p3, "renderers"    # [Lcom/google/android/exoplayer2/Renderer;
    .param p4, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p5, "trackSelections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 66
    invoke-interface {p0, p3, p4, p5}, Lcom/google/android/exoplayer2/LoadControl;->onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    .line 67
    return-void
.end method

.method public static $default$onTracksSelected(Lcom/google/android/exoplayer2/LoadControl;[Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .registers 10
    .param p0, "_this"    # Lcom/google/android/exoplayer2/LoadControl;
    .param p1, "renderers"    # [Lcom/google/android/exoplayer2/Renderer;
    .param p2, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "trackSelections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    sget-object v1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    sget-object v2, Lcom/google/android/exoplayer2/LoadControl;->EMPTY_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/LoadControl;->onTracksSelected(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;[Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    .line 78
    return-void
.end method

.method public static $default$shouldStartPlayback(Lcom/google/android/exoplayer2/LoadControl;JFZJ)Z
    .registers 16
    .param p0, "_this"    # Lcom/google/android/exoplayer2/LoadControl;
    .param p1, "bufferedDurationUs"    # J
    .param p3, "playbackSpeed"    # F
    .param p4, "rebuffering"    # Z
    .param p5, "targetLiveOffsetUs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    sget-object v1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    sget-object v2, Lcom/google/android/exoplayer2/LoadControl;->EMPTY_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-interface/range {v0 .. v8}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;JFZJ)Z

    move-result v0

    return v0
.end method

.method public static $default$shouldStartPlayback(Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;JFZJ)Z
    .registers 16
    .param p0, "_this"    # Lcom/google/android/exoplayer2/LoadControl;
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaPeriodId;
    .param p3, "bufferedDurationUs"    # J
    .param p5, "playbackSpeed"    # F
    .param p6, "rebuffering"    # Z
    .param p7, "targetLiveOffsetUs"    # J

    .line 168
    move-object v0, p0

    move-wide v1, p3

    move v3, p5

    move v4, p6

    move-wide v5, p7

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(JFZJ)Z

    move-result v0

    return v0
.end method
