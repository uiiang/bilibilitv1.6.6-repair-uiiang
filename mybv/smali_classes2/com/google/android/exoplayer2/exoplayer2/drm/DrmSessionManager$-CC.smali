.class public final synthetic Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$preacquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p1, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 158
    sget-object v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    return-object v0
.end method

.method public static $default$prepare(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .registers 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 105
    return-void
.end method

.method public static $default$release(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .registers 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 110
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    return-void
.end method

.method public static getDummyDrmSessionManager()Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    sget-object v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    return-object v0
.end method
