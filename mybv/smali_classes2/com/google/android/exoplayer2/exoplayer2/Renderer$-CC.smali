.class public final synthetic Lcom/google/android/exoplayer2/Renderer$-CC;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$release(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Renderer;

    .line 534
    return-void
.end method

.method public static $default$setPlaybackSpeed(Lcom/google/android/exoplayer2/Renderer;FF)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Renderer;
    .param p1, "currentPlaybackSpeed"    # F
    .param p2, "targetPlaybackSpeed"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 445
    return-void
.end method
