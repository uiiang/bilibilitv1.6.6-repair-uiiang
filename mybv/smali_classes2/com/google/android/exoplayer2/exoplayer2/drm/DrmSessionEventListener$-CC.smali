.class public final synthetic Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$-CC;
.super Ljava/lang/Object;
.source "DrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$onDrmKeysLoaded(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 61
    return-void
.end method

.method public static $default$onDrmKeysRemoved(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 94
    return-void
.end method

.method public static $default$onDrmKeysRestored(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 86
    return-void
.end method

.method public static $default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    return-void
.end method

.method public static $default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "state"    # I

    .line 53
    return-void
.end method

.method public static $default$onDrmSessionManagerError(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "error"    # Ljava/lang/Exception;

    .line 78
    return-void
.end method

.method public static $default$onDrmSessionReleased(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 102
    return-void
.end method
