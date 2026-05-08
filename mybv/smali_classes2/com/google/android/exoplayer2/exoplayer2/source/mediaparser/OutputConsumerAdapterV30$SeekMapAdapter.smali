.class final Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;
.super Ljava/lang/Object;
.source "OutputConsumerAdapterV30.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SeekMapAdapter"
.end annotation


# instance fields
.field private final adaptedSeekMap:Landroid/media/MediaParser$SeekMap;


# direct methods
.method public constructor <init>(Landroid/media/MediaParser$SeekMap;)V
    .registers 2
    .param p1, "adaptedSeekMap"    # Landroid/media/MediaParser$SeekMap;

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->adaptedSeekMap:Landroid/media/MediaParser$SeekMap;

    .line 624
    return-void
.end method

.method private static asExoPlayerSeekPoint(Landroid/media/MediaParser$SeekPoint;)Lcom/google/android/exoplayer2/extractor/SeekPoint;
    .registers 6
    .param p0, "seekPoint"    # Landroid/media/MediaParser$SeekPoint;

    .line 654
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v1, p0, Landroid/media/MediaParser$SeekPoint;->timeMicros:J

    iget-wide v3, p0, Landroid/media/MediaParser$SeekPoint;->position:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public getDurationUs()J
    .registers 6

    .line 633
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->adaptedSeekMap:Landroid/media/MediaParser$SeekMap;

    invoke-virtual {v0}, Landroid/media/MediaParser$SeekMap;->getDurationMicros()J

    move-result-wide v0

    .line 634
    .local v0, "durationMicros":J
    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    move-wide v2, v0

    goto :goto_14

    :cond_f
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_14
    return-wide v2
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 7
    .param p1, "timeUs"    # J

    .line 640
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->adaptedSeekMap:Landroid/media/MediaParser$SeekMap;

    .line 641
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaParser$SeekMap;->getSeekPoints(J)Landroid/util/Pair;

    move-result-object v0

    .line 643
    .local v0, "seekPoints":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/MediaParser$SeekPoint;Landroid/media/MediaParser$SeekPoint;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v1, v2, :cond_1a

    .line 644
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaParser$SeekPoint;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->asExoPlayerSeekPoint(Landroid/media/MediaParser$SeekPoint;)Lcom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    .local v1, "exoPlayerSeekPoints":Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    goto :goto_2f

    .line 646
    .end local v1    # "exoPlayerSeekPoints":Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    :cond_1a
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaParser$SeekPoint;

    .line 648
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->asExoPlayerSeekPoint(Landroid/media/MediaParser$SeekPoint;)Lcom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/media/MediaParser$SeekPoint;

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->asExoPlayerSeekPoint(Landroid/media/MediaParser$SeekPoint;)Lcom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    .line 650
    .restart local v1    # "exoPlayerSeekPoints":Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    :goto_2f
    return-object v1
.end method

.method public isSeekable()Z
    .registers 2

    .line 628
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->adaptedSeekMap:Landroid/media/MediaParser$SeekMap;

    invoke-virtual {v0}, Landroid/media/MediaParser$SeekMap;->isSeekable()Z

    move-result v0

    return v0
.end method
