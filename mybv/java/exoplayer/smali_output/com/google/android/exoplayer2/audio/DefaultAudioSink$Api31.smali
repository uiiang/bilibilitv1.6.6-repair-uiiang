.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Api31;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLogSessionIdOnAudioTrack(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 4
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 2274
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/analytics/PlayerId;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    .line 2275
    .local v0, "logSessionId":Landroid/media/metrics/LogSessionId;
    sget-object v1, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v0, v1}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2276
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    .line 2278
    :cond_f
    return-void
.end method
