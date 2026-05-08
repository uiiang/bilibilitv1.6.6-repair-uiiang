.class public Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;
.super Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;
.source "VolumeBalanceAudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;
    }
.end annotation


# static fields
.field private static final LIMITER_CEILING:F = 0.98f

.field private static final MIN_MEAN_SQUARE:D = 1.0E-12

.field private static final TAG:Ljava/lang/String; = "VolumeBalanceAP"

.field private static final TARGET_RMS_DB:D = -14.0

.field private static videoSequence:I


# instance fields
.field private calibrationSampleCount:J

.field private calibrationSumSquares:D

.field private channelCount:I

.field private currentGain:F

.field private currentVideoId:I

.field private inputEncoding:I

.field private volatile level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

.field private logCounter:I

.field private volatile params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

.field private programMeanSquare:Ljava/lang/Double;

.field private sampleRateHz:I

.field private signalAccumulatedSec:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->videoSequence:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    .line 13
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 14
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->paramsFor(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    .line 15
    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->logCounter:I

    .line 17
    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentVideoId:I

    .line 19
    const v0, 0xbb80

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->sampleRateHz:I

    .line 20
    iput v4, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->channelCount:I

    .line 21
    iput v4, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->inputEncoding:I

    .line 22
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->signalAccumulatedSec:D

    .line 23
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSumSquares:D

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSampleCount:J

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    .line 33
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->resetAdaptiveState()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 36
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    .line 13
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 14
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->paramsFor(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    .line 15
    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->logCounter:I

    .line 17
    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentVideoId:I

    .line 19
    const v0, 0xbb80

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->sampleRateHz:I

    .line 20
    iput v4, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->channelCount:I

    .line 21
    iput v4, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->inputEncoding:I

    .line 22
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->signalAccumulatedSec:D

    .line 23
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSumSquares:D

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSampleCount:J

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    .line 37
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 38
    invoke-static {p1}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->paramsFor(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    .line 39
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->resetAdaptiveState()V

    .line 40
    return-void
.end method

.method static synthetic access$000(D)F
    .locals 2

    .prologue
    .line 11
    invoke-static {p0, p1}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->dbToLinear(D)F

    move-result v0

    return v0
.end method

.method private static alphaForTimeConstant(DD)D
    .locals 6

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 316
    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {p2, p3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v4

    if-nez v4, :cond_12

    :cond_10
    move-wide v0, v2

    .line 320
    :cond_11
    :goto_11
    return-wide v0

    .line 317
    :cond_12
    cmpg-double v4, p0, v0

    if-lez v4, :cond_11

    .line 318
    cmpg-double v4, p2, v0

    if-gtz v4, :cond_1c

    move-wide v0, v2

    goto :goto_11

    .line 319
    :cond_1c
    neg-double v4, p0

    div-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    sub-double v4, v2, v4

    .line 320
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_11
.end method

.method private static dbToLinear(D)F
    .locals 4

    .prologue
    .line 311
    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    .line 312
    :goto_8
    return v0

    :cond_9
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double v2, p0, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_8
.end method

.method private static paramsFor(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;
    .locals 18

    .prologue
    .line 272
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$1;->$SwitchMap$tv$danmaku$videoplayer$core$media$exo$AudioBalanceLevel:[I

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 295
    const-wide/16 v2, 0x0

    .line 296
    const-wide/16 v4, 0x0

    .line 297
    const-wide/16 v6, 0x0

    .line 298
    const-wide/high16 v8, -0x3fa2000000000000L    # -120.0

    .line 299
    const-wide/16 v10, 0x0

    .line 300
    const-wide/16 v12, 0x0

    .line 301
    const-wide v14, 0x3fa999999999999aL    # 0.05

    .line 302
    const-wide v16, 0x3fb999999999999aL    # 0.1

    .line 306
    :goto_21
    new-instance v1, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    invoke-direct/range {v1 .. v17}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;-><init>(DDDDDDDD)V

    return-object v1

    .line 274
    :pswitch_27
    const-wide/16 v2, 0x0

    .line 275
    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    .line 276
    const-wide/high16 v6, -0x3fc8000000000000L    # -24.0

    .line 277
    const-wide/high16 v8, -0x3fb2000000000000L    # -60.0

    .line 278
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 279
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 280
    const-wide v14, 0x3fd3333333333333L    # 0.3

    .line 281
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 282
    goto :goto_21

    .line 284
    :pswitch_3b
    const-wide/16 v2, 0x0

    .line 285
    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    .line 286
    const-wide/high16 v6, -0x3fce000000000000L    # -18.0

    .line 287
    const-wide v8, -0x3fb4800000000000L    # -55.0

    .line 288
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 289
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    .line 290
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 291
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 292
    goto :goto_21

    .line 272
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_27
        :pswitch_3b
    .end packed-switch
.end method

.method private resetAdaptiveState()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 225
    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->signalAccumulatedSec:D

    .line 226
    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSumSquares:D

    .line 227
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSampleCount:J

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    .line 229
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    if-ne v0, v1, :cond_18

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_15
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    .line 230
    return-void

    .line 229
    :cond_18
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    iget v0, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->startupGainLinear:F

    goto :goto_15
.end method


# virtual methods
.method public getLevel()Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    return-object v0
.end method

.method protected onConfigure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 195
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 196
    if-eq v0, v1, :cond_8

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6a

    .line 197
    :cond_8
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->inputEncoding:I

    .line 198
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-lez v0, :cond_64

    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    :goto_10
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->sampleRateHz:I

    .line 199
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-lez v0, :cond_68

    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    :goto_18
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->channelCount:I

    .line 200
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->resetAdaptiveState()V

    .line 202
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-lez v0, :cond_63

    .line 203
    sget v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->videoSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->videoSequence:I

    .line 204
    sget v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->videoSequence:I

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentVideoId:I

    .line 205
    const-string v0, "VolumeBalanceAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New Video ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentVideoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->sampleRateHz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->channelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_63
    :goto_63
    return-object p1

    .line 198
    :cond_64
    const v0, 0xbb80

    goto :goto_10

    :cond_68
    move v0, v1

    .line 199
    goto :goto_18

    .line 210
    :cond_6a
    const-string v1, "VolumeBalanceAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    goto :goto_63
.end method

.method protected onFlush()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->resetAdaptiveState()V

    .line 217
    return-void
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->resetAdaptiveState()V

    .line 222
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 22

    .prologue
    .line 56
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_7

    .line 191
    :goto_6
    return-void

    .line 58
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 59
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 60
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 62
    move-object/from16 v0, p0

    iget-object v11, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 63
    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->isActive()Z

    move-result v2

    .line 65
    sget-object v3, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    if-eq v11, v3, :cond_26

    if-nez v2, :cond_2f

    .line 66
    :cond_26
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_6

    .line 71
    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    .line 73
    move-object/from16 v0, p0

    iget v2, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->inputEncoding:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5e

    .line 74
    const/4 v2, 0x4

    .line 79
    :goto_3b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 80
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    .line 81
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    .line 83
    sub-int v3, v15, v14

    div-int v16, v3, v2

    .line 84
    if-gtz v16, :cond_60

    .line 85
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_6

    .line 76
    :cond_5e
    const/4 v2, 0x2

    goto :goto_3b

    .line 90
    :cond_60
    const-wide/16 v4, 0x0

    .line 91
    const-wide/16 v2, 0x0

    .line 93
    move-object/from16 v0, p0

    iget v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->inputEncoding:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_84

    .line 94
    :goto_6b
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_a1

    .line 95
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    .line 96
    float-to-double v8, v6

    .line 97
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 98
    cmpl-double v17, v6, v2

    if-lez v17, :cond_80

    move-wide v2, v6

    .line 99
    :cond_80
    mul-double v6, v8, v8

    add-double/2addr v4, v6

    .line 100
    goto :goto_6b

    .line 102
    :cond_84
    :goto_84
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_a1

    .line 103
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 104
    int-to-double v6, v6

    const-wide/high16 v8, 0x40e0000000000000L    # 32768.0

    div-double v8, v6, v8

    .line 105
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 106
    cmpl-double v17, v6, v2

    if-lez v17, :cond_9d

    move-wide v2, v6

    .line 107
    :cond_9d
    mul-double v6, v8, v8

    add-double/2addr v4, v6

    .line 108
    goto :goto_84

    .line 111
    :cond_a1
    move/from16 v0, v16

    int-to-double v6, v0

    div-double v6, v4, v6

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 112
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 113
    const-wide/16 v18, 0x0

    cmpl-double v17, v6, v18

    if-lez v17, :cond_279

    const-wide/high16 v18, 0x4034000000000000L    # 20.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    mul-double v6, v6, v18

    .line 115
    :goto_be
    move-object/from16 v0, p0

    iget v0, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->sampleRateHz:I

    move/from16 v17, v0

    const/16 v18, 0x1f40

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->channelCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 117
    const/16 v19, 0x1

    div-int v18, v16, v18

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 118
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    .line 120
    iget-wide v0, v12, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->silenceGateDb:D

    move-wide/from16 v20, v0

    cmpl-double v6, v6, v20

    if-lez v6, :cond_141

    .line 121
    move-object/from16 v0, p0

    iget-wide v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->signalAccumulatedSec:D

    add-double v6, v6, v18

    move-object/from16 v0, p0

    iput-wide v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->signalAccumulatedSec:D

    .line 122
    move-object/from16 v0, p0

    iget-object v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    if-nez v6, :cond_27d

    .line 123
    move-object/from16 v0, p0

    iget-wide v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSumSquares:D

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSumSquares:D

    .line 124
    move-object/from16 v0, p0

    iget-wide v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSampleCount:J

    move/from16 v0, v16

    int-to-long v6, v0

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSampleCount:J

    .line 125
    move-object/from16 v0, p0

    iget-wide v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->signalAccumulatedSec:D

    iget-wide v6, v12, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->calibrationSignalSec:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_141

    move-object/from16 v0, p0

    iget-wide v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSampleCount:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_141

    .line 126
    move-object/from16 v0, p0

    iget-wide v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSumSquares:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSampleCount:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    .line 136
    :cond_141
    :goto_141
    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    if-nez v4, :cond_29c

    .line 137
    iget-wide v4, v12, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->startupGainDb:D

    .line 144
    :goto_149
    invoke-static {v4, v5}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->dbToLinear(D)F

    move-result v4

    .line 146
    const-wide/16 v6, 0x0

    cmpl-double v5, v2, v6

    if-lez v5, :cond_2d2

    .line 147
    const v5, 0x3f7ae148    # 0.98f

    double-to-float v2, v2

    div-float v2, v5, v2

    .line 152
    :goto_159
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 153
    move-object/from16 v0, p0

    iget v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2d6

    iget-wide v4, v12, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->gainAttackSec:D

    .line 154
    :goto_167
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v4, v5}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->alphaForTimeConstant(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 155
    move-object/from16 v0, p0

    iget v5, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    move-object/from16 v0, p0

    iget v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    sub-float/2addr v3, v6

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    iget v4, v12, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->maxGainLinear:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v12, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->minGainLinear:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    .line 156
    invoke-static {v2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v3

    if-eqz v3, :cond_19b

    move-object/from16 v0, p0

    iget v3, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_19b

    .line 157
    move-object/from16 v0, p0

    iput v2, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    .line 160
    :cond_19b
    move-object/from16 v0, p0

    iget v2, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->logCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->logCounter:I

    .line 161
    move-object/from16 v0, p0

    iget v2, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->logCounter:I

    rem-int/lit16 v2, v2, 0x1f4

    if-nez v2, :cond_24f

    .line 162
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    if-eqz v2, :cond_2da

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-object v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    .line 164
    :goto_1d2
    add-double v6, v2, v4

    .line 165
    const-string v8, "VolumeBalanceAP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[Video-"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v12, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentVideoId:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "] "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " | Program: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "%.1f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 166
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v12, v16

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dB | Gain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.1f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 167
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v9, v11

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dB | Output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 168
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_24f
    move-object/from16 v0, p0

    iget v2, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    .line 172
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    move-object/from16 v0, p0

    iget v3, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->inputEncoding:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2de

    .line 175
    :goto_25d
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_2fd

    .line 176
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    .line 177
    mul-float/2addr v3, v2

    .line 178
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_25d

    .line 113
    :cond_279
    const-wide/high16 v6, -0x3fa2000000000000L    # -120.0

    goto/16 :goto_be

    .line 129
    :cond_27d
    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 130
    iget-wide v6, v12, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->programIntegrationSec:D

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6, v7}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->alphaForTimeConstant(DD)D

    move-result-wide v6

    .line 131
    sub-double v16, v8, v4

    mul-double v6, v6, v16

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    goto/16 :goto_141

    .line 139
    :cond_29c
    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    if-eqz v4, :cond_2d0

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :goto_2aa
    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 140
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    .line 141
    const-wide/high16 v6, -0x3fd4000000000000L    # -14.0

    sub-double v4, v6, v4

    iget-wide v6, v12, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->maxGainDb:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iget-wide v6, v12, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->minGainDb:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto/16 :goto_149

    :cond_2d0
    move-wide v4, v8

    .line 139
    goto :goto_2aa

    .line 149
    :cond_2d2
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    goto/16 :goto_159

    .line 153
    :cond_2d6
    iget-wide v4, v12, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->gainReleaseSec:D

    goto/16 :goto_167

    .line 163
    :cond_2da
    const-wide/high16 v2, -0x3fa2000000000000L    # -120.0

    goto/16 :goto_1d2

    .line 181
    :cond_2de
    :goto_2de
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2fd

    .line 182
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 183
    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 184
    const/16 v4, 0x7fff

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, -0x8000

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 185
    int-to-short v3, v3

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_2de

    .line 189
    :cond_2fd
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 190
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/16 :goto_6
.end method

.method public setLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    if-ne v0, p1, :cond_5

    .line 48
    :goto_4
    return-void

    .line 44
    :cond_5
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 45
    invoke-static {p1}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->paramsFor(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    .line 46
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->resetAdaptiveState()V

    .line 47
    const-string v0, "VolumeBalanceAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
