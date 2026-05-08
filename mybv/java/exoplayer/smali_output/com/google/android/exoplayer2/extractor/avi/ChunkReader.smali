.class final Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
.super Ljava/lang/Object;
.source "ChunkReader.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CHUNK_TYPE_AUDIO:I = 0x62770000

.field private static final CHUNK_TYPE_VIDEO_COMPRESSED:I = 0x63640000

.field private static final CHUNK_TYPE_VIDEO_UNCOMPRESSED:I = 0x62640000

.field private static final INITIAL_INDEX_SIZE:I = 0x200


# instance fields
.field private final alternativeChunkId:I

.field private bytesRemainingInCurrentChunk:I

.field private final chunkId:I

.field private currentChunkIndex:I

.field private currentChunkSize:I

.field private final durationUs:J

.field private indexChunkCount:I

.field private indexSize:I

.field private keyFrameIndices:[I

.field private keyFrameOffsets:[J

.field private final streamHeaderChunkCount:I

.field protected final trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(IIJILcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "trackType"    # I
    .param p3, "durationnUs"    # J
    .param p5, "streamHeaderChunkCount"    # I
    .param p6, "trackOutput"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_b

    if-ne p2, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 90
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->durationUs:J

    .line 91
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->streamHeaderChunkCount:I

    .line 92
    iput-object p6, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 95
    if-ne p2, v0, :cond_19

    const/high16 v1, 0x63640000

    goto :goto_1b

    :cond_19
    const/high16 v1, 0x62770000

    .line 96
    .local v1, "chunkType":I
    :goto_1b
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->getChunkIdFourCc(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->chunkId:I

    .line 97
    nop

    .line 98
    if-ne p2, v0, :cond_2b

    const/high16 v0, 0x62640000

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->getChunkIdFourCc(II)I

    move-result v0

    goto :goto_2c

    :cond_2b
    const/4 v0, -0x1

    :goto_2c
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->alternativeChunkId:I

    .line 99
    const/16 v0, 0x200

    new-array v2, v0, [J

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 100
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 101
    return-void
.end method

.method private static getChunkIdFourCc(II)I
    .registers 6
    .param p0, "streamId"    # I
    .param p1, "chunkType"    # I

    .line 216
    div-int/lit8 v0, p0, 0xa

    .line 217
    .local v0, "tens":I
    rem-int/lit8 v1, p0, 0xa

    .line 218
    .local v1, "ones":I
    add-int/lit8 v2, v1, 0x30

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v0, 0x30

    or-int/2addr v2, v3

    or-int/2addr v2, p1

    return v2
.end method

.method private getChunkTimestampUs(I)J
    .registers 6
    .param p1, "chunkIndex"    # I

    .line 207
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->durationUs:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->streamHeaderChunkCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getSeekPoint(I)Lcom/google/android/exoplayer2/extractor/SeekPoint;
    .registers 8
    .param p1, "keyFrameIndex"    # I

    .line 211
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameIndices:[I

    aget v1, v1, p1

    int-to-long v1, v1

    .line 212
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->getFrameDurationUs()J

    move-result-wide v3

    mul-long v1, v1, v3

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    aget-wide v4, v3, p1

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 211
    return-object v0
.end method


# virtual methods
.method public advanceCurrentChunk()V
    .registers 2

    .line 114
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->currentChunkIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->currentChunkIndex:I

    .line 115
    return-void
.end method

.method public appendKeyFrameToIndex(J)V
    .registers 6
    .param p1, "offset"    # J

    .line 104
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->indexSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameIndices:[I

    array-length v1, v1

    if-ne v0, v1, :cond_21

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameIndices:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 108
    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->indexSize:I

    aput-wide p1, v0, v1

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->indexChunkCount:I

    aput v2, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->indexSize:I

    .line 111
    return-void
.end method

.method public compactIndex()V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->indexSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->indexSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 132
    return-void
.end method

.method public getCurrentChunkTimestampUs()J
    .registers 3

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->currentChunkIndex:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->getChunkTimestampUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrameDurationUs()J
    .registers 3

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->getChunkTimestampUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 8
    .param p1, "timeUs"    # J

    .line 190
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->getFrameDurationUs()J

    move-result-wide v0

    div-long v0, p1, v0

    long-to-int v1, v0

    .line 191
    .local v1, "targetFrameIndex":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 192
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    .line 194
    .local v0, "keyFrameIndex":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameIndices:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_1e

    .line 195
    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->getSeekPoint(I)Lcom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v2

    .line 198
    :cond_1e
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->getSeekPoint(I)Lcom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object v2

    .line 199
    .local v2, "precedingKeyFrameSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    array-length v4, v4

    if-ge v3, v4, :cond_35

    .line 200
    new-instance v3, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->getSeekPoint(I)Lcom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v3

    .line 202
    :cond_35
    new-instance v3, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v3
.end method

.method public handlesChunkId(I)Z
    .registers 3
    .param p1, "chunkId"    # I

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->chunkId:I

    if-eq v0, p1, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->alternativeChunkId:I

    if-ne v0, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public incrementIndexChunkCount()V
    .registers 2

    .line 126
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->indexChunkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->indexChunkCount:I

    .line 127
    return-void
.end method

.method public isAudio()Z
    .registers 3

    .line 147
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->chunkId:I

    const/high16 v1, 0x62770000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isCurrentFrameAKeyFrame()Z
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->currentChunkIndex:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isVideo()Z
    .registers 3

    .line 143
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->chunkId:I

    const/high16 v1, 0x63640000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public onChunkData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 11
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 162
    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    .line 163
    if-nez v0, :cond_f

    const/4 v2, 0x1

    :cond_f
    move v0, v2

    .line 164
    .local v0, "done":Z
    if-eqz v0, :cond_2a

    .line 165
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->currentChunkSize:I

    if-lez v1, :cond_27

    .line 166
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 167
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->getCurrentChunkTimestampUs()J

    move-result-wide v3

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->isCurrentFrameAKeyFrame()Z

    move-result v5

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->currentChunkSize:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 166
    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 173
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->advanceCurrentChunk()V

    .line 175
    :cond_2a
    return v0
.end method

.method public onChunkStart(I)V
    .registers 2
    .param p1, "size"    # I

    .line 152
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->currentChunkSize:I

    .line 153
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    .line 154
    return-void
.end method

.method public seekToPosition(J)V
    .registers 5
    .param p1, "position"    # J

    .line 179
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->indexSize:I

    if-nez v0, :cond_8

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->currentChunkIndex:I

    goto :goto_15

    .line 182
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 183
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 185
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->keyFrameIndices:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->currentChunkIndex:I

    .line 187
    .end local v0    # "index":I
    :goto_15
    return-void
.end method
