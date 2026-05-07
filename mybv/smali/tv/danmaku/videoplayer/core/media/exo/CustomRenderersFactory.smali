.class public Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;
.super Lcom/google/android/exoplayer2/DefaultRenderersFactory;
.source "CustomRenderersFactory.java"


# instance fields
.field private final volumeBalanceAudioProcessor:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;

    invoke-direct {v0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;-><init>()V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;->volumeBalanceAudioProcessor:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;

    .line 20
    return-void
.end method


# virtual methods
.method protected buildAudioRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLcom/google/android/exoplayer2/audio/AudioSink;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Z",
            "Lcom/google/android/exoplayer2/audio/AudioSink;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v2, 0x0

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;->volumeBalanceAudioProcessor:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;

    aput-object v3, v1, v2

    .line 39
    new-instance v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;-><init>()V

    .line 40
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setAudioProcessors([Lcom/google/android/exoplayer2/audio/AudioProcessor;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->build()Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    move-result-object v8

    .line 43
    new-instance v1, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 45
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;->getCodecAdapterFactory()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v3

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 52
    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public getVolumeBalanceAudioProcessor()Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;->volumeBalanceAudioProcessor:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;

    return-object v0
.end method
