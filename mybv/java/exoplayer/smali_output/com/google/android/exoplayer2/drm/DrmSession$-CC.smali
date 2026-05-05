.class public final synthetic Lcom/google/android/exoplayer2/drm/DrmSession$-CC;
.super Ljava/lang/Object;
.source "DrmSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$playClearSamplesWithoutKeys(Lcom/google/android/exoplayer2/drm/DrmSession;)Z
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public static replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .registers 3
    .param p0, "previousSession"    # Lcom/google/android/exoplayer2/drm/DrmSession;
    .param p1, "newSession"    # Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 58
    if-ne p0, p1, :cond_3

    .line 60
    return-void

    .line 62
    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 63
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 65
    :cond_9
    if-eqz p0, :cond_e

    .line 66
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 68
    :cond_e
    return-void
.end method
