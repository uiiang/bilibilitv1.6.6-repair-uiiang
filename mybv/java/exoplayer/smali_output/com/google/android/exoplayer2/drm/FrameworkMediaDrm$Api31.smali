.class Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$Api31;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requiresSecureDecoder(Landroid/media/MediaDrm;Ljava/lang/String;)Z
    .registers 3
    .param p0, "mediaDrm"    # Landroid/media/MediaDrm;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 539
    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->requiresSecureDecoder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setLogSessionIdOnMediaDrmSession(Landroid/media/MediaDrm;[BLcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 5
    .param p0, "mediaDrm"    # Landroid/media/MediaDrm;
    .param p1, "drmSessionId"    # [B
    .param p2, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 545
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/analytics/PlayerId;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    .line 546
    .local v0, "logSessionId":Landroid/media/metrics/LogSessionId;
    sget-object v1, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v0, v1}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 547
    nop

    .line 548
    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->getPlaybackComponent([B)Landroid/media/MediaDrm$PlaybackComponent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaDrm$PlaybackComponent;

    .line 549
    .local v1, "playbackComponent":Landroid/media/MediaDrm$PlaybackComponent;
    invoke-virtual {v1, v0}, Landroid/media/MediaDrm$PlaybackComponent;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    .line 551
    .end local v1    # "playbackComponent":Landroid/media/MediaDrm$PlaybackComponent;
    :cond_1a
    return-void
.end method
