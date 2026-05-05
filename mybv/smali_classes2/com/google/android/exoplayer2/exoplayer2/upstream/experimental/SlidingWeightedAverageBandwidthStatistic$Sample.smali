.class public Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;
.super Ljava/lang/Object;
.source "SlidingWeightedAverageBandwidthStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sample"
.end annotation


# instance fields
.field public final bitrate:J

.field public final timeAddedMs:J

.field public final weight:D


# direct methods
.method public constructor <init>(JDJ)V
    .registers 7
    .param p1, "bitrate"    # J
    .param p3, "weight"    # D
    .param p5, "timeAddedMs"    # J

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->bitrate:J

    .line 53
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->weight:D

    .line 54
    iput-wide p5, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic$Sample;->timeAddedMs:J

    .line 55
    return-void
.end method
