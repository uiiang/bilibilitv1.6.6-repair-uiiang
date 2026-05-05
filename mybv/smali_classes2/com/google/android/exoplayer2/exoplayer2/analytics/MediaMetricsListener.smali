.class public final Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;
.super Ljava/lang/Object;
.source "MediaMetricsListener.java"

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
.implements Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;,
        Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private activeSessionId:Ljava/lang/String;

.field private audioUnderruns:I

.field private final bandwidthBytes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final bandwidthTimeMs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentAudioFormat:Lcom/google/android/exoplayer2/Format;

.field private currentNetworkType:I

.field private currentPlaybackState:I

.field private currentTextFormat:Lcom/google/android/exoplayer2/Format;

.field private currentVideoFormat:Lcom/google/android/exoplayer2/Format;

.field private discontinuityReason:I

.field private droppedFrames:I

.field private hasFatalError:Z

.field private ioErrorType:I

.field private isSeeking:Z

.field private metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

.field private pendingAudioFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

.field private pendingPlayerError:Lcom/google/android/exoplayer2/PlaybackException;

.field private pendingTextFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

.field private pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final playbackSession:Landroid/media/metrics/PlaybackSession;

.field private playedFrames:I

.field private reportedEventsForCurrentSession:Z

.field private final sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

.field private final startTimeMs:J

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playbackSession"    # Landroid/media/metrics/PlaybackSession;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 150
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    .line 152
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 153
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->startTimeMs:J

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentPlaybackState:I

    .line 158
    iput v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentNetworkType:I

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    .line 160
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->setListener(Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;)V

    .line 161
    return-void
.end method

.method private canReportPendingFormatUpdate(Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;)Z
    .registers 4
    .param p1, "pendingFormatUpdate"    # Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = true
    .end annotation

    .line 414
    if-eqz p1, :cond_12

    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->sessionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    .line 415
    invoke-interface {v1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->getActiveSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 414
    :goto_13
    return v0
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 107
    nop

    .line 108
    const-string v0, "media_metrics"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaMetricsManager;

    .line 109
    .local v0, "mediaMetricsManager":Landroid/media/metrics/MediaMetricsManager;
    if-nez v0, :cond_d

    .line 110
    const/4 v1, 0x0

    goto :goto_16

    .line 111
    :cond_d
    new-instance v1, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;

    invoke-virtual {v0}, Landroid/media/metrics/MediaMetricsManager;->createPlaybackSession()Landroid/media/metrics/PlaybackSession;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    .line 109
    :goto_16
    return-object v1
.end method

.method private finishCurrentSession()V
    .registers 10

    .line 605
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    if-eqz v2, :cond_69

    .line 606
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->audioUnderruns:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 607
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->droppedFrames:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 608
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->playedFrames:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 609
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 610
    .local v0, "networkTimeMs":Ljava/lang/Long;
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_2e

    move-wide v5, v3

    goto :goto_32

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_32
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 612
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 613
    .local v2, "networkBytes":Ljava/lang/Long;
    iget-object v5, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v2, :cond_45

    move-wide v6, v3

    goto :goto_49

    :cond_45
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_49
    invoke-virtual {v5, v6, v7}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 615
    iget-object v5, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 616
    if-eqz v2, :cond_5a

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-lez v8, :cond_5a

    .line 617
    const/4 v3, 0x1

    goto :goto_5b

    .line 618
    :cond_5a
    const/4 v3, 0x0

    .line 615
    :goto_5b
    invoke-virtual {v5, v3}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 619
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-virtual {v4}, Landroid/media/metrics/PlaybackMetrics$Builder;->build()Landroid/media/metrics/PlaybackMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/metrics/PlaybackSession;->reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V

    .line 621
    .end local v0    # "networkTimeMs":Ljava/lang/Long;
    .end local v2    # "networkBytes":Ljava/lang/Long;
    :cond_69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 622
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    .line 623
    iput v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->audioUnderruns:I

    .line 624
    iput v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->droppedFrames:I

    .line 625
    iput v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->playedFrames:I

    .line 626
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    .line 627
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 628
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentTextFormat:Lcom/google/android/exoplayer2/Format;

    .line 629
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    .line 630
    return-void
.end method

.method private static getDrmErrorCode(I)I
    .registers 2
    .param p0, "mediaDrmErrorCode"    # I

    .line 861
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 872
    const/16 v0, 0x1b

    return v0

    .line 867
    :pswitch_a
    const/16 v0, 0x1a

    return v0

    .line 865
    :pswitch_d
    const/16 v0, 0x19

    return v0

    .line 869
    :pswitch_10
    const/16 v0, 0x1c

    return v0

    .line 863
    :pswitch_13
    const/16 v0, 0x18

    return v0

    :pswitch_data_16
    .packed-switch 0x1772
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private static getDrmInitData(Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/Tracks$Group;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .line 828
    .local p0, "trackGroups":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/Tracks$Group;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Tracks$Group;

    .line 829
    .local v1, "trackGroup":Lcom/google/android/exoplayer2/Tracks$Group;
    const/4 v2, 0x0

    .local v2, "trackIndex":I
    :goto_11
    iget v3, v1, Lcom/google/android/exoplayer2/Tracks$Group;->length:I

    if-ge v2, v3, :cond_27

    .line 830
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Tracks$Group;->isTrackSelected(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 831
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Tracks$Group;->getTrackFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 832
    .local v3, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    if-eqz v3, :cond_24

    .line 833
    return-object v3

    .line 829
    .end local v3    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 837
    .end local v1    # "trackGroup":Lcom/google/android/exoplayer2/Tracks$Group;
    .end local v2    # "trackIndex":I
    :cond_27
    goto :goto_4

    .line 838
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDrmType(Lcom/google/android/exoplayer2/drm/DrmInitData;)I
    .registers 4
    .param p0, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 842
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v0, v1, :cond_2c

    .line 843
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 844
    .local v1, "uuid":Ljava/util/UUID;
    sget-object v2, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 847
    const/4 v2, 0x3

    return v2

    .line 849
    :cond_15
    sget-object v2, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 850
    const/4 v2, 0x2

    return v2

    .line 852
    :cond_1f
    sget-object v2, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 853
    const/4 v2, 0x6

    return v2

    .line 842
    .end local v1    # "uuid":Ljava/util/UUID;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 856
    .end local v0    # "i":I
    :cond_2c
    const/4 v0, 0x1

    return v0
.end method

.method private static getErrorInfo(Lcom/google/android/exoplayer2/PlaybackException;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;
    .registers 12
    .param p0, "error"    # Lcom/google/android/exoplayer2/PlaybackException;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lastIoErrorForManifest"    # Z

    .line 700
    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    .line 701
    new-instance v0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v0

    .line 705
    :cond_f
    const/4 v0, 0x0

    .line 706
    .local v0, "isRendererExoPlaybackException":Z
    const/4 v1, 0x0

    .line 707
    .local v1, "rendererFormatSupport":I
    instance-of v3, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v4, 0x1

    if-eqz v3, :cond_23

    .line 708
    move-object v3, p0

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 709
    .local v3, "exoPlaybackException":Lcom/google/android/exoplayer2/ExoPlaybackException;
    iget v5, v3, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v5, v4, :cond_1f

    const/4 v5, 0x1

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    :goto_20
    move v0, v5

    .line 711
    iget v1, v3, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    .line 713
    .end local v3    # "exoPlaybackException":Lcom/google/android/exoplayer2/ExoPlaybackException;
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 714
    .local v3, "cause":Ljava/lang/Throwable;
    instance-of v5, v3, Ljava/io/IOException;

    const/4 v6, 0x3

    const/16 v7, 0x12

    const/16 v8, 0x17

    if-eqz v5, :cond_176

    .line 715
    instance-of v5, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v5, :cond_46

    .line 716
    move-object v2, v3

    check-cast v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v2, v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 717
    .local v2, "responseCode":I
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 719
    .end local v2    # "responseCode":I
    :cond_46
    instance-of v5, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    if-nez v5, :cond_169

    instance-of v5, v3, Lcom/google/android/exoplayer2/ParserException;

    if-eqz v5, :cond_50

    goto/16 :goto_169

    .line 726
    :cond_50
    instance-of v5, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-nez v5, :cond_125

    instance-of v5, v3, Lcom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    if-eqz v5, :cond_5a

    goto/16 :goto_125

    .line 748
    :cond_5a
    iget v4, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/16 v5, 0x3ea

    const/16 v6, 0x15

    if-ne v4, v5, :cond_68

    .line 749
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v6, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 751
    :cond_68
    instance-of v4, v3, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    if-eqz v4, :cond_e2

    .line 753
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/Throwable;

    .line 754
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v4, v6, :cond_94

    instance-of v4, v3, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v4, :cond_94

    .line 755
    move-object v2, v3

    check-cast v2, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v2}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, "diagnosticsInfo":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result v4

    .line 757
    .local v4, "subErrorCode":I
    invoke-static {v4}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->getDrmErrorCode(I)I

    move-result v5

    .line 758
    .local v5, "errorCode":I
    new-instance v6, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v6, v5, v4}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v6

    .line 759
    .end local v2    # "diagnosticsInfo":Ljava/lang/String;
    .end local v4    # "subErrorCode":I
    .end local v5    # "errorCode":I
    :cond_94
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v4, v8, :cond_a4

    instance-of v4, v3, Landroid/media/MediaDrmResetException;

    if-eqz v4, :cond_a4

    .line 760
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x1b

    invoke-direct {v4, v5, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 761
    :cond_a4
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v4, v7, :cond_b4

    instance-of v4, v3, Landroid/media/NotProvisionedException;

    if-eqz v4, :cond_b4

    .line 762
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x18

    invoke-direct {v4, v5, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 764
    :cond_b4
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v4, v7, :cond_c4

    instance-of v4, v3, Landroid/media/DeniedByServerException;

    if-eqz v4, :cond_c4

    .line 765
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x1d

    invoke-direct {v4, v5, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 766
    :cond_c4
    instance-of v4, v3, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    if-eqz v4, :cond_ce

    .line 767
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v8, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 769
    :cond_ce
    instance-of v4, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz v4, :cond_da

    .line 770
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x1c

    invoke-direct {v4, v5, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 772
    :cond_da
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x1e

    invoke-direct {v4, v5, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 774
    :cond_e2
    instance-of v4, v3, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    if-eqz v4, :cond_11d

    .line 775
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_11d

    .line 776
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 777
    .local v4, "notFoundCause":Ljava/lang/Throwable;
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v5, v6, :cond_115

    instance-of v5, v4, Landroid/system/ErrnoException;

    if-eqz v5, :cond_115

    move-object v5, v4

    check-cast v5, Landroid/system/ErrnoException;

    iget v5, v5, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EACCES:I

    if-ne v5, v6, :cond_115

    .line 780
    new-instance v5, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v6, 0x20

    invoke-direct {v5, v6, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v5

    .line 782
    :cond_115
    new-instance v5, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v6, 0x1f

    invoke-direct {v5, v6, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v5

    .line 785
    .end local v4    # "notFoundCause":Ljava/lang/Throwable;
    :cond_11d
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x9

    invoke-direct {v4, v5, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 728
    :cond_125
    :goto_125
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getNetworkType()I

    move-result v5

    if-ne v5, v4, :cond_135

    .line 729
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v6, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 732
    :cond_135
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 733
    .local v5, "detailedCause":Ljava/lang/Throwable;
    instance-of v6, v5, Ljava/net/UnknownHostException;

    if-eqz v6, :cond_144

    .line 734
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/4 v6, 0x6

    invoke-direct {v4, v6, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 735
    :cond_144
    instance-of v6, v5, Ljava/net/SocketTimeoutException;

    if-eqz v6, :cond_14f

    .line 736
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/4 v6, 0x7

    invoke-direct {v4, v6, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 738
    :cond_14f
    instance-of v6, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-eqz v6, :cond_161

    move-object v6, v3

    check-cast v6, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget v6, v6, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    if-ne v6, v4, :cond_161

    .line 741
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/4 v6, 0x4

    invoke-direct {v4, v6, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 744
    :cond_161
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v6, 0x8

    invoke-direct {v4, v6, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 721
    .end local v5    # "detailedCause":Ljava/lang/Throwable;
    :cond_169
    :goto_169
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    .line 722
    if-eqz p2, :cond_170

    .line 723
    const/16 v5, 0xa

    goto :goto_172

    .line 724
    :cond_170
    const/16 v5, 0xb

    :goto_172
    invoke-direct {v4, v5, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 721
    return-object v4

    .line 787
    :cond_176
    if-eqz v0, :cond_184

    if-eqz v1, :cond_17c

    if-ne v1, v4, :cond_184

    .line 790
    :cond_17c
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x23

    invoke-direct {v4, v5, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 792
    :cond_184
    if-eqz v0, :cond_190

    if-ne v1, v6, :cond_190

    .line 794
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0xf

    invoke-direct {v4, v5, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 796
    :cond_190
    if-eqz v0, :cond_19b

    const/4 v4, 0x2

    if-ne v1, v4, :cond_19b

    .line 798
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v8, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 799
    :cond_19b
    instance-of v4, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz v4, :cond_1b0

    .line 801
    move-object v2, v3

    check-cast v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v2, v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    .line 803
    .restart local v2    # "diagnosticsInfo":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result v4

    .line 804
    .local v4, "subErrorCode":I
    new-instance v5, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v6, 0xd

    invoke-direct {v5, v6, v4}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v5

    .line 805
    .end local v2    # "diagnosticsInfo":Ljava/lang/String;
    .end local v4    # "subErrorCode":I
    :cond_1b0
    instance-of v4, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    const/16 v5, 0xe

    if-eqz v4, :cond_1c5

    .line 806
    move-object v2, v3

    check-cast v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    iget-object v2, v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;->diagnosticInfo:Ljava/lang/String;

    .line 807
    .restart local v2    # "diagnosticsInfo":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result v4

    .line 808
    .restart local v4    # "subErrorCode":I
    new-instance v6, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v6, v5, v4}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v6

    .line 809
    .end local v2    # "diagnosticsInfo":Ljava/lang/String;
    .end local v4    # "subErrorCode":I
    :cond_1c5
    instance-of v4, v3, Ljava/lang/OutOfMemoryError;

    if-eqz v4, :cond_1cf

    .line 810
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v5, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 811
    :cond_1cf
    instance-of v4, v3, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    if-eqz v4, :cond_1e0

    .line 812
    move-object v2, v3

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->audioTrackState:I

    .line 813
    .local v2, "subErrorCode":I
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x11

    invoke-direct {v4, v5, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 814
    .end local v2    # "subErrorCode":I
    :cond_1e0
    instance-of v4, v3, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    if-eqz v4, :cond_1ef

    .line 815
    move-object v2, v3

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->errorCode:I

    .line 816
    .restart local v2    # "subErrorCode":I
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v7, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 817
    .end local v2    # "subErrorCode":I
    :cond_1ef
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_20a

    instance-of v4, v3, Landroid/media/MediaCodec$CryptoException;

    if-eqz v4, :cond_20a

    .line 818
    move-object v2, v3

    check-cast v2, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v2}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    .line 819
    .restart local v2    # "subErrorCode":I
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->getDrmErrorCode(I)I

    move-result v4

    .line 820
    .local v4, "errorCode":I
    new-instance v5, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v5, v4, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v5

    .line 822
    .end local v2    # "subErrorCode":I
    .end local v4    # "errorCode":I
    :cond_20a
    new-instance v4, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x16

    invoke-direct {v4, v5, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4
.end method

.method private static getLanguageAndRegion(Ljava/lang/String;)Landroid/util/Pair;
    .registers 5
    .param p0, "languageCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 648
    const-string v0, "-"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_11

    const/4 v2, 0x1

    aget-object v2, v0, v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private static getNetworkType(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 653
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 673
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 665
    :pswitch_d
    const/4 v0, 0x7

    return v0

    .line 663
    :pswitch_f
    const/16 v0, 0x8

    return v0

    .line 667
    :pswitch_12
    const/4 v0, 0x3

    return v0

    .line 661
    :pswitch_14
    const/4 v0, 0x6

    return v0

    .line 659
    :pswitch_16
    const/4 v0, 0x5

    return v0

    .line 657
    :pswitch_18
    const/4 v0, 0x4

    return v0

    .line 655
    :pswitch_1a
    const/4 v0, 0x2

    return v0

    .line 669
    :pswitch_1c
    const/16 v0, 0x9

    return v0

    .line 671
    :pswitch_1f
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
        :pswitch_1a
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_b
        :pswitch_12
        :pswitch_b
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method private static getStreamType(Lcom/google/android/exoplayer2/MediaItem;)I
    .registers 3
    .param p0, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    if-nez v0, :cond_6

    .line 679
    const/4 v0, 0x0

    return v0

    .line 682
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 683
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 685
    .local v0, "contentType":I
    packed-switch v0, :pswitch_data_1e

    .line 694
    const/4 v1, 0x1

    return v1

    .line 687
    :pswitch_17
    const/4 v1, 0x4

    return v1

    .line 691
    :pswitch_19
    const/4 v1, 0x5

    return v1

    .line 689
    :pswitch_1b
    const/4 v1, 0x3

    return v1

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_19
        :pswitch_17
    .end packed-switch
.end method

.method private static getTrackChangeReason(I)I
    .registers 2
    .param p0, "trackSelectionReason"    # I

    .line 633
    packed-switch p0, :pswitch_data_c

    .line 643
    const/4 v0, 0x1

    return v0

    .line 637
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 639
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 635
    :pswitch_9
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private maybeAddSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V
    .registers 7
    .param p1, "events"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 326
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->get(I)I

    move-result v1

    .line 327
    .local v1, "event":I
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    .line 328
    .local v2, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    if-nez v1, :cond_17

    .line 329
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessionsWithTimelineChange(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    goto :goto_28

    .line 330
    :cond_17
    const/16 v3, 0xb

    if-ne v1, v3, :cond_23

    .line 331
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    iget v4, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->discontinuityReason:I

    invoke-interface {v3, v2, v4}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessionsWithDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    goto :goto_28

    .line 333
    :cond_23
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 325
    .end local v1    # "event":I
    .end local v2    # "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method

.method private maybeReportNetworkChange(J)V
    .registers 8
    .param p1, "realtimeMs"    # J

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 420
    .local v0, "networkType":I
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentNetworkType:I

    if-eq v0, v1, :cond_26

    .line 421
    iput v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentNetworkType:I

    .line 422
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    new-instance v2, Landroid/media/metrics/NetworkEvent$Builder;

    invoke-direct {v2}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    .line 424
    invoke-virtual {v2, v0}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long v3, p1, v3

    .line 425
    invoke-virtual {v2, v3, v4}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    move-result-object v2

    .line 422
    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackSession;->reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V

    .line 428
    :cond_26
    return-void
.end method

.method private maybeReportPlaybackError(J)V
    .registers 10
    .param p1, "realtimeMs"    # J

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingPlayerError:Lcom/google/android/exoplayer2/PlaybackException;

    .line 358
    .local v0, "error":Lcom/google/android/exoplayer2/PlaybackException;
    if-nez v0, :cond_5

    .line 359
    return-void

    .line 361
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->ioErrorType:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 362
    :goto_10
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->getErrorInfo(Lcom/google/android/exoplayer2/PlaybackException;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;

    move-result-object v1

    .line 364
    .local v1, "errorInfo":Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    new-instance v3, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    invoke-direct {v3}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    iget-wide v5, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long v5, p1, v5

    .line 366
    invoke-virtual {v3, v5, v6}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v3

    iget v5, v1, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;->errorCode:I

    .line 367
    invoke-virtual {v3, v5}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v3

    iget v5, v1, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$ErrorInfo;->subErrorCode:I

    .line 368
    invoke-virtual {v3, v5}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v3

    .line 369
    invoke-virtual {v3, v0}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v3

    .line 370
    invoke-virtual {v3}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v3

    .line 364
    invoke-virtual {v2, v3}, Landroid/media/metrics/PlaybackSession;->reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 371
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    .line 372
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingPlayerError:Lcom/google/android/exoplayer2/PlaybackException;

    .line 373
    return-void
.end method

.method private maybeReportPlaybackStateChange(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;J)V
    .registers 10
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "events"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;
    .param p3, "realtimeMs"    # J

    .line 431
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 432
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->isSeeking:Z

    .line 434
    :cond_a
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 435
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->hasFatalError:Z

    goto :goto_1e

    .line 436
    :cond_14
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 437
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->hasFatalError:Z

    .line 439
    :cond_1e
    :goto_1e
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->resolveNewPlaybackState(Lcom/google/android/exoplayer2/Player;)I

    move-result v0

    .line 440
    .local v0, "newPlaybackState":I
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eq v2, v0, :cond_46

    .line 441
    iput v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentPlaybackState:I

    .line 442
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    .line 443
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    new-instance v2, Landroid/media/metrics/PlaybackStateEvent$Builder;

    invoke-direct {v2}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    iget v3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentPlaybackState:I

    .line 445
    invoke-virtual {v2, v3}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long v3, p3, v3

    .line 446
    invoke-virtual {v2, v3, v4}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    .line 447
    invoke-virtual {v2}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v2

    .line 443
    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackSession;->reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V

    .line 449
    :cond_46
    return-void
.end method

.method private maybeReportTrackChanges(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;J)V
    .registers 11
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "events"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;
    .param p3, "realtimeMs"    # J

    .line 376
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    .line 377
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;

    move-result-object v1

    .line 378
    .local v1, "tracks":Lcom/google/android/exoplayer2/Tracks;
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Tracks;->isTypeSelected(I)Z

    move-result v0

    .line 379
    .local v0, "isVideoSelected":Z
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Tracks;->isTypeSelected(I)Z

    move-result v3

    .line 380
    .local v3, "isAudioSelected":Z
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/Tracks;->isTypeSelected(I)Z

    move-result v4

    .line 381
    .local v4, "isTextSelected":Z
    if-nez v0, :cond_20

    if-nez v3, :cond_20

    if-eqz v4, :cond_30

    .line 383
    :cond_20
    const/4 v5, 0x0

    if-nez v0, :cond_26

    .line 384
    invoke-direct {p0, p3, p4, v2, v5}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeUpdateVideoFormat(JLcom/google/android/exoplayer2/Format;I)V

    .line 386
    :cond_26
    if-nez v3, :cond_2b

    .line 387
    invoke-direct {p0, p3, p4, v2, v5}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeUpdateAudioFormat(JLcom/google/android/exoplayer2/Format;I)V

    .line 389
    :cond_2b
    if-nez v4, :cond_30

    .line 390
    invoke-direct {p0, p3, p4, v2, v5}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeUpdateTextFormat(JLcom/google/android/exoplayer2/Format;I)V

    .line 394
    .end local v0    # "isVideoSelected":Z
    .end local v1    # "tracks":Lcom/google/android/exoplayer2/Tracks;
    .end local v3    # "isAudioSelected":Z
    .end local v4    # "isTextSelected":Z
    :cond_30
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4e

    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget v1, v1, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeUpdateVideoFormat(JLcom/google/android/exoplayer2/Format;I)V

    .line 398
    iput-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 400
    :cond_4e
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 401
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget v1, v1, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeUpdateAudioFormat(JLcom/google/android/exoplayer2/Format;I)V

    .line 403
    iput-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 405
    :cond_63
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 406
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget v1, v1, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeUpdateTextFormat(JLcom/google/android/exoplayer2/Format;I)V

    .line 408
    iput-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 410
    :cond_78
    return-void
.end method

.method private maybeUpdateAudioFormat(JLcom/google/android/exoplayer2/Format;I)V
    .registers 11
    .param p1, "realtimeMs"    # J
    .param p3, "audioFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 503
    return-void

    .line 505
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_10

    if-nez p4, :cond_10

    .line 506
    const/4 p4, 0x1

    .line 508
    :cond_10
    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 509
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLcom/google/android/exoplayer2/Format;I)V

    .line 511
    return-void
.end method

.method private maybeUpdateMetricsBuilderValues(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V
    .registers 6
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "events"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 340
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 341
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v1, :cond_16

    .line 342
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeUpdateTimelineMetadata(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 345
    .end local v0    # "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    :cond_16
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_3e

    .line 346
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->getDrmInitData(Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v0

    .line 347
    .local v0, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    if-eqz v0, :cond_3e

    .line 348
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->getDrmType(Lcom/google/android/exoplayer2/drm/DrmInitData;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 351
    .end local v0    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_3e
    const/16 v0, 0x3f3

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 352
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->audioUnderruns:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->audioUnderruns:I

    .line 354
    :cond_4c
    return-void
.end method

.method private maybeUpdateTextFormat(JLcom/google/android/exoplayer2/Format;I)V
    .registers 11
    .param p1, "realtimeMs"    # J
    .param p3, "textFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentTextFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 516
    return-void

    .line 518
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentTextFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_10

    if-nez p4, :cond_10

    .line 519
    const/4 p4, 0x1

    .line 521
    :cond_10
    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentTextFormat:Lcom/google/android/exoplayer2/Format;

    .line 522
    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLcom/google/android/exoplayer2/Format;I)V

    .line 524
    return-void
.end method

.method private maybeUpdateTimelineMetadata(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 10
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "metricsBuilder"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 583
    .local v0, "metricsBuilder":Landroid/media/metrics/PlaybackMetrics$Builder;
    if-nez p2, :cond_5

    .line 584
    return-void

    .line 586
    :cond_5
    iget-object v1, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 587
    .local v1, "periodIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 588
    return-void

    .line 590
    :cond_f
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 591
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 592
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->getStreamType(Lcom/google/android/exoplayer2/MediaItem;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 593
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_52

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    if-nez v2, :cond_52

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v2, :cond_52

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 596
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result v2

    if-nez v2, :cond_52

    .line 597
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/media/metrics/PlaybackMetrics$Builder;->setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 599
    :cond_52
    nop

    .line 600
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5e

    const/4 v2, 0x2

    goto :goto_5f

    :cond_5e
    const/4 v2, 0x1

    .line 599
    :goto_5f
    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 601
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    .line 602
    return-void
.end method

.method private maybeUpdateVideoFormat(JLcom/google/android/exoplayer2/Format;I)V
    .registers 11
    .param p1, "realtimeMs"    # J
    .param p3, "videoFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 490
    return-void

    .line 492
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_10

    if-nez p4, :cond_10

    .line 493
    const/4 p4, 0x1

    .line 495
    :cond_10
    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentVideoFormat:Lcom/google/android/exoplayer2/Format;

    .line 496
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLcom/google/android/exoplayer2/Format;I)V

    .line 498
    return-void
.end method

.method private reportTrackChangeEvent(IJLcom/google/android/exoplayer2/Format;I)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "realtimeMs"    # J
    .param p4, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I

    .line 531
    new-instance v0, Landroid/media/metrics/TrackChangeEvent$Builder;

    invoke-direct {v0, p1}, Landroid/media/metrics/TrackChangeEvent$Builder;-><init>(I)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long v1, p2, v1

    .line 532
    invoke-virtual {v0, v1, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object v0

    .line 533
    .local v0, "builder":Landroid/media/metrics/TrackChangeEvent$Builder;
    const/4 v1, 0x1

    if-eqz p4, :cond_8d

    .line 534
    invoke-virtual {v0, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 535
    invoke-static {p5}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->getTrackChangeReason(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 536
    iget-object v2, p4, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 538
    iget-object v2, p4, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 540
    :cond_23
    iget-object v2, p4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 541
    iget-object v2, p4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 543
    :cond_2c
    iget-object v2, p4, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-eqz v2, :cond_35

    .line 544
    iget-object v2, p4, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 546
    :cond_35
    iget v2, p4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3f

    .line 547
    iget v2, p4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 549
    :cond_3f
    iget v2, p4, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v2, v3, :cond_48

    .line 550
    iget v2, p4, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 552
    :cond_48
    iget v2, p4, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v2, v3, :cond_51

    .line 553
    iget v2, p4, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 555
    :cond_51
    iget v2, p4, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v2, v3, :cond_5a

    .line 556
    iget v2, p4, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 558
    :cond_5a
    iget v2, p4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v2, v3, :cond_63

    .line 559
    iget v2, p4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 561
    :cond_63
    iget-object v2, p4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v2, :cond_7f

    .line 562
    iget-object v2, p4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 563
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->getLanguageAndRegion(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 564
    .local v2, "languageAndRegion":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 565
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_7f

    .line 566
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 569
    .end local v2    # "languageAndRegion":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7f
    iget v2, p4, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_91

    .line 570
    iget v2, p4, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_91

    .line 573
    :cond_8d
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 575
    :cond_91
    :goto_91
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    .line 576
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0}, Landroid/media/metrics/TrackChangeEvent$Builder;->build()Landroid/media/metrics/TrackChangeEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackSession;->reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V

    .line 577
    return-void
.end method

.method private resolveNewPlaybackState(Lcom/google/android/exoplayer2/Player;)I
    .registers 6
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 452
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    .line 453
    .local v0, "playerPlaybackState":I
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->isSeeking:Z

    if-eqz v1, :cond_a

    .line 455
    const/4 v1, 0x5

    return v1

    .line 456
    :cond_a
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->hasFatalError:Z

    if-eqz v1, :cond_11

    .line 457
    const/16 v1, 0xd

    return v1

    .line 458
    :cond_11
    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 459
    const/16 v1, 0xb

    return v1

    .line 460
    :cond_17
    const/4 v2, 0x2

    if-ne v0, v2, :cond_35

    .line 461
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eqz v1, :cond_34

    if-ne v1, v2, :cond_21

    goto :goto_34

    .line 465
    :cond_21
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v1

    if-nez v1, :cond_29

    .line 466
    const/4 v1, 0x7

    return v1

    .line 468
    :cond_29
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackSuppressionReason()I

    move-result v1

    if-eqz v1, :cond_32

    .line 469
    const/16 v1, 0xa

    goto :goto_33

    .line 470
    :cond_32
    const/4 v1, 0x6

    .line 468
    :goto_33
    return v1

    .line 463
    :cond_34
    :goto_34
    return v2

    .line 471
    :cond_35
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4a

    .line 472
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 473
    return v1

    .line 475
    :cond_3f
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackSuppressionReason()I

    move-result v1

    if-eqz v1, :cond_48

    .line 476
    const/16 v2, 0x9

    goto :goto_49

    .line 477
    :cond_48
    nop

    .line 475
    :goto_49
    return v2

    .line 478
    :cond_4a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eqz v1, :cond_54

    .line 482
    const/16 v1, 0xc

    return v1

    .line 484
    :cond_54
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->currentPlaybackState:I

    return v1
.end method


# virtual methods
.method public getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0}, Landroid/media/metrics/PlaybackSession;->getSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    return-object v0
.end method

.method public onAdPlaybackStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "contentSessionId"    # Ljava/lang/String;
    .param p3, "adSessionId"    # Ljava/lang/String;

    .line 190
    return-void
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .registers 15
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "totalLoadTimeMs"    # I
    .param p3, "totalBytesLoaded"    # J
    .param p5, "bitrateEstimate"    # J

    .line 229
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_4a

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 232
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 231
    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->getSessionForMediaPeriodId(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 234
    .local v1, "prevBandwidthBytes":Ljava/lang/Long;
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 235
    .local v2, "prevBandwidthTimeMs":Ljava/lang/Long;
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    .line 236
    const-wide/16 v4, 0x0

    if-nez v1, :cond_2c

    move-wide v6, v4

    goto :goto_30

    :cond_2c
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_30
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 235
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    .line 238
    if-nez v2, :cond_3d

    goto :goto_41

    :cond_3d
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_41
    int-to-long v6, p2

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 237
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .end local v0    # "sessionId":Ljava/lang/String;
    .end local v1    # "prevBandwidthBytes":Ljava/lang/Long;
    .end local v2    # "prevBandwidthTimeMs":Ljava/lang/Long;
    :cond_4a
    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method public onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 9
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 244
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-nez v0, :cond_5

    .line 247
    return-void

    .line 249
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v1, p2, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 251
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Format;

    iget v2, p2, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionReason:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    iget-object v4, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 254
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 253
    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->getSessionForMediaPeriodId(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;-><init>(Lcom/google/android/exoplayer2/Format;ILjava/lang/String;)V

    .line 255
    .local v0, "update":Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;
    iget v1, p2, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    packed-switch v1, :pswitch_data_34

    goto :goto_33

    .line 264
    :pswitch_2a
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 265
    goto :goto_33

    .line 261
    :pswitch_2d
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 262
    goto :goto_33

    .line 258
    :pswitch_30
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 259
    nop

    .line 269
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2d
        :pswitch_30
        :pswitch_2a
    .end packed-switch
.end method

.method public synthetic onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V

    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V
    .registers 7
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "events"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;

    .line 307
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 308
    return-void

    .line 310
    :cond_7
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeAddSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 313
    .local v0, "realtimeMs":J
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeUpdateMetricsBuilderValues(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V

    .line 314
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeReportPlaybackError(J)V

    .line 315
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeReportTrackChanges(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;J)V

    .line 316
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeReportNetworkChange(J)V

    .line 317
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeReportPlaybackStateChange(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;J)V

    .line 319
    const/16 v2, 0x404

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 320
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;->finishAllSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 322
    :cond_2e
    return-void
.end method

.method public synthetic onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 7
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p4, "error"    # Ljava/io/IOException;
    .param p5, "wasCanceled"    # Z

    .line 297
    iget v0, p3, Lcom/google/android/exoplayer2/source/MediaLoadData;->dataType:I

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->ioErrorType:I

    .line 298
    return-void
.end method

.method public synthetic onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 3
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Lcom/google/android/exoplayer2/PlaybackException;

    .line 302
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingPlayerError:Lcom/google/android/exoplayer2/PlaybackException;

    .line 303
    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .registers 6
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "oldPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p3, "newPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p4, "reason"    # I

    .line 213
    const/4 v0, 0x1

    if-ne p4, v0, :cond_5

    .line 214
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->isSeeking:Z

    .line 216
    :cond_5
    iput p4, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->discontinuityReason:I

    .line 217
    return-void
.end method

.method public synthetic onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onSessionActive(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 5
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 175
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 177
    return-void

    .line 179
    :cond_d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->finishCurrentSession()V

    .line 180
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    .line 181
    new-instance v0, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-direct {v0}, Landroid/media/metrics/PlaybackMetrics$Builder;-><init>()V

    .line 183
    const-string v1, "ExoPlayerLib"

    invoke-virtual {v0, v1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object v0

    .line 184
    const-string v1, "2.19.1"

    invoke-virtual {v0, v1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 185
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->maybeUpdateTimelineMetadata(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 186
    return-void
.end method

.method public onSessionCreated(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 3
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 171
    return-void
.end method

.method public onSessionFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "automaticTransitionToNextPlayback"    # Z

    .line 195
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    .line 196
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_18

    .line 199
    :cond_15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->finishCurrentSession()V

    .line 201
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public synthetic onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public synthetic onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 5
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 222
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->droppedFrames:I

    iget v1, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->droppedFrames:I

    .line 223
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->playedFrames:I

    iget v1, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->playedFrames:I

    .line 224
    return-void
.end method

.method public synthetic onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 8
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "videoSize"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 274
    .local v0, "pendingVideoFormat":Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;
    if-eqz v0, :cond_2c

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2c

    .line 275
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplayer2/Format;

    .line 278
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    .line 279
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    .line 280
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 282
    .local v1, "formatWithHeightAndWidth":Lcom/google/android/exoplayer2/Format;
    new-instance v2, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget v3, v0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    iget-object v4, v0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;->sessionId:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;-><init>(Lcom/google/android/exoplayer2/Format;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 288
    .end local v1    # "formatWithHeightAndWidth":Lcom/google/android/exoplayer2/Format;
    :cond_2c
    return-void
.end method

.method public synthetic onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method
