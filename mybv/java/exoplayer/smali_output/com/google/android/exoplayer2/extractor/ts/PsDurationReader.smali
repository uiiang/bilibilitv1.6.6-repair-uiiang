.class final Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;
.super Ljava/lang/Object;
.source "PsDurationReader.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PsDurationReader"

.field private static final TIMESTAMP_SEARCH_BYTES:I = 0x4e20


# instance fields
.field private durationUs:J

.field private firstScrValue:J

.field private isDurationRead:Z

.field private isFirstScrValueRead:Z

.field private isLastScrValueRead:Z

.field private lastScrValue:J

.field private final packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 68
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->firstScrValue:J

    .line 69
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->lastScrValue:J

    .line 70
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->durationUs:J

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 72
    return-void
.end method

.method private static checkMarkerBits([B)Z
    .registers 5
    .param p0, "scrBytes"    # [B

    .line 234
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xc4

    const/16 v2, 0x44

    if-eq v1, v2, :cond_a

    .line 235
    return v0

    .line 239
    :cond_a
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_12

    .line 240
    return v0

    .line 244
    :cond_12
    aget-byte v1, p0, v2

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_18

    .line 245
    return v0

    .line 248
    :cond_18
    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_20

    .line 249
    return v0

    .line 253
    :cond_20
    const/16 v1, 0x8

    aget-byte v1, p0, v1

    const/4 v3, 0x3

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0
.end method

.method private finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .registers 4
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isDurationRead:Z

    .line 148
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method private peekIntAtPosition([BI)I
    .registers 5
    .param p1, "data"    # [B
    .param p2, "position"    # I

    .line 226
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private readFirstScrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 11
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    const-wide/16 v0, 0x4e20

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 155
    .local v1, "bytesToSearch":I
    const/4 v0, 0x0

    .line 156
    .local v0, "searchStartPosition":I
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    int-to-long v4, v0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1a

    .line 157
    int-to-long v2, v0

    iput-wide v2, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 158
    return v6

    .line 161
    :cond_1a
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 162
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 163
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 165
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readFirstScrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->firstScrValue:J

    .line 166
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    .line 167
    return v3
.end method

.method private readFirstScrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .registers 11
    .param p1, "packetBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 171
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 172
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 173
    .local v1, "searchEndPosition":I
    move v2, v0

    .line 174
    .local v2, "searchPosition":I
    :goto_9
    add-int/lit8 v3, v1, -0x3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v2, v3, :cond_2f

    .line 176
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v3

    .line 177
    .local v3, "nextStartCode":I
    const/16 v6, 0x1ba

    if-ne v3, v6, :cond_2c

    .line 178
    add-int/lit8 v6, v2, 0x4

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 179
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readScrValueFromPack(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v6

    .line 180
    .local v6, "scrValue":J
    cmp-long v8, v6, v4

    if-eqz v8, :cond_2c

    .line 181
    return-wide v6

    .line 175
    .end local v3    # "nextStartCode":I
    .end local v6    # "scrValue":J
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 185
    .end local v2    # "searchPosition":I
    :cond_2f
    return-wide v4
.end method

.method private readLastScrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 13
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 191
    .local v0, "inputLength":J
    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 192
    .local v3, "bytesToSearch":I
    int-to-long v4, v3

    sub-long v4, v0, v4

    .line 193
    .local v4, "searchStartPosition":J
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    const/4 v2, 0x1

    cmp-long v8, v6, v4

    if-eqz v8, :cond_1a

    .line 194
    iput-wide v4, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 195
    return v2

    .line 198
    :cond_1a
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 199
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 200
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 202
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readLastScrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->lastScrValue:J

    .line 203
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    .line 204
    return v7
.end method

.method private readLastScrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .registers 11
    .param p1, "packetBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 208
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 209
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 210
    .local v1, "searchEndPosition":I
    add-int/lit8 v2, v1, -0x4

    .line 211
    .local v2, "searchPosition":I
    :goto_a
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v2, v0, :cond_2e

    .line 213
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v5

    .line 214
    .local v5, "nextStartCode":I
    const/16 v6, 0x1ba

    if-ne v5, v6, :cond_2b

    .line 215
    add-int/lit8 v6, v2, 0x4

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 216
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readScrValueFromPack(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v6

    .line 217
    .local v6, "scrValue":J
    cmp-long v8, v6, v3

    if-eqz v8, :cond_2b

    .line 218
    return-wide v6

    .line 212
    .end local v5    # "nextStartCode":I
    .end local v6    # "scrValue":J
    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 222
    .end local v2    # "searchPosition":I
    :cond_2e
    return-wide v3
.end method

.method public static readScrValueFromPack(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .registers 7
    .param p0, "packetBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 132
    .local v0, "originalPosition":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v4, 0x9

    if-ge v1, v4, :cond_12

    .line 134
    return-wide v2

    .line 136
    :cond_12
    new-array v1, v4, [B

    .line 137
    .local v1, "scrBytes":[B
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 139
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->checkMarkerBits([B)Z

    move-result v4

    if-nez v4, :cond_23

    .line 140
    return-wide v2

    .line 142
    :cond_23
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readScrValueFromPackHeader([B)J

    move-result-wide v2

    return-wide v2
.end method

.method private static readScrValueFromPackHeader([B)J
    .registers 14
    .param p0, "scrBytes"    # [B

    .line 264
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    int-to-long v1, v1

    const-wide/16 v3, 0x38

    and-long/2addr v1, v3

    const/4 v3, 0x3

    shr-long/2addr v1, v3

    const/16 v4, 0x1e

    shl-long/2addr v1, v4

    aget-byte v0, p0, v0

    int-to-long v4, v0

    const-wide/16 v6, 0x3

    and-long/2addr v4, v6

    const/16 v0, 0x1c

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    int-to-long v4, v0

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    const/16 v0, 0x14

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    const/4 v0, 0x2

    aget-byte v4, p0, v0

    int-to-long v4, v4

    const-wide/16 v10, 0xf8

    and-long/2addr v4, v10

    shr-long/2addr v4, v3

    const/16 v12, 0xf

    shl-long/2addr v4, v12

    or-long/2addr v1, v4

    aget-byte v0, p0, v0

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0xd

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    aget-byte v0, p0, v3

    int-to-long v4, v0

    and-long/2addr v4, v8

    const/4 v0, 0x5

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    int-to-long v4, v0

    and-long/2addr v4, v10

    shr-long v3, v4, v3

    or-long/2addr v1, v3

    return-wide v1
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 123
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->durationUs:J

    return-wide v0
.end method

.method public getScrTimestampAdjuster()Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    return-object v0
.end method

.method public isDurationReadFinished()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isDurationRead:Z

    return v0
.end method

.method public readDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 14
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    if-nez v0, :cond_9

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readLastScrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 101
    :cond_9
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->lastScrValue:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    .line 102
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 104
    :cond_19
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    if-nez v0, :cond_22

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readFirstScrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 107
    :cond_22
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->firstScrValue:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2d

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 111
    :cond_2d
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    .line 112
    .local v0, "minScrPositionUs":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->lastScrValue:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v4

    .line 113
    .local v4, "maxScrPositionUs":J
    sub-long v6, v4, v0

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->durationUs:J

    .line 114
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_67

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->durationUs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Using TIME_UNSET instead."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PsDurationReader"

    invoke-static {v7, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->durationUs:J

    .line 118
    :cond_67
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v2

    return v2
.end method
