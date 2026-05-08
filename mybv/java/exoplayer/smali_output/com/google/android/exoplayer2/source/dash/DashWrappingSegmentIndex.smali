.class public final Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;
.super Ljava/lang/Object;
.source "DashWrappingSegmentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

.field private final timeOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;J)V
    .registers 4
    .param p1, "chunkIndex"    # Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    .param p2, "timeOffsetUs"    # J

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 43
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    .line 44
    return-void
.end method


# virtual methods
.method public getAvailableSegmentCount(JJ)J
    .registers 7
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDurationUs(JJ)J
    .registers 8
    .param p1, "segmentNum"    # J
    .param p3, "periodDurationUs"    # J

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->durationsUs:[J

    long-to-int v1, p1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getFirstAvailableSegmentNum(JJ)J
    .registers 7
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFirstSegmentNum()J
    .registers 3

    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextSegmentAvailableTimeUs(JJ)J
    .registers 7
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 68
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public getSegmentCount(J)J
    .registers 5
    .param p1, "periodDurationUs"    # J

    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSegmentNum(JJ)J
    .registers 8
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 10
    .param p1, "segmentNum"    # J

    .line 83
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    long-to-int v2, p1

    aget-wide v2, v0, v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->sizes:[I

    long-to-int v4, p1

    aget v0, v0, v4

    int-to-long v4, v0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method public getTimeUs(J)J
    .registers 8
    .param p1, "segmentNum"    # J

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    long-to-int v1, p1

    aget-wide v1, v0, v1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public isExplicit()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method
