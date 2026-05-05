.class final Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;
.super Ljava/lang/Object;
.source "TsDurationReader.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TsDurationReader"


# instance fields
.field private durationUs:J

.field private firstPcrValue:J

.field private isDurationRead:Z

.field private isFirstPcrValueRead:Z

.field private isLastPcrValueRead:Z

.field private lastPcrValue:J

.field private final packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

.field private final timestampSearchBytes:I


# direct methods
.method constructor <init>(I)V
    .registers 5
    .param p1, "timestampSearchBytes"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    .line 64
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 65
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 66
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 67
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 69
    return-void
.end method

.method private finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .registers 4
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isDurationRead:Z

    .line 135
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method private readFirstPcrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;I)I
    .registers 12
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .param p3, "pcrPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    int-to-long v0, v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 142
    .local v1, "bytesToSearch":I
    const/4 v0, 0x0

    .line 143
    .local v0, "searchStartPosition":I
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    int-to-long v4, v0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1b

    .line 144
    int-to-long v2, v0

    iput-wide v2, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 145
    return v6

    .line 148
    :cond_1b
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 149
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 150
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 152
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, v2, p3}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->readFirstPcrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 153
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    .line 154
    return v3
.end method

.method private readFirstPcrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)J
    .registers 11
    .param p1, "packetBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "pcrPid"    # I

    .line 158
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 159
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 160
    .local v1, "searchEndPosition":I
    move v2, v0

    .line 161
    .local v2, "searchPosition":I
    :goto_9
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v2, v1, :cond_27

    .line 163
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    aget-byte v5, v5, v2

    const/16 v6, 0x47

    if-eq v5, v6, :cond_1b

    .line 164
    goto :goto_24

    .line 166
    :cond_1b
    invoke-static {p1, v2, p2}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J

    move-result-wide v5

    .line 167
    .local v5, "pcrValue":J
    cmp-long v7, v5, v3

    if-eqz v7, :cond_24

    .line 168
    return-wide v5

    .line 162
    .end local v5    # "pcrValue":J
    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 171
    .end local v2    # "searchPosition":I
    :cond_27
    return-wide v3
.end method

.method private readLastPcrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;I)I
    .registers 14
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .param p3, "pcrPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 177
    .local v0, "inputLength":J
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 178
    .local v3, "bytesToSearch":I
    int-to-long v4, v3

    sub-long v4, v0, v4

    .line 179
    .local v4, "searchStartPosition":J
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    const/4 v2, 0x1

    cmp-long v8, v6, v4

    if-eqz v8, :cond_1b

    .line 180
    iput-wide v4, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 181
    return v2

    .line 184
    :cond_1b
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 185
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 186
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 188
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, v6, p3}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->readLastPcrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 189
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    .line 190
    return v7
.end method

.method private readLastPcrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)J
    .registers 11
    .param p1, "packetBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "pcrPid"    # I

    .line 194
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 195
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 198
    .local v1, "searchEndPosition":I
    add-int/lit16 v2, v1, -0xbc

    .line 199
    .local v2, "searchPosition":I
    :goto_a
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v2, v0, :cond_29

    .line 201
    nop

    .line 202
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    .line 201
    invoke-static {v5, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->isStartOfTsPacket([BIII)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 203
    goto :goto_26

    .line 205
    :cond_1d
    invoke-static {p1, v2, p2}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J

    move-result-wide v5

    .line 206
    .local v5, "pcrValue":J
    cmp-long v7, v5, v3

    if-eqz v7, :cond_26

    .line 207
    return-wide v5

    .line 200
    .end local v5    # "pcrValue":J
    :cond_26
    :goto_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 210
    .end local v2    # "searchPosition":I
    :cond_29
    return-wide v3
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    return-wide v0
.end method

.method public getPcrTimestampAdjuster()Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    return-object v0
.end method

.method public isDurationReadFinished()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isDurationRead:Z

    return v0
.end method

.method public readDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;I)I
    .registers 15
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .param p3, "pcrPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    if-gtz p3, :cond_7

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 94
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    if-nez v0, :cond_10

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->readLastPcrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;I)I

    move-result v0

    return v0

    .line 97
    :cond_10
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 100
    :cond_20
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    if-nez v0, :cond_29

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->readFirstPcrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;I)I

    move-result v0

    return v0

    .line 103
    :cond_29
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->firstPcrValue:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_34

    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 107
    :cond_34
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    .line 108
    .local v0, "minPcrPositionUs":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v4

    .line 109
    .local v4, "maxPcrPositionUs":J
    sub-long v6, v4, v0

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    .line 110
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_6e

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Using TIME_UNSET instead."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TsDurationReader"

    invoke-static {v7, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    .line 114
    :cond_6e
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v2

    return v2
.end method
