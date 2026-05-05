.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayer$-CC;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic $default$getPlayerError(Lcom/google/android/exoplayer2/ExoPlayer;)Lcom/google/android/exoplayer2/PlaybackException;
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/ExoPlayer;

    .line 163
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method
