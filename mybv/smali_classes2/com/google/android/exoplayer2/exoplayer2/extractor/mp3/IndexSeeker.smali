.class final Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;
.super Ljava/lang/Object;
.source "IndexSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Seeker;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final MIN_TIME_BETWEEN_POINTS_US:J = 0x186a0L


# instance fields
.field private final dataEndPosition:J

.field private durationUs:J

.field private final positions:Lcom/google/android/exoplayer2/util/LongArray;

.field private final timesUs:Lcom/google/android/exoplayer2/util/LongArray;


# direct methods
.method public constructor <init>(JJJ)V
    .registers 11
    .param p1, "durationUs"    # J
    .param p3, "dataStartPosition"    # J
    .param p5, "dataEndPosition"    # J

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->durationUs:J

    .line 46
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->dataEndPosition:J

    .line 47
    new-instance v0, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 48
    new-instance v1, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    .line 49
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 50
    invoke-virtual {v1, p3, p4}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 51
    return-void
.end method


# virtual methods
.method public getDataEndPosition()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 10
    .param p1, "timeUs"    # J

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 79
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Lcom/google/android/exoplayer2/util/LongArray;JZZ)I

    move-result v0

    .line 80
    .local v0, "targetIndex":I
    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 81
    .local v2, "seekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    iget-wide v3, v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_43

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_28

    goto :goto_43

    .line 84
    :cond_28
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    add-int/lit8 v4, v0, 0x1

    .line 85
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 86
    .local v1, "nextSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    new-instance v3, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v3, v2, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v3

    .line 82
    .end local v1    # "nextSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    :cond_43
    :goto_43
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v1
.end method

.method public getTimeUs(J)J
    .registers 6
    .param p1, "position"    # J

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    .line 56
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Lcom/google/android/exoplayer2/util/LongArray;JZZ)I

    move-result v0

    .line 58
    .local v0, "targetIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public isSeekable()Z
    .registers 2

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public isTimeUsInIndex(J)Z
    .registers 11
    .param p1, "timeUs"    # J

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v0

    .line 114
    .local v0, "lastIndexedTimeUs":J
    sub-long v3, p1, v0

    const-wide/32 v5, 0x186a0

    cmp-long v7, v3, v5

    if-gez v7, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2
.end method

.method public maybeAddSeekPoint(JJ)V
    .registers 6
    .param p1, "timeUs"    # J
    .param p3, "position"    # J

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 100
    return-void

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 104
    return-void
.end method

.method setDurationUs(J)V
    .registers 3
    .param p1, "durationUs"    # J

    .line 118
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->durationUs:J

    .line 119
    return-void
.end method
