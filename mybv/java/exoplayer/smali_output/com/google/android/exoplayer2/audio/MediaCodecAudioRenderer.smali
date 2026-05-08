.class public Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;,
        Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$Api23;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCodecAudioRenderer"

.field private static final VIVO_BITS_PER_SAMPLE_KEY:Ljava/lang/String; = "v-bits-per-sample"


# instance fields
.field private allowFirstBufferPositionDiscontinuity:Z

.field private allowPositionDiscontinuity:Z

.field private final audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private audioSinkNeedsReset:Z

.field private codecMaxInputSize:I

.field private codecNeedsDiscardChannelsWorkaround:Z

.field private final context:Landroid/content/Context;

.field private currentPositionUs:J

.field private decryptOnlyCodecFormat:Lcom/google/android/exoplayer2/Format;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private experimentalKeepAudioTrackOnSeek:Z

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private wakeupListener:Lcom/google/android/exoplayer2/Renderer$WakeupListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "codecAdapterFactory"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;
    .param p3, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p4, "enableDecoderFallback"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p7, "audioSink"    # Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 256
    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZF)V

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 263
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->context:Landroid/content/Context;

    .line 264
    iput-object p7, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 265
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v0, p5, p6}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 266
    new-instance v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$1;)V

    invoke-interface {p7, v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .line 142
    sget-object v5, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const/4 v0, 0x0

    new-array v6, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 148
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p5, "audioCapabilities"    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .param p6, "audioProcessors"    # [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 169
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 176
    invoke-static {p5, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setAudioCapabilities(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setAudioProcessors([Lcom/google/android/exoplayer2/audio/AudioProcessor;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->build()Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    move-result-object v6

    .line 169
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p5, "audioSink"    # Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 195
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "enableDecoderFallback"    # Z
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p6, "audioSink"    # Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 223
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 231
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/Renderer$WakeupListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->wakeupListener:Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onRendererCapabilitiesChanged()V

    return-void
.end method

.method private static codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z
    .registers 3
    .param p0, "codecName"    # Ljava/lang/String;

    .line 911
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_38

    .line 912
    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 913
    const-string v1, "samsung"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 914
    const-string v1, "zeroflte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 915
    const-string v1, "herolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 916
    const-string v1, "heroqlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_36
    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    .line 911
    :goto_39
    return v0
.end method

.method private static deviceDoesntSupportOperatingRate()Z
    .registers 2

    .line 899
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1c

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 900
    const-string v1, "ZTE B2017G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "AXON 7 mini"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 899
    :goto_1d
    return v0
.end method

.method private getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I
    .registers 5
    .param p1, "codecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 822
    const-string v0, "OMX.google.raw.decoder"

    iget-object v1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 827
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_20

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 828
    :cond_1e
    const/4 v0, -0x1

    return v0

    .line 831
    :cond_20
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    return v0
.end method

.method private static getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZLcom/google/android/exoplayer2/audio/AudioSink;)Ljava/util/List;
    .registers 7
    .param p0, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "requiresSecureDecoder"    # Z
    .param p3, "audioSink"    # Lcom/google/android/exoplayer2/audio/AudioSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z",
            "Lcom/google/android/exoplayer2/audio/AudioSink;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 391
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 392
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 393
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 395
    :cond_9
    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 397
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecryptOnlyDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v1

    .line 398
    .local v1, "codecInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    if-eqz v1, :cond_1a

    .line 399
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2

    .line 402
    .end local v1    # "codecInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    :cond_1a
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosSoftMatch(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private updateCurrentPosition()V
    .registers 6

    .line 882
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 883
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_22

    .line 884
    nop

    .line 885
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_17

    .line 886
    move-wide v2, v0

    goto :goto_1d

    .line 887
    :cond_17
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_1d
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 888
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 890
    :cond_22
    return-void
.end method


# virtual methods
.method protected canReuseCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .registers 13
    .param p1, "codecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p2, "oldFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "newFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 433
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 435
    .local v0, "evaluation":Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    .line 436
    .local v1, "discardReasons":I
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->isBypassPossible(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 439
    const v2, 0x8000

    or-int/2addr v1, v2

    .line 441
    :cond_10
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    if-le v2, v3, :cond_1a

    .line 442
    or-int/lit8 v1, v1, 0x40

    .line 445
    :cond_1a
    new-instance v8, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 449
    if-eqz v1, :cond_23

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_26

    :cond_23
    iget v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    move v6, v2

    :goto_26
    move-object v2, v8

    move-object v4, p2

    move-object v5, p3

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    .line 445
    return-object v8
.end method

.method public experimentalSetEnableKeepAudioTrackOnSeek(Z)V
    .registers 2
    .param p1, "enableKeepAudioTrackOnSeek"    # Z

    .line 284
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->experimentalKeepAudioTrackOnSeek:Z

    .line 285
    return-void
.end method

.method protected getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)I
    .registers 9
    .param p1, "codecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "streamFormats"    # [Lcom/google/android/exoplayer2/Format;

    .line 799
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    .line 800
    .local v0, "maxInputSize":I
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 803
    return v0

    .line 805
    :cond_9
    array-length v1, p3

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_22

    aget-object v3, p3, v2

    .line 806
    .local v3, "streamFormat":Lcom/google/android/exoplayer2/Format;
    invoke-virtual {p1, p2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-eqz v4, :cond_1f

    .line 807
    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 805
    .end local v3    # "streamFormat":Lcom/google/android/exoplayer2/Format;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 810
    :cond_22
    return v0
.end method

.method protected getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
    .registers 10
    .param p1, "targetPlaybackSpeed"    # F
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "streamFormats"    # [Lcom/google/android/exoplayer2/Format;

    .line 464
    const/4 v0, -0x1

    .line 465
    .local v0, "maxSampleRate":I
    array-length v1, p3

    const/4 v2, 0x0

    :goto_3
    const/4 v3, -0x1

    if-ge v2, v1, :cond_13

    aget-object v4, p3, v2

    .line 466
    .local v4, "streamFormat":Lcom/google/android/exoplayer2/Format;
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 467
    .local v5, "streamSampleRate":I
    if-eq v5, v3, :cond_10

    .line 468
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 465
    .end local v4    # "streamFormat":Lcom/google/android/exoplayer2/Format;
    .end local v5    # "streamSampleRate":I
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 471
    :cond_13
    if-ne v0, v3, :cond_18

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_1b

    :cond_18
    int-to-float v1, v0

    mul-float v1, v1, p1

    :goto_1b
    return v1
.end method

.method protected getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .registers 5
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "requiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 366
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZLcom/google/android/exoplayer2/audio/AudioSink;)Ljava/util/List;

    move-result-object v0

    .line 365
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
    .registers 1

    .line 456
    return-object p0
.end method

.method protected getMediaCodecConfiguration(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .registers 8
    .param p1, "codecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;
    .param p4, "codecOperatingRate"    # F

    .line 417
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getStreamFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    .line 418
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    .line 419
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    .line 420
    invoke-virtual {p0, p2, v0, v1, p4}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getMediaFormat(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object v0

    .line 422
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 423
    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 424
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 425
    .local v1, "decryptOnlyCodecEnabled":Z
    :goto_2f
    if-eqz v1, :cond_33

    move-object v2, p2

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decryptOnlyCodecFormat:Lcom/google/android/exoplayer2/Format;

    .line 426
    invoke-static {p1, v0, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->createForAudioDecoding(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    move-result-object v2

    return-object v2
.end method

.method protected getMediaFormat(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .registers 10
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "codecMimeType"    # Ljava/lang/String;
    .param p3, "codecMaxInputSize"    # I
    .param p4, "codecOperatingRate"    # F

    .line 848
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 850
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const-string v1, "mime"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v1, "channel-count"

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 852
    const-string v1, "sample-rate"

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 853
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 855
    const-string v1, "max-input-size"

    invoke-static {v0, v1, p3}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 857
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3f

    .line 858
    const-string v1, "priority"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 859
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_3f

    invoke-static {}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->deviceDoesntSupportOperatingRate()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 860
    const-string v1, "operating-rate"

    invoke-virtual {v0, v1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 863
    :cond_3f
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_55

    const-string v1, "audio/ac4"

    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 866
    const-string v1, "ac4-is-sync"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 868
    :cond_55
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_72

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 870
    const/4 v4, 0x4

    invoke-static {v4, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getPcmFormat(III)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 869
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioSink;->getFormatSupport(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_72

    .line 872
    const-string v1, "pcm-encoding"

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 874
    :cond_72
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_7f

    .line 875
    const-string v1, "max-output-channel-count"

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 878
    :cond_7f
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 271
    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 2

    .line 657
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .registers 3

    .line 644
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 645
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    .line 647
    :cond_a
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 5
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 751
    packed-switch p1, :pswitch_data_54

    .line 783
    :pswitch_3
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_52

    .line 764
    :pswitch_7
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_52

    .line 765
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$Api23;->setAudioSinkPreferredDevice(Lcom/google/android/exoplayer2/audio/AudioSink;Ljava/lang/Object;)V

    goto :goto_52

    .line 775
    :pswitch_13
    move-object v0, p2

    check-cast v0, Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->wakeupListener:Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    .line 776
    goto :goto_52

    .line 772
    :pswitch_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioSessionId(I)V

    .line 773
    goto :goto_52

    .line 769
    :pswitch_26
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setSkipSilenceEnabled(Z)V

    .line 770
    goto :goto_52

    .line 760
    :pswitch_33
    move-object v0, p2

    check-cast v0, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    .line 761
    .local v0, "auxEffectInfo":Lcom/google/android/exoplayer2/audio/AuxEffectInfo;
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    .line 762
    goto :goto_52

    .line 756
    .end local v0    # "auxEffectInfo":Lcom/google/android/exoplayer2/audio/AuxEffectInfo;
    :pswitch_3c
    move-object v0, p2

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 757
    .local v0, "audioAttributes":Lcom/google/android/exoplayer2/audio/AudioAttributes;
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 758
    goto :goto_52

    .line 753
    .end local v0    # "audioAttributes":Lcom/google/android/exoplayer2/audio/AudioAttributes;
    :pswitch_45
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setVolume(F)V

    .line 754
    nop

    .line 786
    :cond_52
    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x2
        :pswitch_45
        :pswitch_3c
        :pswitch_3
        :pswitch_3
        :pswitch_33
        :pswitch_3
        :pswitch_3
        :pswitch_26
        :pswitch_19
        :pswitch_13
        :pswitch_7
    .end packed-switch
.end method

.method public isEnded()Z
    .registers 2

    .line 634
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 639
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method protected onCodecError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "codecError"    # Ljava/lang/Exception;

    .line 490
    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 491
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioCodecError(Ljava/lang/Exception;)V

    .line 492
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;JJ)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .param p3, "initializedTimestampMs"    # J
    .param p5, "initializationDurationMs"    # J

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 481
    return-void
.end method

.method protected onCodecReleased(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method protected onDisabled()V
    .registers 4

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 605
    :try_start_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_21

    .line 608
    :try_start_b
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_18

    .line 610
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 611
    nop

    .line 612
    nop

    .line 613
    return-void

    .line 610
    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 611
    throw v0

    .line 607
    :catchall_21
    move-exception v0

    .line 608
    :try_start_22
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2e

    .line 610
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 611
    nop

    .line 612
    throw v0

    .line 610
    :catchall_2e
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 611
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .registers 5
    .param p1, "joining"    # Z
    .param p2, "mayRenderStartOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 563
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(ZZ)V

    .line 564
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 565
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    if-eqz v0, :cond_18

    .line 566
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->enableTunnelingV21()V

    goto :goto_1d

    .line 568
    :cond_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->disableTunneling()V

    .line 570
    :goto_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPlayerId(Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 571
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .registers 5
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 498
    iget-object v0, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 499
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 500
    .local v0, "evaluation":Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 501
    return-object v0
.end method

.method protected onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .registers 8
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "mediaFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "channelMap":[I
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decryptOnlyCodecFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_9

    .line 510
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decryptOnlyCodecFormat:Lcom/google/android/exoplayer2/Format;

    .local v1, "audioSinkInputFormat":Lcom/google/android/exoplayer2/Format;
    goto/16 :goto_93

    .line 511
    .end local v1    # "audioSinkInputFormat":Lcom/google/android/exoplayer2/Format;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v1

    if-nez v1, :cond_12

    .line 512
    move-object v1, p1

    .restart local v1    # "audioSinkInputFormat":Lcom/google/android/exoplayer2/Format;
    goto/16 :goto_93

    .line 515
    .end local v1    # "audioSinkInputFormat":Lcom/google/android/exoplayer2/Format;
    :cond_12
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 517
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .local v1, "pcmEncoding":I
    goto :goto_44

    .line 518
    .end local v1    # "pcmEncoding":I
    :cond_1f
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_32

    const-string v1, "pcm-encoding"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 519
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "pcmEncoding":I
    goto :goto_44

    .line 520
    .end local v1    # "pcmEncoding":I
    :cond_32
    const-string v1, "v-bits-per-sample"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 521
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v1

    .restart local v1    # "pcmEncoding":I
    goto :goto_44

    .line 525
    .end local v1    # "pcmEncoding":I
    :cond_43
    const/4 v1, 0x2

    .line 527
    .restart local v1    # "pcmEncoding":I
    :goto_44
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 529
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 530
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 531
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 532
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 533
    const-string v3, "channel-count"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 534
    const-string v3, "sample-rate"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 535
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 536
    .local v2, "audioSinkInputFormat":Lcom/google/android/exoplayer2/Format;
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    if-eqz v3, :cond_92

    iget v3, v2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_92

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ge v3, v4, :cond_92

    .line 539
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    new-array v0, v3, [I

    .line 540
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_87
    iget v4, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ge v3, v4, :cond_90

    .line 541
    aput v3, v0, v3

    .line 540
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    :cond_90
    move-object v1, v2

    goto :goto_93

    .line 546
    .end local v1    # "pcmEncoding":I
    .end local v3    # "i":I
    :cond_92
    move-object v1, v2

    .end local v2    # "audioSinkInputFormat":Lcom/google/android/exoplayer2/Format;
    .local v1, "audioSinkInputFormat":Lcom/google/android/exoplayer2/Format;
    :goto_93
    :try_start_93
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->configure(Lcom/google/android/exoplayer2/Format;I[I)V
    :try_end_99
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_93 .. :try_end_99} :catch_9b

    .line 550
    nop

    .line 551
    return-void

    .line 547
    :catch_9b
    move-exception v2

    .line 548
    .local v2, "e":Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
    iget-object v3, v2, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplayer2/Format;

    const/16 v4, 0x1389

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v3

    goto :goto_a6

    :goto_a5
    throw v3

    :goto_a6
    goto :goto_a5
.end method

.method protected onOutputStreamOffsetUsChanged(J)V
    .registers 4
    .param p1, "outputStreamOffsetUs"    # J

    .line 745
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setOutputStreamOffsetUs(J)V

    .line 746
    return-void
.end method

.method protected onPositionDiscontinuity()V
    .registers 2

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 558
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 5
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 575
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 576
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->experimentalKeepAudioTrackOnSeek:Z

    if-eqz v0, :cond_d

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->experimentalFlushWithoutAudioTrackRelease()V

    goto :goto_12

    .line 579
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V

    .line 582
    :goto_12
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 584
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 585
    return-void
.end method

.method protected onProcessedStreamChange()V
    .registers 2

    .line 675
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    .line 676
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    .line 677
    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 7
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 662
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_21

    .line 666
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    .line 667
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 669
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 671
    :cond_21
    return-void
.end method

.method protected onRelease()V
    .registers 2

    .line 629
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->release()V

    .line 630
    return-void
.end method

.method protected onReset()V
    .registers 4

    .line 618
    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10

    .line 620
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    if-eqz v1, :cond_f

    .line 621
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    .line 622
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    .line 625
    :cond_f
    return-void

    .line 620
    :catchall_10
    move-exception v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    if-eqz v2, :cond_1c

    .line 621
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    .line 622
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    .line 624
    :cond_1c
    throw v1
.end method

.method protected onStarted()V
    .registers 2

    .line 589
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 590
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->play()V

    .line 591
    return-void
.end method

.method protected onStopped()V
    .registers 2

    .line 595
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    .line 596
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    .line 597
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    .line 598
    return-void
.end method

.method protected processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
    .registers 27
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "codec"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .param p6, "buffer"    # Ljava/nio/ByteBuffer;
    .param p7, "bufferIndex"    # I
    .param p8, "bufferFlags"    # I
    .param p9, "sampleCount"    # I
    .param p10, "bufferPresentationTimeUs"    # J
    .param p12, "isDecodeOnlyBuffer"    # Z
    .param p13, "isLastBuffer"    # Z
    .param p14, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 693
    move-object v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    move/from16 v4, p9

    invoke-static/range {p6 .. p6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decryptOnlyCodecFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1e

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_1e

    .line 698
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v0, v3, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 699
    return v5

    .line 702
    :cond_1e
    if-eqz p12, :cond_32

    .line 703
    if-eqz v2, :cond_25

    .line 704
    invoke-interface {v2, v3, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 706
    :cond_25
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v6, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 707
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    .line 708
    return v5

    .line 713
    :cond_32
    :try_start_32
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;
    :try_end_34
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_32 .. :try_end_34} :catch_61
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_32 .. :try_end_34} :catch_51

    move-object/from16 v7, p6

    move-wide/from16 v8, p10

    :try_start_38
    invoke-interface {v0, v7, v8, v9, v4}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result v0
    :try_end_3c
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_38 .. :try_end_3c} :catch_4f
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_38 .. :try_end_3c} :catch_4d

    .line 720
    .local v0, "fullyConsumed":Z
    nop

    .line 722
    if-eqz v0, :cond_4c

    .line 723
    if-eqz v2, :cond_44

    .line 724
    invoke-interface {v2, v3, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 726
    :cond_44
    iget-object v6, v1, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v10, v6, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v10, v4

    iput v10, v6, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 727
    return v5

    .line 730
    :cond_4c
    return v6

    .line 717
    .end local v0    # "fullyConsumed":Z
    :catch_4d
    move-exception v0

    goto :goto_56

    .line 714
    :catch_4f
    move-exception v0

    goto :goto_66

    .line 717
    :catch_51
    move-exception v0

    move-object/from16 v7, p6

    move-wide/from16 v8, p10

    .line 718
    .local v0, "e":Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
    :goto_56
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 v6, 0x138a

    move-object/from16 v10, p14

    invoke-virtual {p0, v0, v10, v5, v6}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v5

    throw v5

    .line 714
    .end local v0    # "e":Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
    :catch_61
    move-exception v0

    move-object/from16 v7, p6

    move-wide/from16 v8, p10

    :goto_66
    move-object/from16 v10, p14

    .line 715
    .local v0, "e":Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->isRecoverable:Z

    const/16 v11, 0x1389

    invoke-virtual {p0, v0, v5, v6, v11}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v5

    throw v5
.end method

.method protected renderToEndOfStream()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V
    :try_end_5
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 740
    nop

    .line 741
    return-void

    .line 737
    :catch_7
    move-exception v0

    .line 738
    .local v0, "e":Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 3
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 652
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 653
    return-void
.end method

.method protected shouldUseBypass(Lcom/google/android/exoplayer2/Format;)Z
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    return v0
.end method

.method protected supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .registers 16
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 290
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 291
    invoke-static {v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v0

    return v0

    .line 294
    :cond_e
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_17

    const/16 v0, 0x20

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 295
    .local v0, "tunnelingSupport":I
    :goto_18
    iget v2, p2, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 296
    .local v2, "formatHasDrm":Z
    :goto_20
    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    .line 299
    .local v4, "supportsFormatDrm":Z
    const/16 v5, 0x8

    const/4 v6, 0x4

    if-eqz v4, :cond_3e

    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 300
    invoke-interface {v7, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v7

    if-eqz v7, :cond_3e

    if-eqz v2, :cond_39

    .line 301
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecryptOnlyDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v7

    if-eqz v7, :cond_3e

    .line 302
    :cond_39
    invoke-static {v6, v5, v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

    move-result v1

    return v1

    .line 306
    :cond_3e
    const-string v7, "audio/raw"

    iget-object v8, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v7, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v7

    if-nez v7, :cond_55

    .line 307
    invoke-static {v3}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v1

    return v1

    .line 310
    :cond_55
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget v8, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v9, p2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 311
    const/4 v10, 0x2

    invoke-static {v10, v8, v9}, Lcom/google/android/exoplayer2/util/Util;->getPcmFormat(III)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 310
    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v7

    if-nez v7, :cond_6b

    .line 312
    invoke-static {v3}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v1

    return v1

    .line 314
    :cond_6b
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 315
    invoke-static {p1, p2, v1, v7}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZLcom/google/android/exoplayer2/audio/AudioSink;)Ljava/util/List;

    move-result-object v7

    .line 316
    .local v7, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 317
    invoke-static {v3}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v1

    return v1

    .line 319
    :cond_7c
    if-nez v4, :cond_83

    .line 320
    invoke-static {v10}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v1

    return v1

    .line 324
    :cond_83
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 325
    .local v3, "decoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v8

    .line 326
    .local v8, "isFormatSupported":Z
    const/4 v9, 0x1

    .line 327
    .local v9, "isPreferredDecoder":Z
    if-nez v8, :cond_aa

    .line 329
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_91
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_aa

    .line 330
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 331
    .local v11, "otherDecoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    invoke-virtual {v11, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v12

    if-eqz v12, :cond_a7

    .line 332
    move-object v3, v11

    .line 333
    const/4 v8, 0x1

    .line 334
    const/4 v9, 0x0

    .line 335
    goto :goto_aa

    .line 329
    .end local v11    # "otherDecoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    :cond_a7
    add-int/lit8 v10, v10, 0x1

    goto :goto_91

    .line 340
    .end local v10    # "i":I
    :cond_aa
    :goto_aa
    if-eqz v8, :cond_ad

    goto :goto_ae

    :cond_ad
    const/4 v6, 0x3

    .line 343
    .local v6, "formatSupport":I
    :goto_ae
    if-eqz v8, :cond_b9

    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v10

    if-eqz v10, :cond_b9

    .line 344
    const/16 v5, 0x10

    goto :goto_ba

    .line 345
    :cond_b9
    nop

    :goto_ba
    nop

    .line 348
    .local v5, "adaptiveSupport":I
    iget-boolean v10, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    if-eqz v10, :cond_c2

    .line 349
    const/16 v10, 0x40

    goto :goto_c3

    .line 350
    :cond_c2
    const/4 v10, 0x0

    :goto_c3
    nop

    .line 352
    .local v10, "hardwareAccelerationSupport":I
    if-eqz v9, :cond_c8

    const/16 v1, 0x80

    .line 353
    .local v1, "decoderSupport":I
    :cond_c8
    invoke-static {v6, v5, v0, v10, v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(IIIII)I

    move-result v11

    return v11
.end method
