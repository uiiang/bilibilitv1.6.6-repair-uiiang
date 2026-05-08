.class public final Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;
.super Ljava/lang/Object;
.source "DefaultLivePlaybackSpeedControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private fallbackMaxPlaybackSpeed:F

.field private fallbackMinPlaybackSpeed:F

.field private maxLiveOffsetErrorUsForUnitSpeed:J

.field private minPossibleLiveOffsetSmoothingFactor:F

.field private minUpdateIntervalMs:J

.field private proportionalControlFactorUs:F

.field private targetLiveOffsetIncrementOnRebufferUs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const v0, 0x3f7851ec    # 0.97f

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->fallbackMinPlaybackSpeed:F

    .line 113
    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->fallbackMaxPlaybackSpeed:F

    .line 114
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->minUpdateIntervalMs:J

    .line 115
    const v0, 0x33d6bf95    # 1.0E-7f

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->proportionalControlFactorUs:F

    .line 116
    nop

    .line 117
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->maxLiveOffsetErrorUsForUnitSpeed:J

    .line 118
    nop

    .line 119
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->targetLiveOffsetIncrementOnRebufferUs:J

    .line 120
    const v0, 0x3f7fbe77    # 0.999f

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->minPossibleLiveOffsetSmoothingFactor:F

    .line 121
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;
    .registers 14

    .line 249
    new-instance v12, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;

    iget v1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->fallbackMinPlaybackSpeed:F

    iget v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->fallbackMaxPlaybackSpeed:F

    iget-wide v3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->minUpdateIntervalMs:J

    iget v5, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->proportionalControlFactorUs:F

    iget-wide v6, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->maxLiveOffsetErrorUsForUnitSpeed:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->targetLiveOffsetIncrementOnRebufferUs:J

    iget v10, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->minPossibleLiveOffsetSmoothingFactor:F

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;-><init>(FFJFJJFLcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$1;)V

    return-object v12
.end method

.method public setFallbackMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;
    .registers 3
    .param p1, "fallbackMaxPlaybackSpeed"    # F

    .line 150
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 151
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->fallbackMaxPlaybackSpeed:F

    .line 152
    return-object p0
.end method

.method public setFallbackMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;
    .registers 3
    .param p1, "fallbackMinPlaybackSpeed"    # F

    .line 134
    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 135
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->fallbackMinPlaybackSpeed:F

    .line 136
    return-object p0
.end method

.method public setMaxLiveOffsetErrorMsForUnitSpeed(J)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;
    .registers 6
    .param p1, "maxLiveOffsetErrorMsForUnitSpeed"    # J

    .line 202
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 203
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->maxLiveOffsetErrorUsForUnitSpeed:J

    .line 204
    return-object p0
.end method

.method public setMinPossibleLiveOffsetSmoothingFactor(F)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;
    .registers 3
    .param p1, "minPossibleLiveOffsetSmoothingFactor"    # F

    .line 241
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 243
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->minPossibleLiveOffsetSmoothingFactor:F

    .line 244
    return-object p0
.end method

.method public setMinUpdateIntervalMs(J)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;
    .registers 6
    .param p1, "minUpdateIntervalMs"    # J

    .line 166
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 167
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->minUpdateIntervalMs:J

    .line 168
    return-object p0
.end method

.method public setProportionalControlFactor(F)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;
    .registers 3
    .param p1, "proportionalControlFactor"    # F

    .line 185
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 186
    const v0, 0x49742400    # 1000000.0f

    div-float v0, p1, v0

    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->proportionalControlFactorUs:F

    .line 187
    return-object p0
.end method

.method public setTargetLiveOffsetIncrementOnRebufferMs(J)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;
    .registers 6
    .param p1, "targetLiveOffsetIncrementOnRebufferMs"    # J

    .line 218
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 219
    nop

    .line 220
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->targetLiveOffsetIncrementOnRebufferUs:J

    .line 221
    return-object p0
.end method
