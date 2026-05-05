.class final Lcom/google/android/exoplayer2/ExoPlayerImpl$Api31;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerMediaMetricsListener(Landroid/content/Context;Lcom/google/android/exoplayer2/ExoPlayerImpl;Z)Lcom/google/android/exoplayer2/analytics/PlayerId;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p2, "usePlatformDiagnostics"    # Z

    .line 3271
    invoke-static {p0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->create(Landroid/content/Context;)Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;

    move-result-object v0

    .line 3272
    .local v0, "listener":Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;
    if-nez v0, :cond_15

    .line 3273
    const-string v1, "ExoPlayerImpl"

    const-string v2, "MediaMetricsService unavailable."

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3274
    new-instance v1, Lcom/google/android/exoplayer2/analytics/PlayerId;

    sget-object v2, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object v1

    .line 3276
    :cond_15
    if-eqz p2, :cond_1a

    .line 3277
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 3279
    :cond_1a
    new-instance v1, Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object v1
.end method
