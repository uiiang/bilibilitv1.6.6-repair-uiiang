.class public final Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;
.super Ljava/lang/Object;
.source "ExponentialWeightedAverageTimeToFirstByteEstimator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_SMOOTHING_FACTOR:D = 0.85

.field private static final MAX_DATA_SPECS:I = 0xa


# instance fields
.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private estimateUs:J

.field private final initializedDataSpecs:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final smoothingFactor:D


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 53
    const-wide v0, 0x3feb333333333333L    # 0.85

    sget-object v2, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;-><init>(DLcom/google/android/exoplayer2/util/Clock;)V

    .line 54
    return-void
.end method

.method public constructor <init>(D)V
    .registers 4
    .param p1, "smoothingFactor"    # D

    .line 62
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;-><init>(DLcom/google/android/exoplayer2/util/Clock;)V

    .line 63
    return-void
.end method

.method constructor <init>(DLcom/google/android/exoplayer2/util/Clock;)V
    .registers 6
    .param p1, "smoothingFactor"    # D
    .param p3, "clock"    # Lcom/google/android/exoplayer2/util/Clock;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->smoothingFactor:D

    .line 75
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    .line 77
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    .line 78
    return-void
.end method


# virtual methods
.method public getTimeToFirstByteEstimateUs()J
    .registers 3

    .line 82
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    return-wide v0
.end method

.method public onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 5
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 11
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 100
    .local v0, "initializationStartUs":Ljava/lang/Long;
    if-nez v0, :cond_b

    .line 101
    return-void

    .line 104
    :cond_b
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 105
    .local v1, "timeToStartSampleUs":J
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_28

    .line 106
    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    goto :goto_3d

    .line 108
    :cond_28
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->smoothingFactor:D

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v5

    long-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    add-double/2addr v3, v7

    double-to-long v3, v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    .line 111
    :goto_3d
    return-void
.end method

.method public reset()V
    .registers 3

    .line 87
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    .line 88
    return-void
.end method
