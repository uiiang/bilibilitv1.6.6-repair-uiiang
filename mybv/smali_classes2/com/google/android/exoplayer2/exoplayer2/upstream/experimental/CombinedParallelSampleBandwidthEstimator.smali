.class public Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;
.super Ljava/lang/Object;
.source "CombinedParallelSampleBandwidthEstimator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;
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
.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->access$100(Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    .line 131
    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->minSamples:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->access$200(Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->minSamples:I

    .line 132
    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->minBytesTransferred:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->access$300(Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->minBytesTransferred:J

    .line 133
    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->access$400(Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)Lcom/google/android/exoplayer2/util/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 134
    new-instance v0, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    .line 135
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    .line 136
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->lastReportedBandwidthEstimate:J

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$1;

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;-><init>(Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)V

    return-void
.end method

.method private maybeNotifyBandwidthSample(IJJ)V
    .registers 15
    .param p1, "elapsedMs"    # I
    .param p2, "bytesTransferred"    # J
    .param p4, "bandwidthEstimate"    # J

    .line 207
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p4, v0

    if-eqz v2, :cond_20

    if-nez p1, :cond_15

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_15

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->lastReportedBandwidthEstimate:J

    cmp-long v2, p4, v0

    if-nez v2, :cond_15

    goto :goto_20

    .line 213
    :cond_15
    iput-wide p4, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->lastReportedBandwidthEstimate:J

    .line 214
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->bandwidthSample(IJJ)V

    .line 215
    return-void

    .line 211
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
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->addListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 142
    return-void
.end method

.method public getBandwidthEstimate()J
    .registers 3

    .line 189
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    return-wide v0
.end method

.method public onBytesTransferred(Lcom/google/android/exoplayer2/upstream/DataSource;I)V
    .registers 7
    .param p1, "source"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "bytesTransferred"    # I

    .line 162
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    .line 163
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    .line 164
    return-void
.end method

.method public onNetworkTypeChange(J)V
    .registers 13
    .param p1, "newBandwidthEstimate"    # J

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 195
    .local v0, "nowMs":J
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    const/4 v3, 0x0

    if-lez v2, :cond_12

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    sub-long v4, v0, v4

    long-to-int v2, v4

    move v5, v2

    goto :goto_13

    :cond_12
    const/4 v5, 0x0

    .line 196
    .local v5, "sampleElapsedTimeMs":I
    :goto_13
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    move-object v4, p0

    move-wide v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->maybeNotifyBandwidthSample(IJJ)V

    .line 197
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;->reset()V

    .line 198
    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    .line 199
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    .line 200
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    .line 201
    iput v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalSamplesAdded:I

    .line 202
    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    .line 203
    return-void
.end method

.method public onTransferEnd(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .registers 16
    .param p1, "source"    # Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 168
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 169
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    .line 170
    if-lez v0, :cond_13

    .line 171
    return-void

    .line 173
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 174
    .local v2, "nowMs":J
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    int-to-long v4, v0

    .line 175
    .local v4, "sampleElapsedTimeMs":J
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_54

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    const-wide/16 v10, 0x3e8

    mul-long v10, v10, v4

    invoke-interface {v0, v8, v9, v10, v11}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;->addSample(JJ)V

    .line 177
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalSamplesAdded:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalSamplesAdded:I

    .line 178
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->minSamples:I

    if-le v0, v1, :cond_49

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->minBytesTransferred:J

    cmp-long v10, v0, v8

    if-lez v10, :cond_49

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;->getBandwidthEstimate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    .line 181
    :cond_49
    long-to-int v9, v4

    iget-wide v10, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    iget-wide v12, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->maybeNotifyBandwidthSample(IJJ)V

    .line 183
    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    .line 185
    :cond_54
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
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    if-nez v0, :cond_c

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    .line 157
    :cond_c
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->streamCount:I

    .line 158
    return-void
.end method

.method public removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 3
    .param p1, "eventListener"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->removeListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 147
    return-void
.end method
