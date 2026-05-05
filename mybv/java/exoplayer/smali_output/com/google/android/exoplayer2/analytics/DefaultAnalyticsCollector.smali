.class public Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final eventTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private isSeeking:Z

.field private listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ListenerSet<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private player:Lcom/google/android/exoplayer2/Player;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$7qCi01KBI5__9dONi6GjpRtM-Pc(Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->releaseInternal()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/util/Clock;)V
    .registers 5
    .param p1, "clock"    # Lcom/google/android/exoplayer2/util/Clock;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/Clock;

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda54;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda54;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 98
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 99
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;-><init>(Lcom/google/android/exoplayer2/Timeline$Period;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    .line 101
    return-void
.end method

.method private generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 8
    .param p1, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 949
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 953
    move-object v1, v0

    goto :goto_10

    .line 954
    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getMediaPeriodIdTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    :goto_10
    nop

    .line 955
    .local v1, "knownTimeline":Lcom/google/android/exoplayer2/Timeline;
    if-eqz p1, :cond_25

    if-nez v1, :cond_16

    goto :goto_25

    .line 962
    :cond_16
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 963
    .local v0, "windowIndex":I
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    return-object v2

    .line 956
    .end local v0    # "windowIndex":I
    :cond_25
    :goto_25
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v2

    .line 957
    .local v2, "windowIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    .line 958
    .local v3, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v4

    if-ge v2, v4, :cond_39

    const/4 v4, 0x1

    goto :goto_3a

    :cond_39
    const/4 v4, 0x0

    .line 959
    .local v4, "windowIsInTimeline":Z
    :goto_3a
    nop

    .line 960
    if-eqz v4, :cond_3f

    move-object v5, v3

    goto :goto_41

    :cond_3f
    sget-object v5, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    .line 959
    :goto_41
    invoke-virtual {p0, v5, v2, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateLoadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 2

    .line 975
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getLoadingMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 7
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 980
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_21

    .line 982
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 983
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getMediaPeriodIdTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    if-eqz v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 984
    .local v0, "isInKnownTimeline":Z
    :goto_13
    if-eqz v0, :cond_1a

    .line 985
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    goto :goto_20

    .line 986
    :cond_1a
    sget-object v1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    .line 984
    :goto_20
    return-object v1

    .line 988
    .end local v0    # "isInKnownTimeline":Z
    :cond_21
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    .line 989
    .local v2, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    if-ge p1, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 990
    .local v0, "windowIsInTimeline":Z
    :goto_2f
    nop

    .line 991
    if-eqz v0, :cond_34

    move-object v1, v2

    goto :goto_36

    :cond_34
    sget-object v1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    .line 990
    :goto_36
    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, v3}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    return-object v1
.end method

.method private generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 2

    .line 967
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getPlayingMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 2

    .line 971
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getReadingMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private getEventTimeForErrorEvent(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 5
    .param p1, "error"    # Lcom/google/android/exoplayer2/PlaybackException;

    .line 995
    instance-of v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v0, :cond_17

    .line 996
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 997
    .local v0, "exoError":Lcom/google/android/exoplayer2/ExoPlaybackException;
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    if-eqz v1, :cond_17

    .line 998
    new-instance v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriodId;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    return-object v1

    .line 1001
    .end local v0    # "exoError":Lcom/google/android/exoplayer2/ExoPlaybackException;
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$0(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .registers 2
    .param p0, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p1, "flags"    # Lcom/google/android/exoplayer2/util/FlagSet;

    .line 96
    return-void
.end method

.method static synthetic lambda$notifySeekStarted$2(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 2
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 166
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onAudioAttributesChanged$55(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 742
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$onAudioCodecError$11(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "audioCodecError"    # Ljava/lang/Exception;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 267
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onAudioDecoderInitialized$4(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 14
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializationDurationMs"    # J
    .param p4, "initializedTimestampMs"    # J
    .param p6, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 192
    invoke-interface {p6, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    .line 193
    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    .line 195
    return-void
.end method

.method static synthetic lambda$onAudioDecoderReleased$8(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 238
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAudioDisabled$9(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 248
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 249
    return-void
.end method

.method static synthetic lambda$onAudioEnabled$3(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 179
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 180
    return-void
.end method

.method static synthetic lambda$onAudioInputFormatChanged$5(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 207
    invoke-interface {p3, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    .line 208
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 209
    return-void
.end method

.method static synthetic lambda$onAudioPositionAdvancing$6(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "playoutStartSystemTimeMs"    # J
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 218
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onAudioSessionIdChanged$54(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "audioSessionId"    # I
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 733
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioSessionIdChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onAudioSinkError$10(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "audioSinkError"    # Ljava/lang/Exception;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 258
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onAudioUnderrun$7(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 14
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J
    .param p6, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 229
    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method static synthetic lambda$onAvailableCommandsChanged$33(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "availableCommands"    # Lcom/google/android/exoplayer2/Player$Commands;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 524
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$onBandwidthSample$60(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 14
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "elapsedMs"    # I
    .param p2, "bytesTransferred"    # J
    .param p4, "bitrateEstimate"    # J
    .param p6, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 810
    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method static synthetic lambda$onCues$51(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "cues"    # Ljava/util/List;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 708
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onCues$52(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "cueGroup"    # Lcom/google/android/exoplayer2/text/CueGroup;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 715
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method static synthetic lambda$onDeviceInfoChanged$58(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "deviceInfo"    # Lcom/google/android/exoplayer2/DeviceInfo;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 778
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$onDeviceVolumeChanged$59(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "volume"    # I
    .param p2, "muted"    # Z
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 787
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method static synthetic lambda$onDownstreamFormatChanged$28(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 461
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysLoaded$62(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 2
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 835
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysRemoved$65(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 2
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 863
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysRestored$64(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 2
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 854
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmSessionAcquired$61(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "state"    # I
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 824
    invoke-interface {p2, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 825
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    .line 826
    return-void
.end method

.method static synthetic lambda$onDrmSessionManagerError$63(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 845
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onDrmSessionReleased$66(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 2
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 872
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDroppedFrames$16(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 5
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "count"    # I
    .param p2, "elapsedMs"    # J
    .param p4, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 327
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V

    return-void
.end method

.method static synthetic lambda$onIsLoadingChanged$32(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "isLoading"    # Z
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 513
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    .line 514
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    .line 515
    return-void
.end method

.method static synthetic lambda$onIsPlayingChanged$38(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "isPlaying"    # Z
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 573
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onLoadCanceled$25(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 425
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onLoadCompleted$24(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 412
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onLoadError$26(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 12
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p3, "error"    # Ljava/io/IOException;
    .param p4, "wasCanceled"    # Z
    .param p5, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 441
    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method static synthetic lambda$onLoadStarted$23(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p2, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 399
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onMaxSeekToPreviousPositionChanged$47(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "maxSeekToPreviousPositionMs"    # J
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 673
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onMediaItemTransition$30(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "reason"    # I
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 487
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$onMediaMetadataChanged$48(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 682
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onMetadata$50(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 700
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method static synthetic lambda$onPlayWhenReadyChanged$36(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 553
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method static synthetic lambda$onPlaybackParametersChanged$44(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 645
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$onPlaybackStateChanged$35(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "playbackState"    # I
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 543
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onPlaybackSuppressionReasonChanged$37(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "playbackSuppressionReason"    # I
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 564
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onPlayerError$41(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "error"    # Lcom/google/android/exoplayer2/PlaybackException;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 600
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onPlayerErrorChanged$42(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "error"    # Lcom/google/android/exoplayer2/PlaybackException;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 609
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onPlayerStateChanged$34(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 534
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method static synthetic lambda$onPlaylistMetadataChanged$49(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "playlistMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 691
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onPositionDiscontinuity$43(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 5
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "reason"    # I
    .param p2, "oldPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p3, "newPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p4, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 634
    invoke-interface {p4, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    .line 635
    invoke-interface {p4, p0, p2, p3, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    .line 636
    return-void
.end method

.method static synthetic lambda$onRenderedFirstFrame$19(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;JLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 5
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "output"    # Ljava/lang/Object;
    .param p2, "renderTimeMs"    # J
    .param p4, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 356
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic lambda$onRepeatModeChanged$39(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "repeatMode"    # I
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 582
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onSeekBackIncrementChanged$45(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "seekBackIncrementMs"    # J
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 654
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onSeekForwardIncrementChanged$46(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "seekForwardIncrementMs"    # J
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 663
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onShuffleModeEnabledChanged$40(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "shuffleModeEnabled"    # Z
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 591
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onSkipSilenceEnabledChanged$53(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "skipSilenceEnabled"    # Z
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 724
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onSurfaceSizeChanged$22(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 384
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method static synthetic lambda$onTimelineChanged$29(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "reason"    # I
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 477
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onTrackSelectionParametersChanged$57(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 769
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$onTracksChanged$31(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "tracks"    # Lcom/google/android/exoplayer2/Tracks;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 496
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method static synthetic lambda$onUpstreamDiscarded$27(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 451
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onVideoCodecError$21(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "videoCodecError"    # Ljava/lang/Exception;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 375
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onVideoDecoderInitialized$14(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 14
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializationDurationMs"    # J
    .param p4, "initializedTimestampMs"    # J
    .param p6, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 301
    invoke-interface {p6, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    .line 302
    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    .line 304
    return-void
.end method

.method static synthetic lambda$onVideoDecoderReleased$17(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 336
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onVideoDisabled$18(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 346
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 347
    return-void
.end method

.method static synthetic lambda$onVideoEnabled$13(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 288
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 289
    return-void
.end method

.method static synthetic lambda$onVideoFrameProcessingOffset$20(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 5
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "totalProcessingOffsetUs"    # J
    .param p3, "frameCount"    # I
    .param p4, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 366
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method static synthetic lambda$onVideoInputFormatChanged$15(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .param p3, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 316
    invoke-interface {p3, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    .line 317
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 318
    return-void
.end method

.method static synthetic lambda$onVideoSizeChanged$56(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 9
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "videoSize"    # Lcom/google/android/exoplayer2/video/VideoSize;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 753
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 754
    iget v2, p1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    iget v4, p1, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    iget v5, p1, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V

    .line 760
    return-void
.end method

.method static synthetic lambda$onVolumeChanged$12(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;FLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "volume"    # F
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 276
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method

.method static synthetic lambda$releaseInternal$67(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 2
    .param p0, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 944
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method private releaseInternal()V
    .registers 4

    .line 940
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 941
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    const/16 v2, 0x404

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 945
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->release()V

    .line 946
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 120
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->add(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method protected final generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 2

    .line 893
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getCurrentPlayerMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method protected final generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 32
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    .line 900
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 902
    const/4 v1, 0x0

    move-object v12, v1

    .end local p3    # "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .local v1, "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    goto :goto_11

    .line 900
    .end local v1    # "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .restart local p3    # "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :cond_f
    move-object/from16 v12, p3

    .line 904
    .end local p3    # "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .local v12, "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :goto_11
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v16

    .line 906
    .local v16, "realtimeMs":J
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 907
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 908
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v15, v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    move/from16 v18, v1

    .line 909
    .local v18, "isInCurrentWindow":Z
    const-wide/16 v4, 0x0

    if-eqz v12, :cond_61

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 910
    if-eqz v18, :cond_53

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 912
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentAdGroupIndex()I

    move-result v1

    iget v6, v12, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v1, v6, :cond_53

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 913
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentAdIndexInAdGroup()I

    move-result v1

    iget v6, v12, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v1, v6, :cond_53

    goto :goto_54

    :cond_53
    const/4 v2, 0x0

    :goto_54
    move v1, v2

    .line 915
    .local v1, "isCurrentAd":Z
    if-eqz v1, :cond_5d

    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v4

    :cond_5d
    move-wide v1, v4

    .line 916
    .local v1, "eventPositionMs":J
    move-wide/from16 v19, v1

    goto :goto_80

    .end local v1    # "eventPositionMs":J
    :cond_61
    if-eqz v18, :cond_6c

    .line 917
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v1

    move-wide/from16 v19, v1

    .restart local v1    # "eventPositionMs":J
    goto :goto_80

    .line 922
    .end local v1    # "eventPositionMs":J
    :cond_6c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_73

    goto :goto_7d

    :cond_73
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v14, v15, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v4

    :goto_7d
    move-wide v1, v4

    move-wide/from16 v19, v1

    .line 925
    .local v19, "eventPositionMs":J
    :goto_80
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getCurrentPlayerMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v21

    .line 926
    .local v21, "currentMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    new-instance v22, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 932
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v9

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 933
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v10

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 935
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v23

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 936
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getTotalBufferedDuration()J

    move-result-wide v25

    move-object/from16 v1, v22

    move-wide/from16 v2, v16

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object v6, v12

    move-wide/from16 v7, v19

    move-object/from16 v11, v21

    move-object/from16 v27, v12

    .end local v12    # "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .local v27, "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    move-wide/from16 v12, v23

    move-wide/from16 v14, v25

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;-><init>(JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    .line 926
    return-object v22
.end method

.method synthetic lambda$setPlayer$1$com-google-android-exoplayer2-analytics-DefaultAnalyticsCollector(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .registers 6
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
    .param p3, "flags"    # Lcom/google/android/exoplayer2/util/FlagSet;

    .line 140
    new-instance v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-direct {v0, p3, v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;Landroid/util/SparseArray;)V

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public final notifySeekStarted()V
    .registers 4

    .line 162
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    if-nez v0, :cond_14

    .line 163
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 164
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    .line 165
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 168
    .end local v0    # "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    :cond_14
    return-void
.end method

.method public final onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 5
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 738
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 739
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda36;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda36;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    const/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 743
    return-void
.end method

.method public final onAudioCodecError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "audioCodecError"    # Ljava/lang/Exception;

    .line 263
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 264
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda55;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda55;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 v2, 0x405

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 268
    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 15
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 187
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 188
    .local v7, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v8, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/16 v0, 0x3f0

    invoke-virtual {p0, v7, v0, v8}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 196
    return-void
.end method

.method public final onAudioDecoderReleased(Ljava/lang/String;)V
    .registers 5
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 234
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 235
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    const/16 v2, 0x3f4

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 239
    return-void
.end method

.method public final onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 5
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 243
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 244
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda56;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda56;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    const/16 v2, 0x3f5

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 250
    return-void
.end method

.method public final onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 5
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 174
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 175
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    const/16 v2, 0x3ef

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 181
    return-void
.end method

.method public final onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 6
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 202
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 203
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda44;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda44;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    const/16 v2, 0x3f1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 210
    return-void
.end method

.method public final onAudioPositionAdvancing(J)V
    .registers 6
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 214
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 215
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda29;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda29;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    const/16 v2, 0x3f2

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 219
    return-void
.end method

.method public final onAudioSessionIdChanged(I)V
    .registers 5
    .param p1, "audioSessionId"    # I

    .line 729
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 730
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda23;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda23;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    const/16 v2, 0x15

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 734
    return-void
.end method

.method public final onAudioSinkError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "audioSinkError"    # Ljava/lang/Exception;

    .line 254
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 255
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda37;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda37;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 v2, 0x3f6

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 259
    return-void
.end method

.method public final onAudioUnderrun(IJJ)V
    .registers 15
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 224
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 225
    .local v7, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v8, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 v0, 0x3f3

    invoke-virtual {p0, v7, v0, v8}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 230
    return-void
.end method

.method public onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .registers 5
    .param p1, "availableCommands"    # Lcom/google/android/exoplayer2/Player$Commands;

    .line 520
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 521
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda48;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda48;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 525
    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .registers 15
    .param p1, "elapsedMs"    # I
    .param p2, "bytesTransferred"    # J
    .param p4, "bitrateEstimate"    # J

    .line 805
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateLoadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 806
    .local v7, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v8, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda57;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda57;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 v0, 0x3ee

    invoke-virtual {p0, v7, v0, v8}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 811
    return-void
.end method

.method public onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 5
    .param p1, "cueGroup"    # Lcom/google/android/exoplayer2/text/CueGroup;

    .line 713
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 714
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda52;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda52;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V

    const/16 v2, 0x1b

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 716
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 706
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 707
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda66;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda66;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    const/16 v2, 0x1b

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 709
    return-void
.end method

.method public onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .registers 5
    .param p1, "deviceInfo"    # Lcom/google/android/exoplayer2/DeviceInfo;

    .line 774
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 775
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V

    const/16 v2, 0x1d

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 779
    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .registers 6
    .param p1, "volume"    # I
    .param p2, "muted"    # Z

    .line 783
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 784
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V

    const/16 v2, 0x1e

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 788
    return-void
.end method

.method public final onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 7
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 457
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 458
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;

    invoke-direct {v1, v0, p3}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    const/16 v2, 0x3ec

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 462
    return-void
.end method

.method public final onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 6
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 831
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 832
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda26;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda26;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    const/16 v2, 0x3ff

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 836
    return-void
.end method

.method public final onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 6
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 859
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 860
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    const/16 v2, 0x402

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 864
    return-void
.end method

.method public final onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 6
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 850
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 851
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda60;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda60;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    const/16 v2, 0x401

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 855
    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public final onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .registers 7
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "state"    # I

    .line 819
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 820
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda59;

    invoke-direct {v1, v0, p3}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda59;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    const/16 v2, 0x3fe

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 827
    return-void
.end method

.method public final onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .registers 7
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "error"    # Ljava/lang/Exception;

    .line 841
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 842
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda64;

    invoke-direct {v1, v0, p3}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda64;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 v2, 0x400

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 846
    return-void
.end method

.method public final onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 6
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 868
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 869
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    const/16 v2, 0x403

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 873
    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .registers 7
    .param p1, "count"    # I
    .param p2, "elapsedMs"    # J

    .line 323
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 324
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda42;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda42;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V

    const/16 v2, 0x3fa

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 328
    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .registers 3
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "events"    # Lcom/google/android/exoplayer2/Player$Events;

    .line 799
    return-void
.end method

.method public final onIsLoadingChanged(Z)V
    .registers 5
    .param p1, "isLoading"    # Z

    .line 508
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 509
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda61;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda61;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 516
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .registers 5
    .param p1, "isPlaying"    # Z

    .line 569
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 570
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 574
    return-void
.end method

.method public final onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 8
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 421
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 422
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;

    invoke-direct {v1, v0, p3, p4}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    const/16 v2, 0x3ea

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 426
    return-void
.end method

.method public final onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 8
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 408
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 409
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda68;

    invoke-direct {v1, v0, p3, p4}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda68;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 413
    return-void
.end method

.method public final onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 15
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v6

    .line 437
    .local v6, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v7, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda53;

    move-object v0, v7

    move-object v1, v6

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda53;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    const/16 v0, 0x3eb

    invoke-virtual {p0, v6, v0, v7}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 442
    return-void
.end method

.method public final onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 8
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventInfo"    # Lcom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 395
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 396
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;

    invoke-direct {v1, v0, p3, p4}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 400
    return-void
.end method

.method public onLoadingChanged(Z)V
    .registers 2
    .param p1, "isLoading"    # Z

    .line 503
    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .registers 6
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 668
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 669
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda24;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda24;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    const/16 v2, 0x12

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 674
    return-void
.end method

.method public final onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 6
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "reason"    # I

    .line 483
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 484
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 488
    return-void
.end method

.method public onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 5
    .param p1, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 678
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 679
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    const/16 v2, 0xe

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 683
    return-void
.end method

.method public final onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 5
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 696
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 697
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/16 v2, 0x1c

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 701
    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .registers 6
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 549
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 550
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda50;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda50;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 554
    return-void
.end method

.method public final onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 5
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 641
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 642
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda62;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda62;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    const/16 v2, 0xc

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 646
    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .registers 5
    .param p1, "playbackState"    # I

    .line 539
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 540
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 544
    return-void
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .registers 5
    .param p1, "playbackSuppressionReason"    # I

    .line 559
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 560
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda40;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda40;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 565
    return-void
.end method

.method public final onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 5
    .param p1, "error"    # Lcom/google/android/exoplayer2/PlaybackException;

    .line 596
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 597
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 601
    return-void
.end method

.method public onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 5
    .param p1, "error"    # Lcom/google/android/exoplayer2/PlaybackException;

    .line 605
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 606
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 610
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .registers 6
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .line 530
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 531
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 535
    return-void
.end method

.method public onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 5
    .param p1, "playlistMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 687
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 688
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda51;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda51;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    const/16 v2, 0xf

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 692
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 616
    return-void
.end method

.method public final onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .registers 7
    .param p1, "oldPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p2, "newPosition"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 625
    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    .line 628
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Player;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player;)V

    .line 629
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 630
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda67;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda67;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;)V

    const/16 v2, 0xb

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 637
    return-void
.end method

.method public onRenderedFirstFrame()V
    .registers 1

    .line 794
    return-void
.end method

.method public final onRenderedFirstFrame(Ljava/lang/Object;J)V
    .registers 7
    .param p1, "output"    # Ljava/lang/Object;
    .param p2, "renderTimeMs"    # J

    .line 352
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 353
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    const/16 v2, 0x1a

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 357
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .registers 5
    .param p1, "repeatMode"    # I

    .line 578
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 579
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda47;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda47;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 583
    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .registers 6
    .param p1, "seekBackIncrementMs"    # J

    .line 650
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 651
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 655
    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .registers 6
    .param p1, "seekForwardIncrementMs"    # J

    .line 659
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 660
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda19;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda19;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 664
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .registers 5
    .param p1, "shuffleModeEnabled"    # Z

    .line 587
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 588
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 592
    return-void
.end method

.method public final onSkipSilenceEnabledChanged(Z)V
    .registers 5
    .param p1, "skipSilenceEnabled"    # Z

    .line 720
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 721
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    const/16 v2, 0x17

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 725
    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 380
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 381
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    const/16 v2, 0x18

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 385
    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .registers 6
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "reason"    # I

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Player;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onTimelineChanged(Lcom/google/android/exoplayer2/Player;)V

    .line 473
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 474
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda65;

    invoke-direct {v1, v0, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda65;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 478
    return-void
.end method

.method public onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 5
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 765
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 766
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    const/16 v2, 0x13

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 770
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .registers 5
    .param p1, "tracks"    # Lcom/google/android/exoplayer2/Tracks;

    .line 492
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 493
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda32;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda32;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 497
    return-void
.end method

.method public final onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 7
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 447
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 448
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda45;

    invoke-direct {v1, v0, p3}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda45;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    const/16 v2, 0x3ed

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 452
    return-void
.end method

.method public final onVideoCodecError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "videoCodecError"    # Ljava/lang/Exception;

    .line 371
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 372
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 v2, 0x406

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 376
    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 15
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 296
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 297
    .local v7, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v8, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/16 v0, 0x3f8

    invoke-virtual {p0, v7, v0, v8}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 305
    return-void
.end method

.method public final onVideoDecoderReleased(Ljava/lang/String;)V
    .registers 5
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 332
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 333
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    const/16 v2, 0x3fb

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 337
    return-void
.end method

.method public final onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 5
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 341
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 342
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    const/16 v2, 0x3fc

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 348
    return-void
.end method

.method public final onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 5
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 283
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 284
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    const/16 v2, 0x3f7

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 290
    return-void
.end method

.method public final onVideoFrameProcessingOffset(JI)V
    .registers 7
    .param p1, "totalProcessingOffsetUs"    # J
    .param p3, "frameCount"    # I

    .line 361
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 362
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V

    const/16 v2, 0x3fd

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 367
    return-void
.end method

.method public final onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 6
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 311
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 312
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    const/16 v2, 0x3f9

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 319
    return-void
.end method

.method public final onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 5
    .param p1, "videoSize"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 748
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 749
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda31;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda31;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V

    const/16 v2, 0x19

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 761
    return-void
.end method

.method public final onVolumeChanged(F)V
    .registers 5
    .param p1, "volume"    # F

    .line 272
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 273
    .local v0, "eventTime":Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    const/16 v2, 0x16

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 277
    return-void
.end method

.method public release()V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda18;-><init>(Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->remove(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method protected final sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .registers 5
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "eventFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "I",
            "Lcom/google/android/exoplayer2/util/ListenerSet$Event<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener;",
            ">;)V"
        }
    .end annotation

    .line 887
    .local p3, "eventInvocation":Lcom/google/android/exoplayer2/util/ListenerSet$Event;, "Lcom/google/android/exoplayer2/util/ListenerSet$Event<Lcom/google/android/exoplayer2/analytics/AnalyticsListener;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 888
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 889
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;Landroid/os/Looper;)V
    .registers 5
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 134
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Player;

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda27;-><init>(Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;Lcom/google/android/exoplayer2/Player;)V

    .line 137
    invoke-virtual {v0, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->copy(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 141
    return-void
.end method

.method public setThrowsWhenUsingWrongThread(Z)V
    .registers 3
    .param p1, "throwsWhenUsingWrongThread"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->setThrowsWhenUsingWrongThread(Z)V

    .line 115
    return-void
.end method

.method public final updateMediaPeriodQueueInfo(Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 5
    .param p2, "readingPeriod"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation

    .line 154
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Player;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onQueueUpdated(Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Player;)V

    .line 155
    return-void
.end method
