.class public final synthetic Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$-CC;
.super Ljava/lang/Object;
.source "ExoTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$getLatestBitrateEstimate(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)J
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 305
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public static $default$onDiscontinuity(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .registers 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 160
    return-void
.end method

.method public static $default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Z)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p1, "playWhenReady"    # Z

    .line 176
    return-void
.end method

.method public static $default$onRebuffer(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .registers 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 169
    return-void
.end method

.method public static $default$shouldCancelChunkLoad(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z
    .registers 6
    .param p0, "_this"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p1, "playbackPositionUs"    # J
    .param p3, "loadingChunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 268
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    const/4 v0, 0x0

    return v0
.end method
