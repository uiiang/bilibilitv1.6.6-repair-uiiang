.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener$-CC;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$onExperimentalOffloadSchedulingEnabledChanged(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;Z)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;
    .param p1, "offloadSchedulingEnabled"    # Z

    .line 431
    return-void
.end method

.method public static $default$onExperimentalOffloadedPlayback(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;Z)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;
    .param p1, "offloadedPlayback"    # Z

    .line 448
    return-void
.end method

.method public static $default$onExperimentalSleepingForOffloadChanged(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;Z)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;
    .param p1, "sleepingForOffload"    # Z

    .line 438
    return-void
.end method
