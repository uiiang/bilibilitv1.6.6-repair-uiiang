.class Lcom/google/android/exoplayer2/drm/DrmSessionManager$1;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .registers 7
    .param p1, "eventDispatcher"    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 64
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez v0, :cond_6

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_6
    new-instance v0, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;

    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    new-instance v2, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(I)V

    const/16 v3, 0x1771

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;-><init>(Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V

    return-object v0
.end method

.method public getCryptoType(Lcom/google/android/exoplayer2/Format;)I
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 76
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic preacquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;->$default$preacquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    move-result-object p1

    return-object p1
.end method

.method public synthetic prepare()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;->$default$prepare(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    return-void
.end method

.method public synthetic release()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;->$default$release(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    return-void
.end method

.method public setPlayer(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 3
    .param p1, "playbackLooper"    # Landroid/os/Looper;
    .param p2, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 58
    return-void
.end method
