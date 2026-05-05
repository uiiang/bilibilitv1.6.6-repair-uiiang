.class public final Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;
.super Ljava/lang/Object;
.source "FlacSeekTableSeekMap.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final firstFrameOffset:J

.field private final flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;J)V
    .registers 4
    .param p1, "flacStreamMetadata"    # Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .param p2, "firstFrameOffset"    # J

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 45
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;->firstFrameOffset:J

    .line 46
    return-void
.end method

.method private getSeekPoint(JJ)Lcom/google/android/exoplayer2/extractor/SeekPoint;
    .registers 10
    .param p1, "sampleNumber"    # J
    .param p3, "offsetFromFirstFrame"    # J

    .line 85
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 86
    .local v0, "seekTimeUs":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;->firstFrameOffset:J

    add-long/2addr v2, p3

    .line 87
    .local v2, "seekPosition":J
    new-instance v4, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    return-object v4
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 20
    .param p1, "timeUs"    # J

    .line 60
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    .line 62
    .local v3, "pointSampleNumbers":[J
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;->pointOffsets:[J

    .line 64
    .local v4, "pointOffsets":[J
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    invoke-virtual {v5, v1, v2}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide v5

    .line 65
    .local v5, "targetSampleNumber":J
    nop

    .line 66
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v3, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v8

    .line 72
    .local v8, "index":I
    const-wide/16 v9, 0x0

    const/4 v11, -0x1

    if-ne v8, v11, :cond_2b

    move-wide v12, v9

    goto :goto_2d

    :cond_2b
    aget-wide v12, v3, v8

    .line 73
    .local v12, "seekPointSampleNumber":J
    :goto_2d
    if-ne v8, v11, :cond_30

    goto :goto_32

    :cond_30
    aget-wide v9, v4, v8

    .line 74
    .local v9, "seekPointOffsetFromFirstFrame":J
    :goto_32
    invoke-direct {v0, v12, v13, v9, v10}, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;->getSeekPoint(JJ)Lcom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object v11

    .line 75
    .local v11, "seekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    iget-wide v14, v11, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    cmp-long v16, v14, v1

    if-eqz v16, :cond_53

    array-length v14, v3

    sub-int/2addr v14, v7

    if-ne v8, v14, :cond_41

    goto :goto_53

    .line 78
    :cond_41
    add-int/lit8 v7, v8, 0x1

    aget-wide v14, v3, v7

    add-int/lit8 v7, v8, 0x1

    aget-wide v1, v4, v7

    .line 79
    invoke-direct {v0, v14, v15, v1, v2}, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;->getSeekPoint(JJ)Lcom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object v1

    .line 80
    .local v1, "secondSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v2, v11, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v2

    .line 76
    .end local v1    # "secondSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    :cond_53
    :goto_53
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v11}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v1
.end method

.method public isSeekable()Z
    .registers 2

    .line 50
    const/4 v0, 0x1

    return v0
.end method
