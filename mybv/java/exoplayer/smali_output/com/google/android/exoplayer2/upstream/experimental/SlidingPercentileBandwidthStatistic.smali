.class public Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;
.super Ljava/lang/Object;
.source "SlidingPercentileBandwidthStatistic.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_SAMPLES_COUNT:I = 0xa

.field public static final DEFAULT_PERCENTILE:D = 0.5


# instance fields
.field private bitrateEstimate:J

.field private final maxSampleCount:I

.field private final percentile:D

.field private final samples:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedSamples:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private weightSum:D


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 56
    const/16 v0, 0xa

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;-><init>(ID)V

    .line 57
    return-void
.end method

.method public constructor <init>(ID)V
    .registers 7
    .param p1, "maxSampleCount"    # I
    .param p2, "percentile"    # D

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-ltz v2, :cond_11

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p2, v0

    if-gtz v2, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 67
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->maxSampleCount:I

    .line 68
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->percentile:D

    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 70
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    .line 71
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->bitrateEstimate:J

    .line 72
    return-void
.end method

.method private calculateBitrateEstimate()J
    .registers 15

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 106
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 108
    :cond_b
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->percentile:D

    mul-double v0, v0, v2

    .line 109
    .local v0, "targetWeightSum":D
    const-wide/16 v2, 0x0

    .line 110
    .local v2, "previousPartialWeightSum":D
    const-wide/16 v4, 0x0

    .line 111
    .local v4, "previousSampleBitrate":J
    const-wide/16 v6, 0x0

    .line 112
    .local v6, "nextPartialWeightSum":D
    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_60

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    .line 115
    .local v9, "sample":Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;
    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->weight:D
    invoke-static {v9}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$000(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 116
    cmpl-double v10, v6, v0

    if-ltz v10, :cond_54

    .line 117
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-nez v8, :cond_40

    .line 118
    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->bitrate:J
    invoke-static {v9}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$100(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)J

    move-result-wide v10

    return-wide v10

    .line 121
    :cond_40
    nop

    .line 122
    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->bitrate:J
    invoke-static {v9}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$100(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)J

    move-result-wide v10

    sub-long/2addr v10, v4

    long-to-double v10, v10

    sub-double v12, v0, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    sub-double v12, v6, v2

    div-double/2addr v10, v12

    .line 125
    .local v10, "partialBitrateBetweenSamples":D
    double-to-long v12, v10

    add-long/2addr v12, v4

    return-wide v12

    .line 127
    .end local v10    # "partialBitrateBetweenSamples":D
    :cond_54
    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->bitrate:J
    invoke-static {v9}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$100(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)J

    move-result-wide v4

    .line 128
    move-wide v2, v6

    .line 129
    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->weight:D
    invoke-static {v9}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$000(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)D

    move-result-wide v10

    div-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 130
    .end local v9    # "sample":Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;
    goto :goto_1d

    .line 131
    :cond_60
    return-wide v4
.end method


# virtual methods
.method public addSample(JJ)V
    .registers 12
    .param p1, "bytes"    # J
    .param p3, "durationUs"    # J

    .line 76
    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->maxSampleCount:I

    if-lt v0, v1, :cond_22

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    .line 78
    .local v0, "removedSample":Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    # getter for: Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->weight:D
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$000(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    .line 80
    .end local v0    # "removedSample":Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;
    goto :goto_1

    .line 82
    :cond_22
    long-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 83
    .local v0, "weight":D
    const-wide/32 v2, 0x7a1200

    mul-long v2, v2, p1

    div-long/2addr v2, p3

    .line 84
    .local v2, "bitrate":J
    new-instance v4, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;-><init>(JD)V

    .line 85
    .local v4, "sample":Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    invoke-virtual {v5, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 87
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    add-double/2addr v5, v0

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    .line 88
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->calculateBitrateEstimate()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->bitrateEstimate:J

    .line 89
    return-void
.end method

.method public getBandwidthEstimate()J
    .registers 3

    .line 93
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->bitrateEstimate:J

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    .line 101
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->bitrateEstimate:J

    .line 102
    return-void
.end method
