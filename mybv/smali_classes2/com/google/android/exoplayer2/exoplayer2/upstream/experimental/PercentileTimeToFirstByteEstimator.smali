.class public final Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;
.super Ljava/lang/Object;
.source "PercentileTimeToFirstByteEstimator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_SAMPLES_COUNT:I = 0xa

.field public static final DEFAULT_PERCENTILE:F = 0.5f

.field private static final MAX_DATA_SPECS:I = 0xa


# instance fields
.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

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

.field private isEmpty:Z

.field private final percentile:F

.field private final slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 63
    const/16 v0, 0xa

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;-><init>(IF)V

    .line 64
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4
    .param p1, "numberOfSamples"    # I
    .param p2, "percentile"    # F

    .line 73
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;-><init>(IFLcom/google/android/exoplayer2/util/Clock;)V

    .line 74
    return-void
.end method

.method constructor <init>(IFLcom/google/android/exoplayer2/util/Clock;)V
    .registers 7
    .param p1, "numberOfSamples"    # I
    .param p2, "percentile"    # F
    .param p3, "clock"    # Lcom/google/android/exoplayer2/util/Clock;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    if-lez p1, :cond_13

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_13

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 87
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->percentile:F

    .line 88
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 89
    new-instance v1, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    .line 90
    new-instance v1, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    .line 91
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->isEmpty:Z

    .line 92
    return-void
.end method


# virtual methods
.method public getTimeToFirstByteEstimateUs()J
    .registers 3

    .line 96
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->isEmpty:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->percentile:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->getPercentile(F)F

    move-result v0

    float-to-long v0, v0

    goto :goto_13

    :cond_e
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_13
    return-wide v0
.end method

.method public onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 5
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 8
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 115
    .local v0, "initializationStartUs":Ljava/lang/Long;
    if-nez v0, :cond_b

    .line 116
    return-void

    .line 118
    :cond_b
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 120
    invoke-interface {v2}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    .line 118
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->addSample(IF)V

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->isEmpty:Z

    .line 122
    return-void
.end method

.method public reset()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->reset()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->isEmpty:Z

    .line 103
    return-void
.end method
