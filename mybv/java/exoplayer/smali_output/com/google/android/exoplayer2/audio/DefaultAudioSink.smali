.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Api31;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Api23;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$OutputMode;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$OffloadMode;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AUDIO_TRACK_RETRY_DURATION_MS:I = 0x64

.field private static final AUDIO_TRACK_SMALLER_BUFFER_RETRY_SIZE:I = 0xf4240

.field public static final DEFAULT_PLAYBACK_SPEED:F = 1.0f

.field private static final DEFAULT_SKIP_SILENCE:Z = false

.field private static final ERROR_NATIVE_DEAD_OBJECT:I = -0x20

.field public static final MAX_PITCH:F = 8.0f

.field public static final MAX_PLAYBACK_SPEED:F = 8.0f

.field public static final MIN_PITCH:F = 0.1f

.field public static final MIN_PLAYBACK_SPEED:F = 0.1f

.field public static final OFFLOAD_MODE_DISABLED:I = 0x0

.field public static final OFFLOAD_MODE_ENABLED_GAPLESS_DISABLED:I = 0x3

.field public static final OFFLOAD_MODE_ENABLED_GAPLESS_NOT_REQUIRED:I = 0x2

.field public static final OFFLOAD_MODE_ENABLED_GAPLESS_REQUIRED:I = 0x1

.field public static final OUTPUT_MODE_OFFLOAD:I = 0x1

.field public static final OUTPUT_MODE_PASSTHROUGH:I = 0x2

.field public static final OUTPUT_MODE_PCM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultAudioSink"

.field public static failOnSpuriousAudioTimestamp:Z

.field private static pendingReleaseCount:I

.field private static releaseExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final releaseExecutorLock:Ljava/lang/Object;


# instance fields
.field private afterDrainParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

.field private audioCapabilitiesReceiver:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

.field private final audioOffloadListener:Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

.field private audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

.field private final audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

.field private audioSessionId:I

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

.field private final audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

.field private auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

.field private avSyncHeader:Ljava/nio/ByteBuffer;

.field private bytesUntilNextAvSync:I

.field private final channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

.field private configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

.field private final context:Landroid/content/Context;

.field private final enableFloatOutput:Z

.field private externalAudioSessionIdProvided:Z

.field private framesPerEncodedSample:I

.field private handledEndOfStream:Z

.field private final initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder<",
            "Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;",
            ">;"
        }
    .end annotation
.end field

.field private inputBuffer:Ljava/nio/ByteBuffer;

.field private inputBufferAccessUnitCount:I

.field private isWaitingForOffloadEndOfStreamHandled:Z

.field private lastFeedElapsedRealtimeMs:J

.field private lastTunnelingAvSyncPresentationTimeUs:J

.field private listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

.field private mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

.field private final mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;",
            ">;"
        }
    .end annotation
.end field

.field private offloadDisabledUntilNextConfiguration:Z

.field private final offloadMode:I

.field private offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

.field private playbackLooper:Landroid/os/Looper;

.field private playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

.field private playing:Z

.field private preV21OutputBuffer:[B

.field private preV21OutputBufferOffset:I

.field private final preferAudioTrackPlaybackParams:Z

.field private preferredDevice:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;

.field private final releasingConditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private skipSilenceEnabled:Z

.field private startMediaTimeUs:J

.field private startMediaTimeUsNeedsInit:Z

.field private startMediaTimeUsNeedsSync:Z

.field private stoppedAudioTrack:Z

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private final toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

.field private tunneling:Z

.field private volume:F

.field private final writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder<",
            "Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;",
            ">;"
        }
    .end annotation
.end field

.field private writtenEncodedFrames:J

.field private writtenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 472
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    .line 474
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)V
    .registers 13
    .param p1, "builder"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.audioProcessorChain"
        }
    .end annotation

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    # getter for: Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->access$100(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->context:Landroid/content/Context;

    .line 553
    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v0

    goto :goto_14

    :cond_10
    # getter for: Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v0

    :goto_14
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 554
    # getter for: Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->access$300(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    .line 555
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_2c

    # getter for: Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableFloatOutput:Z

    .line 556
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3c

    # getter for: Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->access$500(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preferAudioTrackPlaybackParams:Z

    .line 557
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4a

    # getter for: Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->offloadMode:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->access$600(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)I

    move-result v0

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadMode:I

    .line 558
    iget-object v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 559
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    sget-object v1, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>(Lcom/google/android/exoplayer2/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 560
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 561
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    new-instance v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    .line 562
    new-instance v0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    .line 563
    new-instance v1, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    .line 564
    new-instance v2, Lcom/google/android/exoplayer2/audio/ToInt16PcmAudioProcessor;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/audio/ToInt16PcmAudioProcessor;-><init>()V

    .line 565
    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 567
    new-instance v0, Lcom/google/android/exoplayer2/audio/ToFloatPcmAudioProcessor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/ToFloatPcmAudioProcessor;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 568
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    .line 569
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 570
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 571
    new-instance v0, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;-><init>(IF)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    .line 572
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    sget-object v5, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    .line 575
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 576
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    .line 577
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 578
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    const-wide/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 580
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 582
    iget-object v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioOffloadListener:Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioOffloadListener:Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    .line 583
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;

    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 85
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 85
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 85
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 85
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    return-wide v0
.end method

.method static synthetic access$1600(III)Landroid/media/AudioFormat;
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 85
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/media/AudioTrack;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method private applyAudioProcessorPlaybackParametersAndSkipSilence(J)V
    .registers 13
    .param p1, "presentationTimeUs"    # J

    .line 1538
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1539
    nop

    .line 1540
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->shouldApplyAudioProcessorPlaybackParameters()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1541
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessorChain;->applyPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    goto :goto_18

    .line 1542
    :cond_16
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    :goto_18
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1543
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .local v0, "audioProcessorPlaybackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    goto :goto_1f

    .line 1545
    .end local v0    # "audioProcessorPlaybackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    :cond_1d
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1547
    .restart local v0    # "audioProcessorPlaybackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    :goto_1f
    nop

    .line 1548
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->shouldApplyAudioProcessorPlaybackParameters()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1549
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioProcessorChain;->applySkipSilenceEnabled(Z)Z

    move-result v1

    goto :goto_30

    .line 1550
    :cond_2f
    const/4 v1, 0x0

    :goto_30
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    .line 1551
    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    new-instance v9, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1554
    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 1555
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    .line 1551
    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1556
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setupAudioProcessors()V

    .line 1557
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v1, :cond_5b

    .line 1558
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onSkipSilenceEnabledChanged(Z)V

    .line 1560
    :cond_5b
    return-void
.end method

.method private applyMediaPositionParameters(J)J
    .registers 12
    .param p1, "positionUs"    # J

    .line 1600
    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 1601
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_22

    .line 1603
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_1

    .line 1606
    :cond_22
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    sub-long v0, p1, v0

    .line 1608
    .local v0, "playoutDurationSinceLastCheckpointUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    sget-object v3, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1609
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr v2, v0

    return-wide v2

    .line 1610
    :cond_3a
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1611
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    .line 1612
    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessorChain;->getMediaDuration(J)J

    move-result-wide v2

    .line 1613
    .local v2, "mediaDurationSinceLastCheckpointUs":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr v4, v2

    return-wide v4

    .line 1623
    .end local v2    # "mediaDurationSinceLastCheckpointUs":J
    :cond_4e
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 1624
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1625
    .local v2, "nextMediaPositionParameters":Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;
    iget-wide v3, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    sub-long/2addr v3, p1

    .line 1627
    .local v3, "playoutDurationUntilNextCheckpointUs":J
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v5, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v5, v5, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 1628
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v5

    .line 1631
    .local v5, "mediaDurationUntilNextCheckpointUs":J
    iget-wide v7, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    sub-long/2addr v7, v5

    return-wide v7
.end method

.method private applySkipping(J)J
    .registers 6
    .param p1, "positionUs"    # J

    .line 1636
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    .line 1637
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessorChain;->getSkippedOutputFrameCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 1636
    return-wide v0
.end method

.method private buildAudioTrack(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;
    .registers 5
    .param p1, "configuration"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1011
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 1012
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->buildAudioTrack(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object v0

    .line 1013
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioOffloadListener:Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    if-eqz v1, :cond_15

    .line 1014
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;->onExperimentalOffloadedPlayback(Z)V
    :try_end_15
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_15} :catch_16

    .line 1016
    :cond_15
    return-object v0

    .line 1017
    .end local v0    # "audioTrack":Landroid/media/AudioTrack;
    :catch_16
    move-exception v0

    .line 1018
    .local v0, "e":Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v1, :cond_1e

    .line 1019
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 1021
    :cond_1e
    throw v0
.end method

.method private buildAudioTrackWithRetry()Landroid/media/AudioTrack;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 990
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->buildAudioTrack(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_c
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 991
    :catch_d
    move-exception v0

    .line 993
    .local v0, "initialFailure":Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const v2, 0xf4240

    if-le v1, v2, :cond_28

    .line 994
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 995
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->copyWithBufferSize(I)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    move-result-object v1

    .line 997
    .local v1, "retryConfiguration":Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;
    :try_start_1d
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->buildAudioTrack(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;

    move-result-object v2

    .line 998
    .local v2, "audioTrack":Landroid/media/AudioTrack;
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;
    :try_end_23
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_1d .. :try_end_23} :catch_24

    .line 999
    return-object v2

    .line 1000
    .end local v2    # "audioTrack":Landroid/media/AudioTrack;
    :catch_24
    move-exception v2

    .line 1001
    .local v2, "retryFailure":Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1004
    .end local v1    # "retryConfiguration":Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;
    .end local v2    # "retryFailure":Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
    :cond_28
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->maybeDisableOffload()V

    .line 1005
    throw v0
.end method

.method private drainToEndOfStream()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x1

    if-nez v0, :cond_1a

    .line 1076
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_11

    .line 1077
    return v4

    .line 1079
    :cond_11
    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    .line 1080
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 1083
    :cond_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->queueEndOfStream()V

    .line 1084
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->processBuffers(J)V

    .line 1085
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_34

    .line 1086
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_34
    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    nop

    .line 1085
    :goto_37
    return v1
.end method

.method private getAudioCapabilities()Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .registers 4

    .line 1687
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->context:Landroid/content/Context;

    if-eqz v0, :cond_22

    .line 1690
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackLooper:Landroid/os/Looper;

    .line 1691
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->context:Landroid/content/Context;

    new-instance v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    .line 1693
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->register()Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 1695
    :cond_22
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    return-object v0
.end method

.method private static getAudioFormat(III)Landroid/media/AudioFormat;
    .registers 4
    .param p0, "sampleRate"    # I
    .param p1, "channelConfig"    # I
    .param p2, "encoding"    # I

    .line 1933
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1934
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1935
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1936
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1937
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 1933
    return-object v0
.end method

.method private static getAudioTrackMinBufferSize(III)I
    .registers 5
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "encoding"    # I

    .line 1942
    invoke-static {p0, p1, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 1943
    .local v0, "minBufferSize":I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1944
    return v0
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .registers 5
    .param p0, "encoding"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1720
    const/16 v0, 0x400

    const/4 v1, -0x1

    packed-switch p0, :pswitch_data_60

    .line 1764
    :pswitch_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1753
    :pswitch_1f
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/OpusUtil;->parseOggPacketAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 1745
    :pswitch_24
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/Ac4Util;->parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 1734
    :pswitch_29
    return v0

    .line 1736
    :pswitch_2a
    const/16 v0, 0x200

    return v0

    .line 1747
    :pswitch_2d
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1748
    .local v0, "syncframeOffset":I
    if-ne v0, v1, :cond_35

    .line 1749
    const/4 v1, 0x0

    goto :goto_3b

    .line 1750
    :cond_35
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    .line 1748
    :goto_3b
    return v1

    .line 1732
    .end local v0    # "syncframeOffset":I
    :pswitch_3c
    const/16 v0, 0x800

    return v0

    .line 1729
    :pswitch_3f
    return v0

    .line 1722
    :pswitch_40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getBigEndianInt(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 1723
    .local v0, "headerDataInBigEndian":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->parseMpegAudioFrameSampleCount(I)I

    move-result v2

    .line 1724
    .local v2, "frameCount":I
    if-eq v2, v1, :cond_4f

    .line 1727
    return v2

    .line 1725
    :cond_4f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1739
    .end local v0    # "headerDataInBigEndian":I
    .end local v2    # "frameCount":I
    :pswitch_55
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 1743
    :pswitch_5a
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    nop

    :pswitch_data_60
    .packed-switch 0x5
        :pswitch_5a
        :pswitch_5a
        :pswitch_55
        :pswitch_55
        :pswitch_40
        :pswitch_3f
        :pswitch_3c
        :pswitch_3c
        :pswitch_6
        :pswitch_2d
        :pswitch_2a
        :pswitch_29
        :pswitch_24
        :pswitch_5a
        :pswitch_6
        :pswitch_1f
    .end packed-switch
.end method

.method private getOffloadedPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .registers 5
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 1702
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_b

    .line 1703
    invoke-static {p1, p2}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0

    .line 1705
    :cond_b
    invoke-static {p1, p2}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1706
    const/4 v0, 0x0

    return v0

    .line 1709
    :cond_13
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_25

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "Pixel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1710
    const/4 v0, 0x2

    return v0

    .line 1712
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method private getSubmittedFrames()J
    .registers 5

    .line 1645
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v0, :cond_f

    .line 1646
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_11

    .line 1647
    :cond_f
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 1645
    :goto_11
    return-wide v0
.end method

.method private getWrittenFrames()J
    .registers 5

    .line 1651
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v0, :cond_f

    .line 1652
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_11

    .line 1653
    :cond_f
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 1651
    :goto_11
    return-wide v0
.end method

.method private initializeAudioTrack()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 779
    return v1

    .line 782
    :cond_a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->buildAudioTrackWithRetry()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 783
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 784
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->registerStreamEventCallbackV29(Landroid/media/AudioTrack;)V

    .line 785
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadMode:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_31

    .line 786
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v3, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 790
    :cond_31
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_40

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    if-eqz v0, :cond_40

    .line 791
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Api31;->setLogSessionIdOnAudioTrack(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 793
    :cond_40
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 794
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v4, 0x2

    const/4 v8, 0x1

    if-ne v0, v4, :cond_56

    const/4 v4, 0x1

    goto :goto_57

    :cond_56
    const/4 v4, 0x0

    :goto_57
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v5, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v6, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->setAudioTrack(Landroid/media/AudioTrack;ZIII)V

    .line 800
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternal()V

    .line 802
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;->effectId:I

    if-eqz v0, :cond_81

    .line 803
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;->effectId:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 804
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;->sendLevel:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 806
    :cond_81
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preferredDevice:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;

    if-eqz v0, :cond_92

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_92

    .line 807
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preferredDevice:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Api23;->setPreferredDeviceOnAudioTrack(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;)V

    .line 810
    :cond_92
    iput-boolean v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    .line 811
    return v8
.end method

.method private static isAudioTrackDeadObject(I)Z
    .registers 3
    .param p0, "status"    # I

    .line 1226
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_9

    const/4 v0, -0x6

    if-eq p0, v0, :cond_d

    :cond_9
    const/16 v0, -0x20

    if-ne p0, v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private isAudioTrackInitialized()Z
    .registers 2

    .line 1641
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isOffloadedPlayback(Landroid/media/AudioTrack;)Z
    .registers 3
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;

    .line 1716
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$releaseAudioTrackAsync$0(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/util/ConditionVariable;)V
    .registers 6
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "releasedConditionVariable"    # Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 1845
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 1846
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_22

    .line 1848
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 1849
    sget-object v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1850
    :try_start_d
    sget v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingReleaseCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingReleaseCount:I

    .line 1851
    if-nez v2, :cond_1c

    .line 1852
    sget-object v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1853
    sput-object v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1855
    :cond_1c
    monitor-exit v1

    .line 1856
    nop

    .line 1857
    return-void

    .line 1855
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_1f

    throw v0

    .line 1848
    :catchall_22
    move-exception v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 1849
    sget-object v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1850
    :try_start_29
    sget v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingReleaseCount:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingReleaseCount:I

    .line 1851
    if-nez v3, :cond_38

    .line 1852
    sget-object v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1853
    sput-object v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1855
    :cond_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_3a

    .line 1856
    throw v1

    .line 1855
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method private maybeDisableOffload()V
    .registers 2

    .line 1216
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputModeIsOffload()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1217
    return-void

    .line 1222
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    .line 1223
    return-void
.end method

.method private playPendingData()V
    .registers 4

    .line 1823
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    if-nez v0, :cond_18

    .line 1824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    .line 1825
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->handleEndOfStream(J)V

    .line 1826
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1827
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1829
    :cond_18
    return-void
.end method

.method private processBuffers(J)V
    .registers 6
    .param p1, "avSyncPresentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1049
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    :goto_f
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    .line 1050
    return-void

    .line 1053
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->isEnded()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1055
    :cond_1b
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    .local v1, "bufferToWrite":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1056
    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    .line 1057
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1059
    return-void

    .line 1062
    :cond_32
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_45

    .line 1065
    :cond_3d
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 1066
    .end local v1    # "bufferToWrite":Ljava/nio/ByteBuffer;
    goto :goto_13

    .line 1063
    .restart local v1    # "bufferToWrite":Ljava/nio/ByteBuffer;
    :cond_45
    :goto_45
    return-void

    .line 1067
    .end local v1    # "bufferToWrite":Ljava/nio/ByteBuffer;
    :cond_46
    return-void
.end method

.method private registerStreamEventCallbackV29(Landroid/media/AudioTrack;)V
    .registers 3
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .line 1027
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    if-nez v0, :cond_b

    .line 1030
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    .line 1032
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->register(Landroid/media/AudioTrack;)V

    .line 1033
    return-void
.end method

.method private static releaseAudioTrackAsync(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/util/ConditionVariable;)V
    .registers 5
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "releasedConditionVariable"    # Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 1836
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 1837
    sget-object v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1838
    :try_start_6
    sget-object v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_12

    .line 1839
    const-string v1, "ExoPlayer:AudioTrackReleaseThread"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1841
    :cond_12
    sget v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingReleaseCount:I

    .line 1842
    sget-object v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/util/ConditionVariable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1858
    monitor-exit v0

    .line 1859
    return-void

    .line 1858
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private resetSinkStateForFlush()V
    .registers 12

    .line 1474
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    .line 1475
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 1476
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 1477
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 1478
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 1479
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 1480
    new-instance v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    iput-object v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1483
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 1484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1485
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 1486
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 1487
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    .line 1488
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1489
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    .line 1490
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    .line 1491
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1492
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1493
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->resetTrimmedFrameCount()V

    .line 1494
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setupAudioProcessors()V

    .line 1495
    return-void
.end method

.method private setAudioProcessorPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 10
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1520
    new-instance v7, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    .line 1525
    .local v0, "mediaPositionParameters":Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1528
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_1d

    .line 1532
    :cond_1b
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->mediaPositionParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1534
    :goto_1d
    return-void
.end method

.method private setAudioTrackPlaybackParametersV23()V
    .registers 5

    .line 1499
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1500
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 1502
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 1503
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    .line 1504
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v0

    .line 1505
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object v0

    .line 1507
    .local v0, "playbackParams":Landroid/media/PlaybackParams;
    :try_start_24
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_29} :catch_2a

    .line 1510
    goto :goto_32

    .line 1508
    :catch_2a
    move-exception v1

    .line 1509
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "DefaultAudioSink"

    const-string v3, "Failed to set playback params"

    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1512
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_32
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 1514
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1515
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->setAudioTrackPlaybackSpeed(F)V

    .line 1517
    .end local v0    # "playbackParams":Landroid/media/PlaybackParams;
    :cond_54
    return-void
.end method

.method private setVolumeInternal()V
    .registers 3

    .line 1355
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1c

    .line 1357
    :cond_7
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    .line 1358
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternalV21(Landroid/media/AudioTrack;F)V

    goto :goto_1c

    .line 1360
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternalV3(Landroid/media/AudioTrack;F)V

    .line 1362
    :goto_1c
    return-void
.end method

.method private static setVolumeInternalV21(Landroid/media/AudioTrack;F)V
    .registers 2
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F

    .line 1815
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1816
    return-void
.end method

.method private static setVolumeInternalV3(Landroid/media/AudioTrack;F)V
    .registers 2
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F

    .line 1819
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 1820
    return-void
.end method

.method private setupAudioProcessors()V
    .registers 2

    .line 768
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    .line 769
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->flush()V

    .line 770
    return-void
.end method

.method private shouldApplyAudioProcessorPlaybackParameters()Z
    .registers 2

    .line 1574
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 1576
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->shouldUseFloatOutput(I)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1574
    :goto_19
    return v0
.end method

.method private shouldUseFloatOutput(I)Z
    .registers 3
    .param p1, "pcmEncoding"    # I

    .line 1590
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableFloatOutput:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->isEncodingHighResolutionPcm(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private useAudioTrackPlaybackParams()Z
    .registers 3

    .line 1580
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_10

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    if-eqz v0, :cond_10

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private useOffloadedPlayback(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/AudioAttributes;)Z
    .registers 10
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 1657
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5c

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadMode:I

    if-nez v0, :cond_c

    goto :goto_5c

    .line 1661
    :cond_c
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1662
    .local v0, "encoding":I
    if-nez v0, :cond_1d

    .line 1663
    return v2

    .line 1665
    :cond_1d
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v1

    .line 1666
    .local v1, "channelConfig":I
    if-nez v1, :cond_26

    .line 1667
    return v2

    .line 1669
    :cond_26
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-static {v3, v1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object v3

    .line 1671
    .local v3, "audioFormat":Landroid/media/AudioFormat;
    nop

    .line 1672
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->getAudioAttributesV21()Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    .line 1671
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getOffloadedPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_5e

    .line 1682
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1680
    :pswitch_41
    return v5

    .line 1676
    :pswitch_42
    iget v4, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    if-nez v4, :cond_4d

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    if-eqz v4, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 v4, 0x0

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 v4, 0x1

    .line 1677
    .local v4, "isGapless":Z
    :goto_4e
    iget v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadMode:I

    if-ne v6, v5, :cond_54

    const/4 v6, 0x1

    goto :goto_55

    :cond_54
    const/4 v6, 0x0

    .line 1678
    .local v6, "gaplessSupportRequired":Z
    :goto_55
    if-eqz v4, :cond_59

    if-nez v6, :cond_5a

    :cond_59
    const/4 v2, 0x1

    :cond_5a
    return v2

    .line 1674
    .end local v4    # "isGapless":Z
    .end local v6    # "gaplessSupportRequired":Z
    :pswitch_5b
    return v2

    .line 1658
    .end local v0    # "encoding":I
    .end local v1    # "channelConfig":I
    .end local v3    # "audioFormat":Landroid/media/AudioFormat;
    :cond_5c
    :goto_5c
    return v2

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;J)V
    .registers 16
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "avSyncPresentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1098
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1099
    return-void

    .line 1101
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_18

    .line 1102
    if-ne v0, p1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    goto :goto_3b

    .line 1104
    :cond_18
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1105
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v0, v1, :cond_3b

    .line 1106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1107
    .local v0, "bytesRemaining":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    if-eqz v4, :cond_29

    array-length v4, v4

    if-ge v4, v0, :cond_2d

    .line 1108
    :cond_29
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    .line 1110
    :cond_2d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 1111
    .local v4, "originalPosition":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1112
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1113
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 1116
    .end local v0    # "bytesRemaining":I
    .end local v4    # "originalPosition":I
    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1117
    .restart local v0    # "bytesRemaining":I
    const/4 v4, 0x0

    .line 1118
    .local v4, "bytesWrittenOrError":I
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v5, v1, :cond_6c

    .line 1120
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    invoke-virtual {v1, v5, v6}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getAvailableBufferSize(J)I

    move-result v1

    .line 1121
    .local v1, "bytesToWrite":I
    if-lez v1, :cond_6b

    .line 1122
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1123
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    iget v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 1124
    invoke-virtual {v5, v6, v7, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v4

    .line 1125
    if-lez v4, :cond_6b

    .line 1126
    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 1127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1130
    .end local v1    # "bytesToWrite":I
    :cond_6b
    goto :goto_9b

    :cond_6c
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v1, :cond_95

    .line 1131
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v5

    if-eqz v1, :cond_7b

    const/4 v1, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v1, 0x0

    :goto_7c
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1132
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, p2, v5

    if-nez v1, :cond_88

    .line 1136
    iget-wide p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastTunnelingAvSyncPresentationTimeUs:J

    goto :goto_8a

    .line 1138
    :cond_88
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastTunnelingAvSyncPresentationTimeUs:J

    .line 1140
    :goto_8a
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 1141
    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v4

    goto :goto_9b

    .line 1144
    :cond_95
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v1, p1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 1147
    :goto_9b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    .line 1149
    const-wide/16 v5, 0x0

    if-gez v4, :cond_d3

    .line 1150
    move v1, v4

    .line 1155
    .local v1, "error":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackDeadObject(I)Z

    move-result v7

    if-eqz v7, :cond_b3

    iget-wide v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    cmp-long v9, v7, v5

    if-lez v9, :cond_b3

    goto :goto_b4

    :cond_b3
    const/4 v2, 0x0

    .line 1157
    .local v2, "isRecoverable":Z
    :goto_b4
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v5, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v3, v1, v5, v2}, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;-><init>(ILcom/google/android/exoplayer2/Format;Z)V

    .line 1158
    .local v3, "e":Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v5, :cond_c4

    .line 1159
    invoke-interface {v5, v3}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 1161
    :cond_c4
    iget-boolean v5, v3, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    if-nez v5, :cond_ce

    .line 1166
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    .line 1167
    return-void

    .line 1163
    :cond_ce
    sget-object v5, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    iput-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 1164
    throw v3

    .line 1169
    .end local v1    # "error":I
    .end local v2    # "isRecoverable":Z
    .end local v3    # "e":Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
    :cond_d3
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1171
    move v1, v4

    .line 1173
    .local v1, "bytesWritten":I
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 1178
    iget-wide v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    cmp-long v9, v7, v5

    if-lez v9, :cond_e9

    .line 1179
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 1185
    :cond_e9
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    if-eqz v5, :cond_fa

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v5, :cond_fa

    if-ge v1, v0, :cond_fa

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    if-nez v6, :cond_fa

    .line 1189
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onOffloadBufferFull()V

    .line 1193
    :cond_fa
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v5, :cond_106

    .line 1194
    iget-wide v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 1196
    :cond_106
    if-ne v1, v0, :cond_127

    .line 1197
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-eqz v5, :cond_124

    .line 1200
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-ne p1, v5, :cond_113

    goto :goto_114

    :cond_113
    const/4 v2, 0x0

    :goto_114
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1201
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v5, v5

    iget v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    int-to-long v7, v7

    mul-long v5, v5, v7

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 1203
    :cond_124
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1205
    :cond_127
    return-void
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .registers 4
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I

    .line 1770
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .registers 16
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J

    .line 1776
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    const-wide/16 v2, 0x3e8

    if-lt v0, v1, :cond_13

    .line 1778
    const/4 v7, 0x1

    mul-long v8, p4, v2

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result v0

    return v0

    .line 1781
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2c

    .line 1782
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1783
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1784
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const v1, 0x55550001

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1786
    :cond_2c
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    const/4 v1, 0x0

    if-nez v0, :cond_47

    .line 1787
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1788
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    mul-long v2, v2, p4

    invoke-virtual {v0, v4, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1789
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1790
    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1792
    :cond_47
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1793
    .local v0, "avSyncHeaderBytesRemaining":I
    if-lez v0, :cond_5e

    .line 1794
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1795
    const/4 v3, 0x1

    invoke-virtual {p1, v2, v0, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 1796
    .local v2, "result":I
    if-gez v2, :cond_5b

    .line 1797
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1798
    return v2

    .line 1800
    :cond_5b
    if-ge v2, v0, :cond_5e

    .line 1801
    return v1

    .line 1804
    .end local v2    # "result":I
    :cond_5e
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 1805
    .restart local v2    # "result":I
    if-gez v2, :cond_67

    .line 1806
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1807
    return v2

    .line 1809
    :cond_67
    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1810
    return v2
.end method


# virtual methods
.method public configure(Lcom/google/android/exoplayer2/Format;I[I)V
    .registers 27
    .param p1, "inputFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "specifiedBufferSize"    # I
    .param p3, "outputChannels"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    .line 648
    move-object/from16 v1, p0

    move-object/from16 v13, p1

    const-string v0, "audio/raw"

    iget-object v2, v13, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 649
    iget v0, v13, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->isEncodingLinearPcm(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 651
    iget v0, v13, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v2, v13, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v2

    .line 653
    .local v2, "inputPcmFrameSize":I
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move-object v3, v0

    .line 654
    .local v3, "pipelineProcessors":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/audio/AudioProcessor;>;"
    iget v0, v13, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->shouldUseFloatOutput(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 655
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_41

    .line 657
    :cond_33
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 658
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessorChain;->getAudioProcessors()[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 660
    :goto_41
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 664
    .local v0, "audioProcessingPipeline":Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;
    iget-object v4, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 665
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    move-object v4, v0

    goto :goto_57

    .line 664
    :cond_56
    move-object v4, v0

    .line 668
    .end local v0    # "audioProcessingPipeline":Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;
    .local v4, "audioProcessingPipeline":Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;
    :goto_57
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    iget v5, v13, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget v6, v13, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->setTrimFrameCount(II)V

    .line 671
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v0, v5, :cond_7c

    iget v0, v13, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/16 v5, 0x8

    if-ne v0, v5, :cond_7c

    if-nez p3, :cond_7c

    .line 674
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 675
    .end local p3    # "outputChannels":[I
    .local v0, "outputChannels":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_72
    array-length v6, v0

    if-ge v5, v6, :cond_7a

    .line 676
    aput v5, v0, v5

    .line 675
    add-int/lit8 v5, v5, 0x1

    goto :goto_72

    :cond_7a
    move-object v5, v0

    goto :goto_7e

    .line 679
    .end local v0    # "outputChannels":[I
    .end local v5    # "i":I
    .restart local p3    # "outputChannels":[I
    :cond_7c
    move-object/from16 v5, p3

    .end local p3    # "outputChannels":[I
    .local v5, "outputChannels":[I
    :goto_7e
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->setChannelMap([I)V

    .line 681
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v6, v13, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v7, v13, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v8, v13, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-direct {v0, v6, v7, v8}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    move-object v6, v0

    .line 685
    .local v6, "outputFormat":Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    :try_start_8f
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->configure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    move-result-object v0
    :try_end_93
    .catch Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_8f .. :try_end_93} :catch_b6

    .line 688
    .end local v6    # "outputFormat":Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .local v0, "outputFormat":Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    nop

    .line 690
    const/4 v6, 0x0

    .line 691
    .local v6, "outputMode":I
    iget v7, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 692
    .local v7, "outputEncoding":I
    iget v8, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 693
    .local v8, "outputSampleRate":I
    iget v9, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v9

    .line 694
    .local v9, "outputChannelConfig":I
    iget v10, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v7, v10}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v10

    .line 695
    .local v10, "outputPcmFrameSize":I
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preferAudioTrackPlaybackParams:Z

    .line 696
    .end local v3    # "pipelineProcessors":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/audio/AudioProcessor;>;"
    .local v0, "enableAudioTrackPlaybackParams":Z
    move v14, v0

    move v15, v2

    move-object/from16 v16, v4

    move-object v0, v5

    move v12, v6

    move v11, v7

    move/from16 v22, v9

    move v9, v8

    move v8, v10

    move/from16 v10, v22

    goto/16 :goto_126

    .line 686
    .end local v0    # "enableAudioTrackPlaybackParams":Z
    .end local v7    # "outputEncoding":I
    .end local v8    # "outputSampleRate":I
    .end local v9    # "outputChannelConfig":I
    .end local v10    # "outputPcmFrameSize":I
    .restart local v3    # "pipelineProcessors":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/audio/AudioProcessor;>;"
    .local v6, "outputFormat":Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    :catch_b6
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 687
    .local v0, "e":Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
    new-instance v7, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    invoke-direct {v7, v0, v13}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)V

    throw v7

    .line 698
    .end local v0    # "e":Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
    .end local v2    # "inputPcmFrameSize":I
    .end local v3    # "pipelineProcessors":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/audio/AudioProcessor;>;"
    .end local v4    # "audioProcessingPipeline":Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;
    .end local v5    # "outputChannels":[I
    .end local v6    # "outputFormat":Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .restart local p3    # "outputChannels":[I
    :cond_bf
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    move-object v4, v0

    .line 699
    .restart local v4    # "audioProcessingPipeline":Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;
    const/4 v2, -0x1

    .line 700
    .restart local v2    # "inputPcmFrameSize":I
    iget v8, v13, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 701
    .restart local v8    # "outputSampleRate":I
    const/4 v10, -0x1

    .line 702
    .restart local v10    # "outputPcmFrameSize":I
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-direct {v1, v13, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->useOffloadedPlayback(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/AudioAttributes;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 703
    const/4 v6, 0x1

    .line 704
    .local v6, "outputMode":I
    iget-object v0, v13, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 705
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, v13, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 706
    .restart local v7    # "outputEncoding":I
    iget v0, v13, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v9

    .line 708
    .restart local v9    # "outputChannelConfig":I
    const/4 v0, 0x1

    move v14, v0

    move v15, v2

    move-object/from16 v16, v4

    move v12, v6

    move v11, v7

    move-object/from16 v0, p3

    move/from16 v22, v9

    move v9, v8

    move v8, v10

    move/from16 v10, v22

    .local v0, "enableAudioTrackPlaybackParams":Z
    goto :goto_126

    .line 710
    .end local v0    # "enableAudioTrackPlaybackParams":Z
    .end local v6    # "outputMode":I
    .end local v7    # "outputEncoding":I
    .end local v9    # "outputChannelConfig":I
    :cond_fa
    const/4 v6, 0x2

    .line 712
    .restart local v6    # "outputMode":I
    nop

    .line 713
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAudioCapabilities()Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getEncodingAndChannelConfigForPassthrough(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v0

    .line 714
    .local v0, "encodingAndChannelConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1d5

    .line 718
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 719
    .restart local v7    # "outputEncoding":I
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 722
    .restart local v9    # "outputChannelConfig":I
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preferAudioTrackPlaybackParams:Z

    move-object/from16 v0, p3

    move v15, v2

    move v14, v3

    move-object/from16 v16, v4

    move v12, v6

    move v11, v7

    move/from16 v22, v9

    move v9, v8

    move v8, v10

    move/from16 v10, v22

    .line 726
    .end local v2    # "inputPcmFrameSize":I
    .end local v4    # "audioProcessingPipeline":Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;
    .end local v6    # "outputMode":I
    .end local v7    # "outputEncoding":I
    .end local p3    # "outputChannels":[I
    .local v0, "outputChannels":[I
    .local v8, "outputPcmFrameSize":I
    .local v9, "outputSampleRate":I
    .local v10, "outputChannelConfig":I
    .local v11, "outputEncoding":I
    .local v12, "outputMode":I
    .local v14, "enableAudioTrackPlaybackParams":Z
    .local v15, "inputPcmFrameSize":I
    .local v16, "audioProcessingPipeline":Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;
    :goto_126
    const-string v2, ") for: "

    if-eqz v11, :cond_1b1

    .line 730
    if-eqz v10, :cond_18d

    .line 736
    if-eqz p2, :cond_137

    .line 737
    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v19, v10

    move/from16 v10, p2

    goto :goto_163

    .line 738
    :cond_137
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 739
    invoke-static {v9, v10, v11}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAudioTrackMinBufferSize(III)I

    move-result v3

    .line 742
    const/4 v4, -0x1

    if-eq v8, v4, :cond_142

    move v6, v8

    goto :goto_144

    :cond_142
    const/4 v4, 0x1

    const/4 v6, 0x1

    :goto_144
    iget v7, v13, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 745
    if-eqz v14, :cond_14b

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    goto :goto_14d

    :cond_14b
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_14d
    move-wide/from16 v17, v4

    .line 738
    move v4, v11

    move v5, v12

    move/from16 v19, v7

    move v7, v9

    move/from16 v20, v8

    .end local v8    # "outputPcmFrameSize":I
    .local v20, "outputPcmFrameSize":I
    move/from16 v8, v19

    move/from16 v21, v9

    move/from16 v19, v10

    .end local v9    # "outputSampleRate":I
    .end local v10    # "outputChannelConfig":I
    .local v19, "outputChannelConfig":I
    .local v21, "outputSampleRate":I
    move-wide/from16 v9, v17

    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->getBufferSizeInBytes(IIIIIID)I

    move-result v2

    move v10, v2

    :goto_163
    nop

    .line 747
    .local v10, "bufferSize":I
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    .line 748
    new-instance v17, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move v4, v15

    move v5, v12

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v19

    move v9, v11

    move/from16 v18, v11

    .end local v11    # "outputEncoding":I
    .local v18, "outputEncoding":I
    move-object/from16 v11, v16

    move-object/from16 p3, v0

    move v0, v12

    .end local v12    # "outputMode":I
    .local v0, "outputMode":I
    .restart local p3    # "outputChannels":[I
    move v12, v14

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;-><init>(Lcom/google/android/exoplayer2/Format;IIIIIIILcom/google/android/exoplayer2/audio/AudioProcessingPipeline;Z)V

    .line 760
    .local v2, "pendingConfiguration":Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v3

    if-eqz v3, :cond_18a

    .line 761
    iput-object v2, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    goto :goto_18c

    .line 763
    :cond_18a
    iput-object v2, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 765
    :goto_18c
    return-void

    .line 731
    .end local v2    # "pendingConfiguration":Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;
    .end local v18    # "outputEncoding":I
    .end local v19    # "outputChannelConfig":I
    .end local v20    # "outputPcmFrameSize":I
    .end local v21    # "outputSampleRate":I
    .end local p3    # "outputChannels":[I
    .local v0, "outputChannels":[I
    .restart local v8    # "outputPcmFrameSize":I
    .restart local v9    # "outputSampleRate":I
    .local v10, "outputChannelConfig":I
    .restart local v11    # "outputEncoding":I
    .restart local v12    # "outputMode":I
    :cond_18d
    move-object/from16 p3, v0

    move v0, v12

    .end local v12    # "outputMode":I
    .local v0, "outputMode":I
    .restart local p3    # "outputChannels":[I
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid output channel config (mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v13}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    throw v3

    .line 727
    .end local p3    # "outputChannels":[I
    .local v0, "outputChannels":[I
    .restart local v12    # "outputMode":I
    :cond_1b1
    move-object/from16 p3, v0

    move v0, v12

    .end local v12    # "outputMode":I
    .local v0, "outputMode":I
    .restart local p3    # "outputChannels":[I
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid output encoding (mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v13}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    throw v3

    .line 715
    .end local v9    # "outputSampleRate":I
    .end local v11    # "outputEncoding":I
    .end local v14    # "enableAudioTrackPlaybackParams":Z
    .end local v15    # "inputPcmFrameSize":I
    .end local v16    # "audioProcessingPipeline":Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;
    .local v0, "encodingAndChannelConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v2, "inputPcmFrameSize":I
    .restart local v4    # "audioProcessingPipeline":Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;
    .restart local v6    # "outputMode":I
    .local v8, "outputSampleRate":I
    .local v10, "outputPcmFrameSize":I
    :cond_1d5
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to configure passthrough for: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v13}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    goto :goto_1ef

    :goto_1ee
    throw v3

    :goto_1ef
    goto :goto_1ee
.end method

.method public disableTunneling()V
    .registers 2

    .line 1340
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_a

    .line 1341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    .line 1342
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    .line 1344
    :cond_a
    return-void
.end method

.method public enableTunnelingV21()V
    .registers 4

    .line 1330
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1331
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1332
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_1b

    .line 1333
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    .line 1334
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    .line 1336
    :cond_1b
    return-void
.end method

.method public experimentalFlushWithoutAudioTrackRelease()V
    .registers 9

    .line 1407
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_a

    .line 1408
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    .line 1409
    return-void

    .line 1412
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1413
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1415
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1416
    return-void

    .line 1419
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resetSinkStateForFlush()V

    .line 1420
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1421
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1423
    :cond_2b
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1425
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->reset()V

    .line 1426
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v3, 0x2

    const/4 v7, 0x1

    if-ne v0, v3, :cond_43

    const/4 v3, 0x1

    goto :goto_45

    :cond_43
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_45
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v5, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v6, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->setAudioTrack(Landroid/media/AudioTrack;ZIII)V

    .line 1433
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    .line 1434
    return-void
.end method

.method public flush()V
    .registers 4

    .line 1374
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1375
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resetSinkStateForFlush()V

    .line 1377
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1378
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1380
    :cond_16
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1381
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->unregister(Landroid/media/AudioTrack;)V

    .line 1383
    :cond_2b
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_38

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    if-nez v0, :cond_38

    .line 1389
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 1391
    :cond_38
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 1392
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 1393
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 1395
    :cond_41
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->reset()V

    .line 1396
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseAudioTrackAsync(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/util/ConditionVariable;)V

    .line 1397
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 1399
    :cond_4f
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1400
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1401
    return-void
.end method

.method public getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .registers 2

    .line 1288
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    return-object v0
.end method

.method public getCurrentPositionUs(Z)J
    .registers 7
    .param p1, "sourceEnded"    # Z

    .line 628
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    if-eqz v0, :cond_b

    goto :goto_28

    .line 631
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 632
    .local v0, "positionUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 633
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->applyMediaPositionParameters(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->applySkipping(J)J

    move-result-wide v2

    return-wide v2

    .line 629
    .end local v0    # "positionUs":J
    :cond_28
    :goto_28
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getFormatSupport(Lcom/google/android/exoplayer2/Format;)I
    .registers 5
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 604
    const-string v0, "audio/raw"

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_40

    .line 605
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->isEncodingLinearPcm(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PCM encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DefaultAudioSink"

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return v1

    .line 609
    :cond_2f
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    if-eq v0, v2, :cond_3f

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableFloatOutput:Z

    if-eqz v0, :cond_3d

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3d

    goto :goto_3f

    .line 615
    :cond_3d
    const/4 v0, 0x1

    return v0

    .line 611
    :cond_3f
    :goto_3f
    return v2

    .line 617
    :cond_40
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->useOffloadedPlayback(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/audio/AudioAttributes;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 618
    return v2

    .line 620
    :cond_4d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAudioCapabilities()Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->isPassthroughPlaybackSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 621
    return v2

    .line 623
    :cond_58
    return v1
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 2

    .line 1256
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public getSkipSilenceEnabled()Z
    .registers 2

    .line 1270
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    return v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .registers 22
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "presentationTimeUs"    # J
    .param p4, "encodedAccessUnitCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 833
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_13

    if-ne v2, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 835
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    const/4 v8, 0x0

    if-eqz v0, :cond_71

    .line 836
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v0

    if-nez v0, :cond_23

    .line 838
    return v7

    .line 839
    :cond_23
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v9, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->canReuseAudioTrack(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 840
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playPendingData()V

    .line 841
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 843
    return v7

    .line 845
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    goto :goto_6e

    .line 848
    :cond_3b
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 849
    iput-object v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pendingConfiguration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 850
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadMode:I

    const/4 v9, 0x3

    if-eq v0, v9, :cond_6e

    .line 854
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v9, :cond_5b

    .line 855
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    .line 857
    :cond_5b
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v9, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v9, v9, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v9, v9, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget-object v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget-object v10, v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v10, v10, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {v0, v9, v10}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 859
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 863
    :cond_6e
    :goto_6e
    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 866
    :cond_71
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 868
    :try_start_77
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializeAudioTrack()Z

    move-result v0
    :try_end_7b
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_77 .. :try_end_7b} :catch_7f

    if-nez v0, :cond_7e

    .line 870
    return v7

    .line 878
    :cond_7e
    goto :goto_8d

    .line 872
    :catch_7f
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 873
    .local v0, "e":Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->isRecoverable:Z

    if-nez v6, :cond_8c

    .line 876
    iget-object v6, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    .line 877
    return v7

    .line 874
    :cond_8c
    throw v0

    .line 880
    .end local v0    # "e":Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
    :cond_8d
    :goto_8d
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 882
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    const-wide/16 v9, 0x0

    if-eqz v0, :cond_b5

    .line 883
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 884
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 885
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    .line 887
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 888
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setAudioTrackPlaybackParametersV23()V

    .line 890
    :cond_ab
    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 892
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    if-eqz v0, :cond_b5

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->play()V

    .line 897
    :cond_b5
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->mayHandleBuffer(J)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 898
    return v7

    .line 901
    :cond_c2
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_179

    .line 903
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v11, :cond_d0

    const/4 v0, 0x1

    goto :goto_d1

    :cond_d0
    const/4 v0, 0x0

    :goto_d1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 904
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_db

    .line 906
    return v6

    .line 909
    :cond_db
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-eqz v0, :cond_f2

    iget v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v0, :cond_f2

    .line 911
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 912
    if-nez v0, :cond_f2

    .line 917
    return v6

    .line 921
    :cond_f2
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    if-eqz v0, :cond_102

    .line 922
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v0

    if-nez v0, :cond_fd

    .line 924
    return v7

    .line 926
    :cond_fd
    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 927
    iput-object v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->afterDrainParameters:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;

    .line 931
    :cond_102
    iget-wide v11, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    .line 934
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v13

    iget-object v15, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->getTrimmedFrameCount()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 933
    invoke-virtual {v0, v13, v14}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFramesToDurationUs(J)J

    move-result-wide v13

    add-long/2addr v11, v13

    .line 935
    .local v11, "expectedPresentationTimeUs":J
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-nez v0, :cond_135

    sub-long v13, v11, v3

    .line 936
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/32 v15, 0x30d40

    cmp-long v0, v13, v15

    if-lez v0, :cond_135

    .line 937
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v0, :cond_133

    .line 938
    new-instance v13, Lcom/google/android/exoplayer2/audio/AudioSink$UnexpectedDiscontinuityException;

    invoke-direct {v13, v3, v4, v11, v12}, Lcom/google/android/exoplayer2/audio/AudioSink$UnexpectedDiscontinuityException;-><init>(JJ)V

    invoke-interface {v0, v13}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 942
    :cond_133
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 944
    :cond_135
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-eqz v0, :cond_159

    .line 945
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v0

    if-nez v0, :cond_140

    .line 947
    return v7

    .line 951
    :cond_140
    sub-long v13, v3, v11

    .line 952
    .local v13, "adjustmentUs":J
    iget-wide v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    add-long/2addr v8, v13

    iput-wide v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 953
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 955
    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 956
    iget-object v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v8, :cond_159

    const-wide/16 v9, 0x0

    cmp-long v15, v13, v9

    if-eqz v15, :cond_159

    .line 957
    invoke-interface {v8}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onPositionDiscontinuity()V

    .line 961
    .end local v13    # "adjustmentUs":J
    :cond_159
    iget-object v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->configuration:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;

    iget v8, v8, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v8, :cond_16a

    .line 962
    iget-wide v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    int-to-long v13, v10

    add-long/2addr v8, v13

    iput-wide v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    goto :goto_175

    .line 964
    :cond_16a
    iget-wide v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    iget v10, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v13, v10

    int-to-long v6, v5

    mul-long v13, v13, v6

    add-long/2addr v8, v13

    iput-wide v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 967
    :goto_175
    iput-object v2, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 968
    iput v5, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    .line 971
    .end local v11    # "expectedPresentationTimeUs":J
    :cond_179
    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->processBuffers(J)V

    .line 973
    iget-object v6, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_18c

    .line 974
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 975
    const/4 v6, 0x0

    iput v6, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    .line 976
    const/4 v0, 0x1

    return v0

    .line 979
    :cond_18c
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->isStalled(J)Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 980
    const-string v0, "DefaultAudioSink"

    const-string v6, "Resetting stalled audio track"

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    .line 982
    const/4 v0, 0x1

    return v0

    .line 985
    :cond_1a4
    const/4 v6, 0x0

    return v6
.end method

.method public handleDiscontinuity()V
    .registers 2

    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 826
    return-void
.end method

.method public hasPendingData()Z
    .registers 4

    .line 1237
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    .line 1238
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1237
    :goto_15
    return v0
.end method

.method public isEnded()Z
    .registers 2

    .line 1232
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public onAudioCapabilitiesChanged(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V
    .registers 4
    .param p1, "audioCapabilities"    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 1462
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1463
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAudioCapabilities()Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1464
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 1465
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v0, :cond_21

    .line 1466
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onAudioCapabilitiesChanged()V

    .line 1469
    :cond_21
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    .line 1367
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->pause()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1368
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1370
    :cond_16
    return-void
.end method

.method public play()V
    .registers 2

    .line 816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    .line 817
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 818
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackPositionTracker:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->start()V

    .line 819
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 821
    :cond_13
    return-void
.end method

.method public playToEndOfStream()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1209
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1210
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playPendingData()V

    .line 1211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    .line 1213
    :cond_16
    return-void
.end method

.method public release()V
    .registers 2

    .line 1454
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_7

    .line 1455
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->unregister()V

    .line 1457
    :cond_7
    return-void
.end method

.method public reset()V
    .registers 3

    .line 1438
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    .line 1439
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 1440
    .local v1, "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->reset()V

    .line 1441
    .end local v1    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    goto :goto_9

    .line 1442
    :cond_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 1443
    .restart local v1    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->reset()V

    .line 1444
    .end local v1    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    goto :goto_1f

    .line 1445
    :cond_2f
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessingPipeline:Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    if-eqz v0, :cond_36

    .line 1446
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->reset()V

    .line 1448
    :cond_36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    .line 1449
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    .line 1450
    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 3
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 1275
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1276
    return-void

    .line 1278
    :cond_9
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 1279
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_10

    .line 1281
    return-void

    .line 1283
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    .line 1284
    return-void
.end method

.method public setAudioSessionId(I)V
    .registers 3
    .param p1, "audioSessionId"    # I

    .line 1293
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_10

    .line 1294
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 1295
    if-eqz p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    .line 1296
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    .line 1298
    :cond_10
    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V
    .registers 5
    .param p1, "auxEffectInfo"    # Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    .line 1302
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1303
    return-void

    .line 1305
    :cond_9
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;->effectId:I

    .line 1306
    .local v0, "effectId":I
    iget v1, p1, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;->sendLevel:F

    .line 1307
    .local v1, "sendLevel":F
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_23

    .line 1308
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;->effectId:I

    if-eq v2, v0, :cond_1c

    .line 1309
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 1311
    :cond_1c
    if-eqz v0, :cond_23

    .line 1312
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 1315
    :cond_23
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->auxEffectInfo:Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    .line 1316
    return-void
.end method

.method public setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    .line 589
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    .line 590
    return-void
.end method

.method public synthetic setOutputStreamOffsetUs(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink$-CC;->$default$setOutputStreamOffsetUs(Lcom/google/android/exoplayer2/audio/AudioSink;J)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 7
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1243
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 1245
    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v1

    iget v4, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    .line 1246
    invoke-static {v4, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1247
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1248
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setAudioTrackPlaybackParametersV23()V

    goto :goto_25

    .line 1250
    :cond_22
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setAudioProcessorPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 1252
    :goto_25
    return-void
.end method

.method public setPlayerId(Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 2
    .param p1, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 594
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 595
    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .registers 4
    .param p1, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 1321
    nop

    .line 1322
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_a

    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_a
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preferredDevice:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;

    .line 1323
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_13

    .line 1324
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Api23;->setPreferredDeviceOnAudioTrack(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;)V

    .line 1326
    :cond_13
    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .registers 3
    .param p1, "skipSilenceEnabled"    # Z

    .line 1261
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    .line 1264
    nop

    .line 1265
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1264
    :goto_e
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setAudioProcessorPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 1266
    return-void
.end method

.method public setVolume(F)V
    .registers 3
    .param p1, "volume"    # F

    .line 1348
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 1349
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    .line 1350
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternal()V

    .line 1352
    :cond_b
    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 599
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getFormatSupport(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
