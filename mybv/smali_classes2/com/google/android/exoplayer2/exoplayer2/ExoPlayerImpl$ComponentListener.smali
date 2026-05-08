.class final Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
.implements Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
.implements Lcom/google/android/exoplayer2/text/TextOutput;
.implements Lcom/google/android/exoplayer2/metadata/MetadataOutput;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;
.implements Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;
.implements Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;
.implements Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;
.implements Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V
    .registers 2

    .line 2892
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/ExoPlayerImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/ExoPlayerImpl$1;

    .line 2892
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    return-void
.end method

.method static synthetic lambda$onCues$2(Ljava/util/List;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "cues"    # Ljava/util/List;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3037
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onCues$3(Lcom/google/android/exoplayer2/text/CueGroup;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "cueGroup"    # Lcom/google/android/exoplayer2/text/CueGroup;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3043
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method static synthetic lambda$onMetadata$5(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3059
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method static synthetic lambda$onSkipSilenceEnabledChanged$1(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "newSkipSilenceEnabled"    # Z
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3021
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onStreamTypeChanged$6(Lcom/google/android/exoplayer2/DeviceInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "newDeviceInfo"    # Lcom/google/android/exoplayer2/DeviceInfo;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3154
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$onStreamVolumeChanged$7(IZLcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "streamVolume"    # I
    .param p1, "streamMuted"    # Z
    .param p2, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3162
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$onVideoSizeChanged$0(Lcom/google/android/exoplayer2/video/VideoSize;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "newVideoSize"    # Lcom/google/android/exoplayer2/video/VideoSize;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2936
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method


# virtual methods
.method public executePlayerCommand(I)V
    .registers 5
    .param p1, "playerCommand"    # I

    .line 3131
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    .line 3132
    .local v0, "playWhenReady":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 3133
    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2100(ZI)I

    move-result v2

    .line 3132
    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlayWhenReady(ZII)V
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2200(Lcom/google/android/exoplayer2/ExoPlayerImpl;ZII)V

    .line 3134
    return-void
.end method

.method synthetic lambda$onMetadata$4$com-google-android-exoplayer2-ExoPlayerImpl$ComponentListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 3057
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1500(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public onAudioBecomingNoisy()V
    .registers 5

    .line 3140
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlayWhenReady(ZII)V
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2200(Lcom/google/android/exoplayer2/ExoPlayerImpl;ZII)V

    .line 3144
    return-void
.end method

.method public onAudioCodecError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "audioCodecError"    # Ljava/lang/Exception;

    .line 3031
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioCodecError(Ljava/lang/Exception;)V

    .line 3032
    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 13
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 2980
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    .line 2982
    return-void
.end method

.method public onAudioDecoderReleased(Ljava/lang/String;)V
    .registers 3
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 3003
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDecoderReleased(Ljava/lang/String;)V

    .line 3004
    return-void
.end method

.method public onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 4
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 3008
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 3009
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFormat:Lcom/google/android/exoplayer2/Format;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1002(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 3010
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$902(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 3011
    return-void
.end method

.method public onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 2973
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$902(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 2974
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 2975
    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 2987
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFormat:Lcom/google/android/exoplayer2/Format;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1002(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 2988
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 2989
    return-void
.end method

.method public onAudioPositionAdvancing(J)V
    .registers 4
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 2993
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioPositionAdvancing(J)V

    .line 2994
    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "audioSinkError"    # Ljava/lang/Exception;

    .line 3026
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 3027
    return-void
.end method

.method public onAudioUnderrun(IJJ)V
    .registers 13
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 2998
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioUnderrun(IJJ)V

    .line 2999
    return-void
.end method

.method public onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 5
    .param p1, "cueGroup"    # Lcom/google/android/exoplayer2/text/CueGroup;

    .line 3042
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplayer2/text/CueGroup;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1202(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/text/CueGroup;)Lcom/google/android/exoplayer2/text/CueGroup;

    .line 3043
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/text/CueGroup;)V

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3044
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

    .line 3037
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3038
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .registers 5
    .param p1, "count"    # I
    .param p2, "elapsed"    # J

    .line 2929
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDroppedFrames(IJ)V

    .line 2930
    return-void
.end method

.method public synthetic onExperimentalOffloadSchedulingEnabledChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener$-CC;->$default$onExperimentalOffloadSchedulingEnabledChanged(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;Z)V

    return-void
.end method

.method public synthetic onExperimentalOffloadedPlayback(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener$-CC;->$default$onExperimentalOffloadedPlayback(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;Z)V

    return-void
.end method

.method public onExperimentalSleepingForOffloadChanged(Z)V
    .registers 3
    .param p1, "sleepingForOffload"    # Z

    .line 3169
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateWakeAndWifiLock()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2600(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    .line 3170
    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 6
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 3050
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 3051
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1300(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->buildUpon()Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->populateFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    .line 3050
    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1302(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata;

    .line 3052
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->buildUpdatedMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    .line 3053
    .local v0, "newMediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1500(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 3054
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata;

    .line 3055
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3059
    :cond_3c
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/16 v3, 0x1c

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3060
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    .line 3061
    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .registers 7
    .param p1, "output"    # Ljava/lang/Object;
    .param p2, "renderTimeMs"    # J

    .line 2941
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    .line 2942
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$800(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_21

    .line 2943
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;-><init>()V

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2945
    :cond_21
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .registers 5
    .param p1, "newSkipSilenceEnabled"    # Z

    .line 3015
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1100(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Z

    move-result v0

    if-ne v0, p1, :cond_9

    .line 3016
    return-void

    .line 3018
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1102(Lcom/google/android/exoplayer2/ExoPlayerImpl;Z)Z

    .line 3019
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;-><init>(Z)V

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3022
    return-void
.end method

.method public onStreamTypeChanged(I)V
    .registers 6
    .param p1, "streamType"    # I

    .line 3150
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2300(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/StreamVolumeManager;

    move-result-object v0

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->createDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2400(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v0

    .line 3151
    .local v0, "newDeviceInfo":Lcom/google/android/exoplayer2/DeviceInfo;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2500(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 3152
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/DeviceInfo;)Lcom/google/android/exoplayer2/DeviceInfo;

    .line 3153
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/DeviceInfo;)V

    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3156
    :cond_2b
    return-void
.end method

.method public onStreamVolumeChanged(IZ)V
    .registers 6
    .param p1, "streamVolume"    # I
    .param p2, "streamMuted"    # Z

    .line 3160
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;-><init>(IZ)V

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3163
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 3089
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1900(Lcom/google/android/exoplayer2/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V

    .line 3090
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V
    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    .line 3091
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 3100
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V

    .line 3101
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V
    invoke-static {v0, v1, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    .line 3102
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 3095
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V
    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    .line 3096
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 3108
    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "videoCodecError"    # Ljava/lang/Exception;

    .line 2966
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoCodecError(Ljava/lang/Exception;)V

    .line 2967
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 13
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 2916
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 2918
    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .registers 3
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 2949
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDecoderReleased(Ljava/lang/String;)V

    .line 2950
    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 4
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 2954
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 2955
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoFormat:Lcom/google/android/exoplayer2/Format;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 2956
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$302(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 2957
    return-void
.end method

.method public onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 2909
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$302(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 2910
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 2911
    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .registers 5
    .param p1, "totalProcessingOffsetUs"    # J
    .param p3, "frameCount"    # I

    .line 2961
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoFrameProcessingOffset(JI)V

    .line 2962
    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 2923
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoFormat:Lcom/google/android/exoplayer2/Format;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 2924
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 2925
    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 5
    .param p1, "newVideoSize"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 2934
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$602(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/video/VideoSize;)Lcom/google/android/exoplayer2/video/VideoSize;

    .line 2935
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/video/VideoSize;)V

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2937
    return-void
.end method

.method public onVideoSurfaceCreated(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 3114
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V

    .line 3115
    return-void
.end method

.method public onVideoSurfaceDestroyed(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 3119
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V

    .line 3120
    return-void
.end method

.method public setVolumeMultiplier(F)V
    .registers 3
    .param p1, "volumeMultiplier"    # F

    .line 3126
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendVolumeToRenderers()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2000(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    .line 3127
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 3074
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V
    invoke-static {v0, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    .line 3075
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 3067
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1600(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3068
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V

    .line 3070
    :cond_11
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 3079
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1600(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3080
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V

    .line 3082
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V
    invoke-static {v0, v1, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    .line 3083
    return-void
.end method
