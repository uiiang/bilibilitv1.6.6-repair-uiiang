.class final Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$Api31;
.super Ljava/lang/Object;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLogSessionIdToMediaCodecFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 6
    .param p0, "codecConfiguration"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .param p1, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 2593
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/analytics/PlayerId;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    .line 2594
    .local v0, "logSessionId":Landroid/media/metrics/LogSessionId;
    sget-object v1, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v0, v1}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2595
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "log-session-id"

    invoke-virtual {v0}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    :cond_17
    return-void
.end method
