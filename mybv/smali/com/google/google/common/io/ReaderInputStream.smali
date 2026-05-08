.class final Lcom/google/common/io/ReaderInputStream;
.super Ljava/io/InputStream;
.source "ReaderInputStream.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private charBuffer:Ljava/nio/CharBuffer;

.field private doneFlushing:Z

.field private draining:Z

.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private endOfInput:Z

.field private final reader:Ljava/io/Reader;

.field private final singleByte:[B


# direct methods
.method constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V
    .registers 6
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "bufferSize"    # I

    .prologue
    .line 82
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/common/io/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V

    .line 89
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V
    .registers 6
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p3, "bufferSize"    # I

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 50
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/google/common/io/ReaderInputStream;->singleByte:[B

    .line 101
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    iput-object v0, p0, Lcom/google/common/io/ReaderInputStream;->reader:Ljava/io/Reader;

    .line 102
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    iput-object v0, p0, Lcom/google/common/io/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 103
    if-lez p3, :cond_35

    move v0, v1

    :goto_1b
    const-string v1, "bufferSize must be positive: %s"

    invoke-static {v0, v1, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 104
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 106
    invoke-static {p3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    .line 107
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 109
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 110
    return-void

    .line 103
    :cond_35
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private static availableCapacity(Ljava/nio/Buffer;)I
    .registers 3
    .param p0, "buffer"    # Ljava/nio/Buffer;

    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private drain([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 251
    iget-object v1, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 252
    .local v0, "remaining":I
    iget-object v1, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 253
    return v0
.end method

.method private static grow(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .registers 5
    .param p0, "buf"    # Ljava/nio/CharBuffer;

    .prologue
    .line 190
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    .line 191
    .local v1, "copy":[C
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 192
    .local v0, "bigger":Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 193
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 194
    return-object v0
.end method

.method private readMoreChars()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v2}, Lcom/google/common/io/ReaderInputStream;->availableCapacity(Ljava/nio/Buffer;)I

    move-result v2

    if-nez v2, :cond_19

    .line 208
    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    if-lez v2, :cond_38

    .line 210
    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 218
    :cond_19
    :goto_19
    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    .line 219
    .local v0, "limit":I
    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->reader:Ljava/io/Reader;

    iget-object v3, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v4}, Lcom/google/common/io/ReaderInputStream;->availableCapacity(Ljava/nio/Buffer;)I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 220
    .local v1, "numChars":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_41

    .line 221
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/common/io/ReaderInputStream;->endOfInput:Z

    .line 225
    :goto_37
    return-void

    .line 213
    .end local v0    # "limit":I
    .end local v1    # "numChars":I
    :cond_38
    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v2}, Lcom/google/common/io/ReaderInputStream;->grow(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    goto :goto_19

    .line 223
    .restart local v0    # "limit":I
    .restart local v1    # "numChars":I
    :cond_41
    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_37
.end method

.method private startDraining(Z)V
    .registers 3
    .param p1, "overflow"    # Z

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 239
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_1e

    .line 240
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 244
    :goto_1d
    return-void

    .line 242
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/io/ReaderInputStream;->draining:Z

    goto :goto_1d
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 115
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->singleByte:[B

    invoke-virtual {p0, v0}, Lcom/google/common/io/ReaderInputStream;->read([B)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->singleByte:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public read([BII)I
    .registers 13
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 127
    add-int v4, p2, p3

    array-length v5, p1

    invoke-static {p2, v4, v5}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 128
    if-nez p3, :cond_c

    move v2, v3

    .line 182
    :cond_b
    :goto_b
    return v2

    .line 133
    :cond_c
    const/4 v2, 0x0

    .line 134
    .local v2, "totalBytesRead":I
    iget-boolean v0, p0, Lcom/google/common/io/ReaderInputStream;->endOfInput:Z

    .line 140
    .local v0, "doneEncoding":Z
    :goto_f
    iget-boolean v4, p0, Lcom/google/common/io/ReaderInputStream;->draining:Z

    if-eqz v4, :cond_2d

    .line 141
    add-int v4, p2, v2

    sub-int v5, p3, v2

    invoke-direct {p0, p1, v4, v5}, Lcom/google/common/io/ReaderInputStream;->drain([BII)I

    move-result v4

    add-int/2addr v2, v4

    .line 142
    if-eq v2, p3, :cond_22

    iget-boolean v4, p0, Lcom/google/common/io/ReaderInputStream;->doneFlushing:Z

    if-eqz v4, :cond_26

    .line 143
    :cond_22
    if-gtz v2, :cond_b

    const/4 v2, -0x1

    goto :goto_b

    .line 145
    :cond_26
    iput-boolean v3, p0, Lcom/google/common/io/ReaderInputStream;->draining:Z

    .line 146
    iget-object v4, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 153
    :cond_2d
    :goto_2d
    iget-boolean v4, p0, Lcom/google/common/io/ReaderInputStream;->doneFlushing:Z

    if-eqz v4, :cond_3d

    .line 154
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 161
    .local v1, "result":Ljava/nio/charset/CoderResult;
    :goto_33
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 163
    invoke-direct {p0, v8}, Lcom/google/common/io/ReaderInputStream;->startDraining(Z)V

    goto :goto_f

    .line 155
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :cond_3d
    if-eqz v0, :cond_48

    .line 156
    iget-object v4, p0, Lcom/google/common/io/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .restart local v1    # "result":Ljava/nio/charset/CoderResult;
    goto :goto_33

    .line 158
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :cond_48
    iget-object v4, p0, Lcom/google/common/io/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    iget-object v6, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-boolean v7, p0, Lcom/google/common/io/ReaderInputStream;->endOfInput:Z

    invoke-virtual {v4, v5, v6, v7}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .restart local v1    # "result":Ljava/nio/charset/CoderResult;
    goto :goto_33

    .line 165
    :cond_55
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 170
    if-eqz v0, :cond_63

    .line 171
    iput-boolean v8, p0, Lcom/google/common/io/ReaderInputStream;->doneFlushing:Z

    .line 172
    invoke-direct {p0, v3}, Lcom/google/common/io/ReaderInputStream;->startDraining(Z)V

    goto :goto_f

    .line 174
    :cond_63
    iget-boolean v4, p0, Lcom/google/common/io/ReaderInputStream;->endOfInput:Z

    if-eqz v4, :cond_69

    .line 175
    const/4 v0, 0x1

    goto :goto_2d

    .line 177
    :cond_69
    invoke-direct {p0}, Lcom/google/common/io/ReaderInputStream;->readMoreChars()V

    goto :goto_2d

    .line 179
    :cond_6d
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 181
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    move v2, v3

    .line 182
    goto :goto_b
.end method
