.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

.field audioOffloadListener:Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

.field private audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

.field audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

.field private final context:Landroid/content/Context;

.field private enableAudioTrackPlaybackParams:Z

.field private enableFloatOutput:Z

.field private offloadMode:I


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;

    .line 241
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->offloadMode:I

    .line 243
    sget-object v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;

    .line 253
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->offloadMode:I

    .line 255
    sget-object v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 256
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Lcom/google/android/exoplayer2/audio/AudioProcessorChain;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    .line 224
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    .line 224
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    .line 224
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->offloadMode:I

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    if-nez v0, :cond_e

    .line 373
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    .line 375
    :cond_e
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    return-object v0
.end method

.method public setAudioCapabilities(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .registers 2
    .param p1, "audioCapabilities"    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 269
    return-object p0
.end method

.method public setAudioProcessorChain(Lcom/google/android/exoplayer2/audio/AudioProcessorChain;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .registers 2
    .param p1, "audioProcessorChain"    # Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    .line 295
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    .line 297
    return-object p0
.end method

.method public setAudioProcessors([Lcom/google/android/exoplayer2/audio/AudioProcessor;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .registers 3
    .param p1, "audioProcessors"    # [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 281
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setAudioProcessorChain(Lcom/google/android/exoplayer2/audio/AudioProcessorChain;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAudioTrackBufferSizeProvider(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .registers 2
    .param p1, "audioTrackBufferSizeProvider"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 353
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 354
    return-object p0
.end method

.method public setEnableAudioTrackPlaybackParams(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .registers 2
    .param p1, "enableAudioTrackPlaybackParams"    # Z

    .line 324
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z

    .line 325
    return-object p0
.end method

.method public setEnableFloatOutput(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .registers 2
    .param p1, "enableFloatOutput"    # Z

    .line 310
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z

    .line 311
    return-object p0
.end method

.method public setExperimentalAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .registers 2
    .param p1, "audioOffloadListener"    # Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    .line 366
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioOffloadListener:Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    .line 367
    return-object p0
.end method

.method public setOffloadMode(I)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .registers 2
    .param p1, "offloadMode"    # I

    .line 340
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->offloadMode:I

    .line 341
    return-object p0
.end method
