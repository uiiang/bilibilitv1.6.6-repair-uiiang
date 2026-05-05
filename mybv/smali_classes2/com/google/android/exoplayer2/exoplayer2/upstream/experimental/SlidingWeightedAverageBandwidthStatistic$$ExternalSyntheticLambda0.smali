.class public final synthetic Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$SampleEvictionFunction;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final shouldEvictSample(Ljava/util/Deque;)Z
    .registers 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda0;->f$0:J

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;->lambda$getMaxCountEvictionFunction$0(JLjava/util/Deque;)Z

    move-result p1

    return p1
.end method
