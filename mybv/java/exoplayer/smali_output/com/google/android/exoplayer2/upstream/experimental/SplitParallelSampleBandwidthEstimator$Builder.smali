.class public Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;
.super Ljava/lang/Object;
.source "SplitParallelSampleBandwidthEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

.field private clock:Lcom/google/android/exoplayer2/util/Clock;

.field private minBytesTransferred:J

.field private minSamples:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    .line 51
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;

    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;

    .line 42
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->minSamples:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;

    .line 42
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->minBytesTransferred:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)Lcom/google/android/exoplayer2/util/Clock;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;

    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;
    .registers 3

    .line 111
    new-instance v0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;-><init>(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$1;)V

    return-object v0
.end method

.method public setBandwidthStatistic(Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;)Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;
    .registers 2
    .param p1, "bandwidthStatistic"    # Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    .line 63
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    .line 65
    return-object p0
.end method

.method setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;
    .registers 2
    .param p1, "clock"    # Lcom/google/android/exoplayer2/util/Clock;

    .line 106
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 107
    return-object p0
.end method

.method public setMinBytesTransferred(J)Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;
    .registers 6
    .param p1, "minBytesTransferred"    # J

    .line 91
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 92
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->minBytesTransferred:J

    .line 93
    return-object p0
.end method

.method public setMinSamples(I)Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;
    .registers 3
    .param p1, "minSamples"    # I

    .line 77
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 78
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->minSamples:I

    .line 79
    return-object p0
.end method
