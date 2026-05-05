.class public final Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorInput;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final PEEK_MAX_FREE_SPACE:I = 0x80000

.field private static final PEEK_MIN_FREE_SPACE_AFTER_RESIZE:I = 0x10000

.field private static final SCRATCH_SPACE_SIZE:I = 0x1000


# instance fields
.field private final dataReader:Lcom/google/android/exoplayer2/upstream/DataReader;

.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final scratchSpace:[B

.field private final streamLength:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-string v0, "goog.exo.extractor"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataReader;JJ)V
    .registers 7
    .param p1, "dataReader"    # Lcom/google/android/exoplayer2/upstream/DataReader;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->dataReader:Lcom/google/android/exoplayer2/upstream/DataReader;

    .line 65
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 66
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    .line 67
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 68
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    .line 69
    return-void
.end method

.method private commitBytesRead(I)V
    .registers 6
    .param p1, "bytesRead"    # I

    .line 315
    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    .line 316
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 318
    :cond_9
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .registers 6
    .param p1, "length"    # I

    .line 219
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    .line 220
    .local v0, "requiredLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v2, v1

    if-le v0, v2, :cond_1d

    .line 221
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x10000

    add-int/2addr v2, v0

    const/high16 v3, 0x80000

    add-int/2addr v3, v0

    .line 222
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v1

    .line 226
    .local v1, "newPeekCapacity":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 228
    .end local v1    # "newPeekCapacity":I
    :cond_1d
    return-void
.end method

.method private readFromPeekBuffer([BII)I
    .registers 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 251
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 252
    return v1

    .line 254
    :cond_6
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 255
    .local v0, "peekBytes":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 257
    return v0
.end method

.method private readFromUpstream([BIIIZ)I
    .registers 9
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "bytesAlreadyRead"    # I
    .param p5, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_21

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->dataReader:Lcom/google/android/exoplayer2/upstream/DataReader;

    add-int v1, p2, p4

    sub-int v2, p3, p4

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataReader;->read([BII)I

    move-result v0

    .line 300
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 301
    if-nez p4, :cond_18

    if-eqz p5, :cond_18

    .line 302
    return v1

    .line 304
    :cond_18
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 306
    :cond_1e
    add-int v1, p4, v0

    return v1

    .line 297
    .end local v0    # "bytesRead":I
    :cond_21
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method private skipFromPeekBuffer(I)I
    .registers 3
    .param p1, "length"    # I

    .line 237
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 238
    .local v0, "bytesSkipped":I
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 239
    return v0
.end method

.method private updatePeekBuffer(I)V
    .registers 8
    .param p1, "bytesConsumed"    # I

    .line 266
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 267
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 268
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 269
    .local v2, "newPeekBuffer":[B
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v4, v3

    const/high16 v5, 0x80000

    sub-int/2addr v4, v5

    if-ge v0, v4, :cond_17

    .line 270
    const/high16 v4, 0x10000

    add-int/2addr v4, v0

    new-array v2, v4, [B

    .line 272
    :cond_17
    invoke-static {v3, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 274
    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .registers 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    .line 185
    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .registers 10
    .param p1, "length"    # I
    .param p2, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 169
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    .line 170
    .local v0, "bytesPeeked":I
    :goto_8
    if-ge v0, p1, :cond_21

    .line 171
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 172
    move-object v1, p0

    move v4, p1

    move v5, v0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    .line 173
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    .line 174
    const/4 v1, 0x0

    return v1

    .line 176
    :cond_1b
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    goto :goto_8

    .line 178
    :cond_21
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 179
    const/4 v1, 0x1

    return v1
.end method

.method public getLength()J
    .registers 3

    .line 204
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public getPeekPosition()J
    .registers 5

    .line 194
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .registers 3

    .line 199
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public peek([BII)I
    .registers 11
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 129
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v3

    .line 131
    .local v0, "peekBufferRemainingBytes":I
    if-nez v0, :cond_1e

    .line 132
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 133
    move-object v1, p0

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v1

    .line 139
    .local v1, "bytesPeeked":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    .line 140
    return v2

    .line 142
    :cond_18
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    goto :goto_22

    .line 144
    .end local v1    # "bytesPeeked":I
    :cond_1e
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 146
    .restart local v1    # "bytesPeeked":I
    :goto_22
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 148
    return v1
.end method

.method public peekFully([BII)V
    .registers 5
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 164
    return-void
.end method

.method public peekFully([BIIZ)Z
    .registers 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result v0

    if-nez v0, :cond_8

    .line 155
    const/4 v0, 0x0

    return v0

    .line 157
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public read([BII)I
    .registers 11
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    .line 74
    .local v0, "bytesRead":I
    if-nez v0, :cond_10

    .line 75
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 76
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    .line 79
    :cond_10
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 80
    return v0
.end method

.method public readFully([BII)V
    .registers 5
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    .line 97
    return-void
.end method

.method public readFully([BIIZ)Z
    .registers 12
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    .line 87
    .local v0, "bytesRead":I
    :goto_4
    const/4 v1, -0x1

    if-ge v0, p3, :cond_14

    if-eq v0, v1, :cond_14

    .line 88
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, v0

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    goto :goto_4

    .line 90
    :cond_14
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 91
    if-eq v0, v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method

.method public resetPeekPosition()V
    .registers 2

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 190
    return-void
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .registers 7
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 209
    .local p3, "e":Ljava/lang/Throwable;, "TE;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 210
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 211
    throw p3
.end method

.method public skip(I)I
    .registers 9
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    .line 102
    .local v0, "bytesSkipped":I
    if-nez v0, :cond_15

    .line 103
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    const/4 v3, 0x0

    array-length v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    .line 105
    :cond_15
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 106
    return v0
.end method

.method public skipFully(I)V
    .registers 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    .line 124
    return-void
.end method

.method public skipFully(IZ)Z
    .registers 11
    .param p1, "length"    # I
    .param p2, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    .line 112
    .local v0, "bytesSkipped":I
    :goto_4
    const/4 v1, -0x1

    if-ge v0, p1, :cond_1d

    if-eq v0, v1, :cond_1d

    .line 113
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v1, v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 114
    .local v7, "minLength":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    neg-int v3, v0

    .line 115
    move-object v1, p0

    move v4, v7

    move v5, v0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    .line 116
    .end local v7    # "minLength":I
    goto :goto_4

    .line 117
    :cond_1d
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 118
    if-eq v0, v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1
.end method
