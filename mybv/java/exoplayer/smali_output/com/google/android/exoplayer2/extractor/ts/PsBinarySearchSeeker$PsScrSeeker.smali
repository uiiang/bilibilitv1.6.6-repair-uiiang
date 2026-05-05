.class final Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;
.super Ljava/lang/Object;
.source "PsBinarySearchSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PsScrSeeker"
.end annotation


# instance fields
.field private final packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .registers 3
    .param p1, "scrTimestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$1;

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;-><init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-void
.end method

.method private searchForScrValueInBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 22
    .param p1, "packetBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "targetScrTimeUs"    # J
    .param p4, "bufferStartOffset"    # J

    .line 98
    move-object/from16 v0, p1

    move-wide/from16 v1, p4

    const/4 v3, -0x1

    .line 99
    .local v3, "startOfLastPacketPosition":I
    const/4 v4, -0x1

    .line 100
    .local v4, "endOfLastPacketPosition":I
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 102
    .local v5, "lastScrTimeUsInRange":J
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    const/4 v8, 0x4

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v7, v8, :cond_76

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v11

    # invokes: Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;->peekIntAtPosition([BI)I
    invoke-static {v7, v11}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v7

    .line 104
    .local v7, "nextStartCode":I
    const/16 v11, 0x1ba

    if-eq v7, v11, :cond_2c

    .line 105
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 106
    goto :goto_b

    .line 108
    :cond_2c
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 112
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readScrValueFromPack(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v11

    .line 113
    .local v11, "scrValue":J
    cmp-long v8, v11, v9

    if-eqz v8, :cond_6c

    .line 114
    move-object/from16 v8, p0

    iget-object v13, v8, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v13, v11, v12}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v13

    .line 115
    .local v13, "scrTimeUs":J
    cmp-long v15, v13, p2

    if-lez v15, :cond_53

    .line 116
    cmp-long v15, v5, v9

    if-nez v15, :cond_4c

    .line 118
    invoke-static {v13, v14, v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v9

    return-object v9

    .line 121
    :cond_4c
    int-to-long v9, v3

    add-long/2addr v9, v1

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v9

    return-object v9

    .line 124
    :cond_53
    const-wide/32 v9, 0x186a0

    add-long/2addr v9, v13

    cmp-long v15, v9, p2

    if-lez v15, :cond_66

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v9, v1

    .line 126
    .local v9, "startOfPacketInStream":J
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v15

    return-object v15

    .line 129
    .end local v9    # "startOfPacketInStream":J
    :cond_66
    move-wide v5, v13

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    goto :goto_6e

    .line 113
    .end local v13    # "scrTimeUs":J
    :cond_6c
    move-object/from16 v8, p0

    .line 132
    :goto_6e
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->skipToEndOfCurrentPack(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 134
    .end local v7    # "nextStartCode":I
    .end local v11    # "scrValue":J
    goto :goto_b

    .line 136
    :cond_76
    move-object/from16 v8, p0

    cmp-long v7, v5, v9

    if-eqz v7, :cond_83

    .line 137
    int-to-long v9, v4

    add-long/2addr v9, v1

    .line 138
    .local v9, "endOfLastPacketPositionInStream":J
    invoke-static {v5, v6, v9, v10}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v7

    return-object v7

    .line 141
    .end local v9    # "endOfLastPacketPositionInStream":J
    :cond_83
    sget-object v7, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object v7
.end method

.method private static skipToEndOfCurrentPack(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 8
    .param p0, "packetBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 151
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    .line 153
    .local v0, "limit":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_10

    .line 156
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 157
    return-void

    .line 159
    :cond_10
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 162
    .local v1, "packStuffingLength":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-ge v2, v1, :cond_25

    .line 163
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 164
    return-void

    .line 166
    :cond_25
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_33

    .line 169
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 170
    return-void

    .line 173
    :cond_33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    # invokes: Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;->peekIntAtPosition([BI)I
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v2

    .line 174
    .local v2, "nextStartCode":I
    const/16 v4, 0x1bb

    if-ne v2, v4, :cond_57

    .line 175
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 176
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 177
    .local v4, "systemHeaderLength":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-ge v5, v4, :cond_54

    .line 178
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 179
    return-void

    .line 181
    :cond_54
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 188
    .end local v4    # "systemHeaderLength":I
    :cond_57
    :goto_57
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lt v4, v3, :cond_9c

    .line 189
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    # invokes: Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;->peekIntAtPosition([BI)I
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v2

    .line 190
    const/16 v4, 0x1ba

    if-eq v2, v4, :cond_9c

    const/16 v4, 0x1b9

    if-ne v2, v4, :cond_72

    .line 192
    goto :goto_9c

    .line 194
    :cond_72
    ushr-int/lit8 v4, v2, 0x8

    const/4 v5, 0x1

    if-eq v4, v5, :cond_78

    .line 195
    goto :goto_9c

    .line 197
    :cond_78
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_86

    .line 201
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 202
    return-void

    .line 204
    :cond_86
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 205
    .local v4, "pesPacketLength":I
    nop

    .line 206
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 205
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 207
    .end local v4    # "pesPacketLength":I
    goto :goto_57

    .line 208
    :cond_9c
    :goto_9c
    return-void
.end method


# virtual methods
.method public onSeekFinished()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    .line 94
    return-void
.end method

.method public searchForTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 13
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "targetTimestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    .line 83
    .local v6, "inputPosition":J
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    sub-long/2addr v0, v6

    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    .line 85
    .local v8, "bytesToSearch":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 88
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->searchForScrValueInBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    return-object v0
.end method
