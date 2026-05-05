.class public Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;
.super Ljava/lang/Object;
.source "SplitParallelSampleBandwidthEstimator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bandwidthEstimate:J

.field private final bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

.field private lastReportedBandwidthEstimate:J

.field private final minBytesTransferred:J

.field private final minSamples:I

.field private sampleBytesTransferred:J

.field private sampleStartTimeMs:J

.field private streamCount:I

.field private totalBytesTransferred:J

.field private totalSamplesAdded:I


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->access$100(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    .line 131
    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->minSamples:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->access$200(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->minSamples:I

    .line 132
    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->minBytesTransferred:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->access$300(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->minBytesTransferred:J

    .line 133
    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->access$400(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)Lcom/google/android/exoplayer2/util/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 134
    new-instance v0, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    .line 135
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    .line 136
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->lastReportedBandwidthEstimate:J

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$1;

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;-><init>(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)V

    return-void
.end method

.method private maybeNotifyBandwidthSample(IJJ)V
    .registers 15
    .param p1, "elapsedMs"    # I
    .param p2, "bytesTransferred"    # J
    .param p4, "bandwidthEstimate"    # J

    .line 205
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p4, v0

    if-eqz v2, :cond_20

    if-nez p1, :cond_15

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_15

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->lastReportedBandwidthEstimate:J

    cmp-long v2, p4, v0

    if-nez v2, :cond_15

    goto :goto_20

    .line 211
    :cond_15
    iput-wide p4, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->lastReportedBandwidthEstimate:J

    .line 212
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->bandwidthSample(IJJ)V

    .line 213
    return-void

    .line 209
    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 4
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->addListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 142
    return-void
.end method

.method public getBandwidthEstimate()J
    .registers 3

    .line 187
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    return-wide v0
.end method

.method public onBytesTransferred(Lcom/google/android/exoplayer2/upstream/DataSource;I)V
    .registers 7
    .param p1, "source"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "bytesTransferred"    # I

    .line 162
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    .line 163
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    .line 164
    return-void
.end method

.method public onNetworkTypeChange(J)V
    .registers 13
    .param p1, "newBandwidthEstimate"    # J

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 193
    .local v0, "nowMs":J
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    const/4 v3, 0x0

    if-lez v2, :cond_12

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    sub-long v4, v0, v4

    long-to-int v2, v4

    move v5, v2

    goto :goto_13

    :cond_12
    const/4 v5, 0x0

    .line 194
    .local v5, "sampleElapsedTimeMs":I
    :goto_13
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    move-object v4, p0

    move-wide v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->maybeNotifyBandwidthSample(IJJ)V

    .line 195
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;->reset()V

    .line 196
    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    .line 197
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    .line 198
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    .line 199
    iput v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalSamplesAdded:I

    .line 200
    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    .line 201
    return-void
.end method

.method public onTransferEnd(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .registers 15
    .param p1, "source"    # Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 168
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    const/4 v6, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 170
    .local v7, "nowMs":J
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    sub-long v0, v7, v0

    long-to-int v1, v0

    int-to-long v9, v1

    .line 171
    .local v9, "sampleElapsedTimeMs":J
    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-lez v0, :cond_4e

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    const-wide/16 v3, 0x3e8

    mul-long v3, v3, v9

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;->addSample(JJ)V

    .line 173
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalSamplesAdded:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalSamplesAdded:I

    .line 174
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->minSamples:I

    if-le v0, v1, :cond_41

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->minBytesTransferred:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_41

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;->getBandwidthEstimate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    .line 177
    :cond_41
    long-to-int v1, v9

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->maybeNotifyBandwidthSample(IJJ)V

    .line 179
    iput-wide v7, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    .line 180
    iput-wide v11, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    .line 182
    :cond_4e
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    .line 183
    return-void
.end method

.method public onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .registers 2
    .param p1, "source"    # Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 150
    return-void
.end method

.method public onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .registers 4
    .param p1, "source"    # Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 154
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    if-nez v0, :cond_c

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    .line 157
    :cond_c
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    .line 158
    return-void
.end method

.method public removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 3
    .param p1, "eventListener"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->removeListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 147
    return-void
.end method
