.class Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;
.super Ljava/lang/Object;
.source "SlidingPercentileBandwidthStatistic.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sample"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitrate:J

.field private final weight:D


# direct methods
.method public constructor <init>(JD)V
    .registers 5
    .param p1, "bitrate"    # J
    .param p3, "weight"    # D

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->bitrate:J

    .line 140
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->weight:D

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)D
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    .line 134
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->weight:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    .line 134
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->bitrate:J

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)I
    .registers 6
    .param p1, "other"    # Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    .line 145
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->bitrate:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->bitrate:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->compareLong(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 134
    check-cast p1, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->compareTo(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)I

    move-result p1

    return p1
.end method
