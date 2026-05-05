.class final Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
.super Ljava/lang/Object;
.source "TrackSampleTable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final durationUs:J

.field public final flags:[I

.field public final maximumSize:I

.field public final offsets:[J

.field public final sampleCount:I

.field public final sizes:[I

.field public final timestampsUs:[J

.field public final track:Lcom/google/android/exoplayer2/extractor/mp4/Track;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V
    .registers 13
    .param p1, "track"    # Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .param p2, "offsets"    # [J
    .param p3, "sizes"    # [I
    .param p4, "maximumSize"    # I
    .param p5, "timestampsUs"    # [J
    .param p6, "flags"    # [I
    .param p7, "durationUs"    # J

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    array-length v0, p3

    array-length v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 59
    array-length v0, p2

    array-length v1, p5

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 60
    array-length v0, p6

    array-length v1, p5

    if-ne v0, v1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 63
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    .line 64
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    .line 65
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    .line 66
    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    .line 67
    iput-object p6, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    .line 68
    iput-wide p7, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 69
    array-length v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    .line 70
    array-length v0, p6

    if-lez v0, :cond_3e

    .line 71
    array-length v0, p6

    sub-int/2addr v0, v3

    aget v1, p6, v0

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    aput v1, p6, v0

    .line 73
    :cond_3e
    return-void
.end method


# virtual methods
.method public getIndexOfEarlierOrEqualSynchronizationSample(J)I
    .registers 7
    .param p1, "timeUs"    # J

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 86
    .local v0, "startIndex":I
    move v1, v0

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_16

    .line 87
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v3, v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_13

    .line 88
    return v1

    .line 86
    :cond_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 91
    .end local v1    # "i":I
    :cond_16
    const/4 v1, -0x1

    return v1
.end method

.method public getIndexOfLaterOrEqualSynchronizationSample(J)I
    .registers 7
    .param p1, "timeUs"    # J

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 103
    .local v0, "startIndex":I
    move v1, v0

    .local v1, "i":I
    :goto_9
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    array-length v3, v3

    if-ge v1, v3, :cond_19

    .line 104
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v3, v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_16

    .line 105
    return v1

    .line 103
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 108
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method
