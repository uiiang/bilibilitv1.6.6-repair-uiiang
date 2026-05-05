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

.field private static final TARGET_RMS_DB:D = -20.0


# instance fields
.field private calibrationSampleCount:J

.field private calibrationSumSquares:D

.field private channelCount:I

.field private currentGain:F

.field private inputEncoding:I

.field private volatile level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

.field private volatile params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

.field private programMeanSquare:Ljava/lang/Double;

.field private sampleRateHz:I

.field private signalAccumulatedSec:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    .line 27
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    .line 11
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 12
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->paramsFor(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    .line 14
    const v0, 0xbb80

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->sampleRateHz:I

    .line 15
    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->channelCount:I

    .line 16
    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->inputEncoding:I

    .line 17
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->signalAccumulatedSec:D

    .line 18
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSumSquares:D

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSampleCount:J

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    .line 28
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->resetAdaptiveState()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    .line 31
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    .line 11
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 12
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    invoke-static {v0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->paramsFor(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    .line 14
    const v0, 0xbb80

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->sampleRateHz:I

    .line 15
    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->channelCount:I

    .line 16
    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->inputEncoding:I

    .line 17
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->signalAccumulatedSec:D

    .line 18
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSumSquares:D

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSampleCount:J

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    .line 32
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 33
    invoke-static {p1}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->paramsFor(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    .line 34
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->resetAdaptiveState()V

    .line 35
    return-void
.end method

.method static synthetic access$000(D)F
    .locals 2

    .prologue
    .line 10
    invoke-static {p0, p1}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->dbToLinear(D)F

    move-result v0

    return v0
.end method

.method private static alphaForTimeConstant(DD)D
    .locals 6

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 299
    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {p2, p3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v4

    if-nez v4, :cond_12

    :cond_10
    move-wide v0, v2

    .line 303
    :cond_11
    :goto_11
    return-wide v0

    .line 300
    :cond_12
    cmpg-double v4, p0, v0

    if-lez v4, :cond_11

    .line 301
    cmpg-double v4, p2, v0

    if-gtz v4, :cond_1c

    move-wide v0, v2

    goto :goto_11

    .line 302
    :cond_1c
    neg-double v4, p0

    div-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    sub-double v4, v2, v4

    .line 303
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_11
.end method

.method private static dbToLinear(D)F
    .locals 4

    .prologue
    .line 294
    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    .line 295
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
    .line 245
    sget-object v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$1;->$SwitchMap$tv$danmaku$videoplayer$core$media$exo$AudioBalanceLevel:[I

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_60

    .line 278
    const-wide/16 v2, 0x0

    .line 279
    const-wide/16 v4, 0x0

    .line 280
    const-wide/16 v6, 0x0

    .line 281
    const-wide/high16 v8, -0x3fa2000000000000L    # -120.0

    .line 282
    const-wide/16 v10, 0x0

    .line 283
    const-wide/16 v12, 0x0

    .line 284
    const-wide v14, 0x3fa999999999999aL    # 0.05

    .line 285
    const-wide v16, 0x3ff3333333333333L    # 1.2

    .line 289
    :goto_21
    new-instance v1, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    invoke-direct/range {v1 .. v17}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;-><init>(DDDDDDDD)V

    return-object v1

    .line 247
    :pswitch_27
    const-wide/high16 v2, -0x3ff8000000000000L    # -3.0

    .line 248
    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    .line 249
    const-wide/high16 v6, -0x3fd0000000000000L    # -16.0

    .line 250
    const-wide v8, -0x3fb4800000000000L    # -55.0

    .line 251
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    .line 252
    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    .line 253
    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    .line 254
    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    .line 255
    goto :goto_21

    .line 257
    :pswitch_3b
    const-wide/high16 v2, -0x4008000000000000L    # -1.5

    .line 258
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 259
    const-wide/high16 v6, -0x3fd8000000000000L    # -12.0

    .line 260
    const-wide v8, -0x3fb5800000000000L    # -53.0

    .line 261
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 262
    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    .line 263
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 264
    const-wide/high16 v16, 0x4018000000000000L    # 6.0

    .line 265
    goto :goto_21

    .line 267
    :pswitch_4f
    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    .line 268
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 269
    const-wide/high16 v6, -0x3fe0000000000000L    # -8.0

    .line 270
    const-wide/high16 v8, -0x3fb7000000000000L    # -50.0

    .line 271
    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    .line 272
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 273
    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    .line 274
    const-wide/high16 v16, 0x4020000000000000L    # 8.0

    .line 275
    goto :goto_21

    .line 245
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_27
        :pswitch_3b
        :pswitch_4f
    .end packed-switch
.end method

.method private resetAdaptiveState()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 198
    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->signalAccumulatedSec:D

    .line 199
    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSumSquares:D

    .line 200
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSampleCount:J

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    .line 202
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    sget-object v1, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    if-ne v0, v1, :cond_18

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_15
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    .line 203
    return-void

    .line 202
    :cond_18
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    iget v0, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->startupGainLinear:F

    goto :goto_15
.end method


# virtual methods
.method public getLevel()Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    return-object v0
.end method

.method protected onConfigure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 176
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 177
    if-eq v0, v1, :cond_8

    const/4 v2, 0x4

    if-ne v0, v2, :cond_24

    .line 178
    :cond_8
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->inputEncoding:I

    .line 179
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-lez v0, :cond_1e

    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    :goto_10
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->sampleRateHz:I

    .line 180
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-lez v0, :cond_22

    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    :goto_18
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->channelCount:I

    .line 181
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->resetAdaptiveState()V

    .line 184
    :goto_1d
    return-object p1

    .line 179
    :cond_1e
    const v0, 0xbb80

    goto :goto_10

    :cond_22
    move v0, v1

    .line 180
    goto :goto_18

    .line 184
    :cond_24
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    goto :goto_1d
.end method

.method protected onFlush()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->resetAdaptiveState()V

    .line 190
    return-void
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->resetAdaptiveState()V

    .line 195
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 20

    .prologue
    .line 50
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_7

    .line 172
    :goto_6
    return-void

    .line 52
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 53
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 54
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 57
    sget-object v3, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->OFF:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    if-eq v2, v3, :cond_26

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->isActive()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 58
    :cond_26
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_6

    .line 63
    :cond_2f
    move-object/from16 v0, p0

    iget-object v11, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    .line 65
    move-object/from16 v0, p0

    iget v2, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->inputEncoding:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5e

    .line 66
    const/4 v2, 0x4

    .line 71
    :goto_3b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 72
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 73
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    .line 75
    sub-int v3, v14, v13

    div-int v15, v3, v2

    .line 76
    if-gtz v15, :cond_60

    .line 77
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_6

    .line 68
    :cond_5e
    const/4 v2, 0x2

    goto :goto_3b

    .line 82
    :cond_60
    const-wide/16 v4, 0x0

    .line 83
    const-wide/16 v2, 0x0

    .line 85
    move-object/from16 v0, p0

    iget v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->inputEncoding:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_84

    .line 86
    :goto_6b
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_a1

    .line 87
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    .line 88
    float-to-double v8, v6

    .line 89
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 90
    cmpl-double v16, v6, v2

    if-lez v16, :cond_80

    move-wide v2, v6

    .line 91
    :cond_80
    mul-double v6, v8, v8

    add-double/2addr v4, v6

    .line 92
    goto :goto_6b

    .line 94
    :cond_84
    :goto_84
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_a1

    .line 95
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 96
    int-to-double v6, v6

    const-wide/high16 v8, 0x40e0000000000000L    # 32768.0

    div-double v8, v6, v8

    .line 97
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 98
    cmpl-double v16, v6, v2

    if-lez v16, :cond_9d

    move-wide v2, v6

    .line 99
    :cond_9d
    mul-double v6, v8, v8

    add-double/2addr v4, v6

    .line 100
    goto :goto_84

    .line 103
    :cond_a1
    int-to-double v6, v15

    div-double v6, v4, v6

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 104
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 105
    const-wide/16 v16, 0x0

    cmpl-double v16, v6, v16

    if-lez v16, :cond_1c1

    const-wide/high16 v16, 0x4034000000000000L    # 20.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    mul-double v6, v6, v16

    .line 107
    :goto_bc
    move-object/from16 v0, p0

    iget v0, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->sampleRateHz:I

    move/from16 v16, v0

    const/16 v17, 0x1f40

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 108
    move-object/from16 v0, p0

    iget v0, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->channelCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 109
    const/16 v18, 0x1

    div-int v17, v15, v17

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 110
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v18, v16

    .line 112
    iget-wide v0, v11, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->silenceGateDb:D

    move-wide/from16 v18, v0

    cmpl-double v6, v6, v18

    if-lez v6, :cond_13d

    .line 113
    move-object/from16 v0, p0

    iget-wide v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->signalAccumulatedSec:D

    add-double v6, v6, v16

    move-object/from16 v0, p0

    iput-wide v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->signalAccumulatedSec:D

    .line 114
    move-object/from16 v0, p0

    iget-object v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    if-nez v6, :cond_1c5

    .line 115
    move-object/from16 v0, p0

    iget-wide v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSumSquares:D

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSumSquares:D

    .line 116
    move-object/from16 v0, p0

    iget-wide v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSampleCount:J

    int-to-long v6, v15

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSampleCount:J

    .line 117
    move-object/from16 v0, p0

    iget-wide v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->signalAccumulatedSec:D

    iget-wide v6, v11, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->calibrationSignalSec:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_13d

    move-object/from16 v0, p0

    iget-wide v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->calibrationSampleCount:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_13d

    .line 118
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

    .line 128
    :cond_13d
    :goto_13d
    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    if-nez v4, :cond_1e4

    .line 129
    iget-wide v4, v11, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->startupGainDb:D

    .line 136
    :goto_145
    invoke-static {v4, v5}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->dbToLinear(D)F

    move-result v4

    .line 138
    const-wide/16 v6, 0x0

    cmpl-double v5, v2, v6

    if-lez v5, :cond_21a

    .line 139
    const v5, 0x3f7ae148    # 0.98f

    double-to-float v2, v2

    div-float v2, v5, v2

    .line 144
    :goto_155
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 145
    move-object/from16 v0, p0

    iget v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_21e

    iget-wide v4, v11, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->gainAttackSec:D

    .line 146
    :goto_163
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4, v5}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->alphaForTimeConstant(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 147
    move-object/from16 v0, p0

    iget v5, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    move-object/from16 v0, p0

    iget v6, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    sub-float/2addr v3, v6

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    iget v4, v11, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->maxGainLinear:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v11, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->minGainLinear:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    .line 148
    invoke-static {v2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v3

    if-eqz v3, :cond_197

    move-object/from16 v0, p0

    iget v3, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_197

    .line 149
    move-object/from16 v0, p0

    iput v2, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    .line 152
    :cond_197
    move-object/from16 v0, p0

    iget v2, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->currentGain:F

    .line 153
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    move-object/from16 v0, p0

    iget v3, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->inputEncoding:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_222

    .line 156
    :goto_1a5
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_241

    .line 157
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    .line 158
    mul-float/2addr v3, v2

    .line 159
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_1a5

    .line 105
    :cond_1c1
    const-wide/high16 v6, -0x3fa2000000000000L    # -120.0

    goto/16 :goto_bc

    .line 121
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 122
    iget-wide v6, v11, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->programIntegrationSec:D

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->alphaForTimeConstant(DD)D

    move-result-wide v6

    .line 123
    sub-double v18, v8, v4

    mul-double v6, v6, v18

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    goto/16 :goto_13d

    .line 131
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    if-eqz v4, :cond_218

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->programMeanSquare:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :goto_1f2
    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 132
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    .line 133
    const-wide/high16 v6, -0x3fcc000000000000L    # -20.0

    sub-double v4, v6, v4

    iget-wide v6, v11, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->maxGainDb:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iget-wide v6, v11, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->minGainDb:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto/16 :goto_145

    :cond_218
    move-wide v4, v8

    .line 131
    goto :goto_1f2

    .line 141
    :cond_21a
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    goto/16 :goto_155

    .line 145
    :cond_21e
    iget-wide v4, v11, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->gainReleaseSec:D

    goto/16 :goto_163

    .line 162
    :cond_222
    :goto_222
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_241

    .line 163
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 164
    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 165
    const/16 v4, 0x7fff

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, -0x8000

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 166
    int-to-short v3, v3

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_222

    .line 170
    :cond_241
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/16 :goto_6
.end method

.method public setLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    if-ne v0, p1, :cond_5

    .line 42
    :goto_4
    return-void

    .line 39
    :cond_5
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->level:Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    .line 40
    invoke-static {p1}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->paramsFor(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->params:Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;

    .line 41
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->resetAdaptiveState()V

    goto :goto_4
.end method
