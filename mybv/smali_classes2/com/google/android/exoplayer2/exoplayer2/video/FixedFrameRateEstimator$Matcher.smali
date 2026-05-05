.class final Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;
.super Ljava/lang/Object;
.source "FixedFrameRateEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Matcher"
.end annotation


# instance fields
.field private firstFrameDurationNs:J

.field private firstFramePresentationTimeNs:J

.field private frameCount:J

.field private lastFramePresentationTimeNs:J

.field private matchingFrameCount:J

.field private matchingFrameDurationSumNs:J

.field private recentFrameOutlierCount:I

.field private final recentFrameOutlierFlags:[Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/16 v0, 0xf

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    .line 161
    return-void
.end method

.method private static getRecentFrameOutlierIndex(J)I
    .registers 4
    .param p0, "frameCount"    # J

    .line 223
    const-wide/16 v0, 0xf

    rem-long v0, p0, v0

    long-to-int v1, v0

    return v1
.end method


# virtual methods
.method public getFrameDurationNs()J
    .registers 6

    .line 188
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    goto :goto_c

    :cond_9
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    div-long/2addr v2, v0

    :goto_c
    return-wide v2
.end method

.method public getMatchingFrameDurationSumNs()J
    .registers 3

    .line 184
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    return-wide v0
.end method

.method public isLastFrameOutlier()Z
    .registers 6

    .line 177
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    .line 178
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_a
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->getRecentFrameOutlierIndex(J)I

    move-result v0

    aget-boolean v0, v2, v0

    return v0
.end method

.method public isSynced()Z
    .registers 6

    .line 172
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    const-wide/16 v2, 0xf

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    iget v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public onNextFrame(J)V
    .registers 14
    .param p1, "framePresentationTimeNs"    # J

    .line 192
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_d

    .line 193
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->firstFramePresentationTimeNs:J

    goto :goto_5a

    .line 194
    :cond_d
    cmp-long v2, v0, v4

    if-nez v2, :cond_1c

    .line 196
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->firstFramePresentationTimeNs:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->firstFrameDurationNs:J

    .line 197
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    .line 198
    iput-wide v4, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    goto :goto_5a

    .line 200
    :cond_1c
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->lastFramePresentationTimeNs:J

    sub-long v2, p1, v2

    .line 201
    .local v2, "lastFrameDurationNs":J
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->getRecentFrameOutlierIndex(J)I

    move-result v0

    .line 202
    .local v0, "recentFrameOutlierIndex":I
    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->firstFrameDurationNs:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    const/4 v1, 0x1

    cmp-long v10, v6, v8

    if-gtz v10, :cond_4d

    .line 204
    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    .line 205
    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    .line 206
    iget-object v6, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    aget-boolean v7, v6, v0

    if-eqz v7, :cond_5a

    .line 207
    const/4 v7, 0x0

    aput-boolean v7, v6, v0

    .line 208
    iget v6, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    sub-int/2addr v6, v1

    iput v6, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    goto :goto_5a

    .line 211
    :cond_4d
    iget-object v6, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    aget-boolean v7, v6, v0

    if-nez v7, :cond_5a

    .line 212
    aput-boolean v1, v6, v0

    .line 213
    iget v6, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    .line 218
    .end local v0    # "recentFrameOutlierIndex":I
    .end local v2    # "lastFrameDurationNs":J
    :cond_5a
    :goto_5a
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    .line 219
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->lastFramePresentationTimeNs:J

    .line 220
    return-void
.end method

.method public reset()V
    .registers 3

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    .line 165
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    .line 166
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    .line 168
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 169
    return-void
.end method
