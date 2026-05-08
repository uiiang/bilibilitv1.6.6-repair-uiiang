.class public final Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdaptationCheckpoint"
.end annotation


# instance fields
.field public final allocatedBandwidth:J

.field public final totalBandwidth:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5
    .param p1, "totalBandwidth"    # J
    .param p3, "allocatedBandwidth"    # J

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    iput-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    .line 845
    iput-wide p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    .line 846
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 850
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 851
    return v0

    .line 853
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 854
    return v2

    .line 856
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    .line 857
    .local v1, "that":Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;
    iget-wide v3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1e

    iget-wide v3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 862
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
