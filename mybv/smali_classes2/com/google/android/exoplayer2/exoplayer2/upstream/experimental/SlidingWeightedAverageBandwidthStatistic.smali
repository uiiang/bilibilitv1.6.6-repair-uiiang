.class public Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;
.super Ljava/lang/Object;
.source "SlidingWeightedAverageBandwidthStatistic.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;,
        Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_SAMPLES_COUNT:I = 0xa


# instance fields
.field private bitrateWeightProductSum:D

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final sampleEvictionFunction:Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;

.field private final samples:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private weightSum:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 103
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->getMaxCountEvictionFunction(J)Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;-><init>(Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;)V
    .registers 3
    .param p1, "sampleEvictionFunction"    # Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;

    .line 113
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;-><init>(Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;Lcom/google/android/exoplayer2/util/Clock;)V

    .line 114
    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;Lcom/google/android/exoplayer2/util/Clock;)V
    .registers 4
    .param p1, "sampleEvictionFunction"    # Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;
    .param p2, "clock"    # Lcom/google/android/exoplayer2/util/Clock;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 127
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->sampleEvictionFunction:Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;

    .line 128
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 129
    return-void
.end method

.method public static getAgeBasedEvictionFunction(J)Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;
    .registers 3
    .param p0, "maxAgeMs"    # J

    .line 77
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->getAgeBasedEvictionFunction(JLcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;

    move-result-object v0

    return-object v0
.end method

.method static getAgeBasedEvictionFunction(JLcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;
    .registers 4
    .param p0, "maxAgeMs"    # J
    .param p2, "clock"    # Lcom/google/android/exoplayer2/util/Clock;

    .line 83
    new-instance v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;-><init>(JLcom/google/android/exoplayer2/util/Clock;)V

    return-object v0
.end method

.method public static getMaxCountEvictionFunction(J)Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;
    .registers 3
    .param p0, "maxSamplesCount"    # J

    .line 72
    new-instance v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda0;-><init>(J)V

    return-object v0
.end method

.method static synthetic lambda$getAgeBasedEvictionFunction$1(JLcom/google/android/exoplayer2/util/Clock;Ljava/util/Deque;)Z
    .registers 10
    .param p0, "maxAgeMs"    # J
    .param p2, "clock"    # Lcom/google/android/exoplayer2/util/Clock;
    .param p3, "samples"    # Ljava/util/Deque;

    .line 84
    invoke-interface {p3}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 85
    return v1

    .line 87
    :cond_8
    invoke-interface {p3}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->timeAddedMs:J

    add-long/2addr v2, p0

    invoke-interface {p2}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method static synthetic lambda$getMaxCountEvictionFunction$0(JLjava/util/Deque;)Z
    .registers 6
    .param p0, "maxSamplesCount"    # J
    .param p2, "samples"    # Ljava/util/Deque;

    .line 72
    invoke-interface {p2}, Ljava/util/Deque;->size()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, p0

    if-ltz v2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method


# virtual methods
.method public addSample(JJ)V
    .registers 20
    .param p1, "bytes"    # J
    .param p3, "durationUs"    # J

    .line 133
    move-object v0, p0

    move-wide/from16 v1, p1

    :goto_3
    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->sampleEvictionFunction:Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;->shouldEvictSample(Ljava/util/Deque;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 134
    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;

    .line 135
    .local v3, "sample":Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;
    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->bitrateWeightProductSum:D

    iget-wide v6, v3, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->bitrate:J

    long-to-double v6, v6

    iget-wide v8, v3, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->weight:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    sub-double/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->bitrateWeightProductSum:D

    .line 136
    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->weightSum:D

    iget-wide v6, v3, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->weight:D

    sub-double/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->weightSum:D

    .line 137
    .end local v3    # "sample":Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;
    goto :goto_3

    .line 139
    :cond_2c
    long-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 140
    .local v3, "weight":D
    const-wide/32 v5, 0x7a1200

    mul-long v5, v5, v1

    div-long v12, v5, p3

    .line 141
    .local v12, "bitrate":J
    new-instance v14, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;

    iget-object v5, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v10

    move-object v5, v14

    move-wide v6, v12

    move-wide v8, v3

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;-><init>(JDJ)V

    .line 142
    .local v5, "sample":Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;
    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 143
    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->bitrateWeightProductSum:D

    iget-wide v8, v5, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->bitrate:J

    long-to-double v8, v8

    iget-wide v10, v5, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->weight:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    iput-wide v6, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->bitrateWeightProductSum:D

    .line 144
    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->weightSum:D

    iget-wide v8, v5, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->weight:D

    add-double/2addr v6, v8

    iput-wide v6, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->weightSum:D

    .line 145
    return-void
.end method

.method public getBandwidthEstimate()J
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 150
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 153
    :cond_b
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->bitrateWeightProductSum:D

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->weightSum:D

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->bitrateWeightProductSum:D

    .line 160
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->weightSum:D

    .line 161
    return-void
.end method
