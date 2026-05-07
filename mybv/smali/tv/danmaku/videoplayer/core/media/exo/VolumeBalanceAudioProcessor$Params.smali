.class Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;
.super Ljava/lang/Object;
.source "VolumeBalanceAudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# instance fields
.field final calibrationSignalSec:D

.field final gainAttackSec:D

.field final gainReleaseSec:D

.field final maxGainDb:D

.field final maxGainLinear:F

.field final minGainDb:D

.field final minGainLinear:F

.field final programIntegrationSec:D

.field final silenceGateDb:D

.field final startupGainDb:D

.field final startupGainLinear:F


# direct methods
.method constructor <init>(DDDDDDDD)V
    .locals 3

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->startupGainDb:D

    .line 249
    iput-wide p3, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->maxGainDb:D

    .line 250
    iput-wide p5, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->minGainDb:D

    .line 251
    iput-wide p7, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->silenceGateDb:D

    .line 252
    iput-wide p9, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->calibrationSignalSec:D

    .line 253
    iput-wide p11, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->programIntegrationSec:D

    .line 254
    move-wide/from16 v0, p13

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->gainAttackSec:D

    .line 255
    move-wide/from16 v0, p15

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->gainReleaseSec:D

    .line 256
    # invokes: Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->dbToLinear(D)F
    invoke-static {p1, p2}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->access$000(D)F

    move-result v2

    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->startupGainLinear:F

    .line 257
    # invokes: Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->dbToLinear(D)F
    invoke-static {p3, p4}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->access$000(D)F

    move-result v2

    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->maxGainLinear:F

    .line 258
    # invokes: Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->dbToLinear(D)F
    invoke-static {p5, p6}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->access$000(D)F

    move-result v2

    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor$Params;->minGainLinear:F

    .line 259
    return-void
.end method
