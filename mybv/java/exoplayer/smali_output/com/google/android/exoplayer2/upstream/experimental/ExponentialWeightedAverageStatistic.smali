.class public Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageStatistic;
.super Ljava/lang/Object;
.source "ExponentialWeightedAverageStatistic.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_SMOOTHING_FACTOR:D = 0.9999


# instance fields
.field private bitrateEstimate:J

.field private final smoothingFactor:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 40
    const-wide v0, 0x3fefff2e48e8a71eL    # 0.9999

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageStatistic;-><init>(D)V

    .line 41
    return-void
.end method

.method public constructor <init>(D)V
    .registers 5
    .param p1, "smoothingFactor"    # D

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageStatistic;->smoothingFactor:D

    .line 50
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    .line 51
    return-void
.end method


# virtual methods
.method public addSample(JJ)V
    .registers 15
    .param p1, "bytes"    # J
    .param p3, "durationUs"    # J

    .line 55
    const-wide/32 v0, 0x7a1200

    mul-long v0, v0, p1

    div-long/2addr v0, p3

    .line 56
    .local v0, "bitrate":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_11

    .line 57
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    .line 58
    return-void

    .line 61
    :cond_11
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageStatistic;->smoothingFactor:D

    long-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 62
    .local v2, "factor":D
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v2

    long-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    .line 63
    return-void
.end method

.method public getBandwidthEstimate()J
    .registers 3

    .line 67
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .line 72
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageStatistic;->bitrateEstimate:J

    .line 73
    return-void
.end method
