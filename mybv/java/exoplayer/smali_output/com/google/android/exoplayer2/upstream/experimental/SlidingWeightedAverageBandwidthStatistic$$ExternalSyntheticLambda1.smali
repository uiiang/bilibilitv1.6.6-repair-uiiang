.class public final synthetic Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lcom/google/android/exoplayer2/util/Clock;


# direct methods
.method public synthetic constructor <init>(JLcom/google/android/exoplayer2/util/Clock;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;->f$0:J

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/exoplayer2/util/Clock;

    return-void
.end method


# virtual methods
.method public final shouldEvictSample(Ljava/util/Deque;)Z
    .registers 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;->f$0:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/exoplayer2/util/Clock;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->lambda$getAgeBasedEvictionFunction$1(JLcom/google/android/exoplayer2/util/Clock;Ljava/util/Deque;)Z

    move-result p1

    return p1
.end method
