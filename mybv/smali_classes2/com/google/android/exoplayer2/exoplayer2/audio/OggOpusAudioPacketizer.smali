.class public final Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;
.super Ljava/lang/Object;
.source "OggOpusAudioPacketizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CHECKSUM_INDEX:I = 0x16

.field private static final FIRST_AUDIO_SAMPLE_PAGE_SEQUENCE_NUMBER:I = 0x2

.field private static final OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

.field private static final OGG_DEFAULT_ID_HEADER_PAGE:[B

.field private static final OGG_PACKET_HEADER_LENGTH:I = 0x1c

.field private static final SERIAL_NUMBER:I


# instance fields
.field private granulePosition:I

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private pageSequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    .line 52
    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_30

    sput-object v0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    return-void

    nop

    :array_14
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ct
        -0x2bt
        -0x3bt
        -0x9t
        0x1t
        0x13t
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
        0x1t
        0x2t
        0x38t
        0x1t
        -0x80t
        -0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_30
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbt
        -0x67t
        0x57t
        0x53t
        0x1t
        0x10t
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->granulePosition:I

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    .line 67
    return-void
.end method

.method private packetizeInternal(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;
    .registers 24
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "providedOggIdHeaderPayloadBytes"    # [B

    .line 120
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 121
    .local v10, "position":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    .line 122
    .local v11, "limit":I
    sub-int v12, v11, v10

    .line 125
    .local v12, "inputBufferSize":I
    add-int/lit16 v0, v12, 0xff

    const/16 v13, 0xff

    div-int/lit16 v14, v0, 0xff

    .line 126
    .local v14, "numSegments":I
    add-int/lit8 v15, v14, 0x1b

    .line 128
    .local v15, "headerSize":I
    add-int v0, v15, v12

    .line 132
    .local v0, "outputPacketSize":I
    const/4 v1, 0x0

    .line 133
    .local v1, "oggIdHeaderPageSize":I
    iget v2, v7, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_33

    .line 135
    if-eqz v9, :cond_26

    .line 136
    array-length v2, v9

    add-int/lit8 v2, v2, 0x1c

    goto :goto_29

    .line 137
    :cond_26
    sget-object v2, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    array-length v2, v2

    :goto_29
    move v1, v2

    .line 138
    sget-object v2, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    array-length v2, v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    move v5, v0

    move/from16 v16, v1

    goto :goto_36

    .line 133
    :cond_33
    move v5, v0

    move/from16 v16, v1

    .line 142
    .end local v0    # "outputPacketSize":I
    .end local v1    # "oggIdHeaderPageSize":I
    .local v5, "outputPacketSize":I
    .local v16, "oggIdHeaderPageSize":I
    :goto_36
    invoke-direct {v7, v5}, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 145
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    iget v0, v7, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    if-ne v0, v6, :cond_4e

    .line 146
    if-eqz v9, :cond_44

    .line 147
    invoke-direct {v7, v4, v9}, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->writeOggIdHeaderPage(Ljava/nio/ByteBuffer;[B)V

    goto :goto_49

    .line 150
    :cond_44
    sget-object v0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 152
    :goto_49
    sget-object v0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 156
    :cond_4e
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/audio/OpusUtil;->parsePacketAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v17

    .line 157
    .local v17, "numSamples":I
    iget v0, v7, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->granulePosition:I

    add-int v0, v0, v17

    iput v0, v7, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->granulePosition:I

    .line 159
    int-to-long v2, v0

    iget v1, v7, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object v1, v4

    move-object/from16 v20, v4

    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .local v20, "buffer":Ljava/nio/ByteBuffer;
    move/from16 v4, v19

    move/from16 v19, v5

    .end local v5    # "outputPacketSize":I
    .local v19, "outputPacketSize":I
    move v5, v14

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V

    .line 163
    move v0, v12

    .line 164
    .local v0, "bytesLeft":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_70
    if-ge v1, v14, :cond_89

    .line 165
    if-lt v0, v13, :cond_7d

    .line 166
    const/4 v2, -0x1

    move-object/from16 v3, v20

    .end local v20    # "buffer":Ljava/nio/ByteBuffer;
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 167
    add-int/lit16 v0, v0, -0xff

    goto :goto_84

    .line 169
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v20    # "buffer":Ljava/nio/ByteBuffer;
    :cond_7d
    move-object/from16 v3, v20

    .end local v20    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "buffer":Ljava/nio/ByteBuffer;
    int-to-byte v2, v0

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 170
    const/4 v0, 0x0

    .line 164
    :goto_84
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v20, v3

    goto :goto_70

    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v20    # "buffer":Ljava/nio/ByteBuffer;
    :cond_89
    move-object/from16 v3, v20

    .line 175
    .end local v1    # "i":I
    .end local v20    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "buffer":Ljava/nio/ByteBuffer;
    move v1, v10

    .restart local v1    # "i":I
    :goto_8c
    if-ge v1, v11, :cond_98

    .line 176
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 179
    .end local v1    # "i":I
    :cond_98
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 183
    iget v1, v7, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/16 v2, 0x16

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_cf

    .line 184
    nop

    .line 186
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 187
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int v5, v5, v16

    sget-object v6, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    array-length v13, v6

    add-int/2addr v5, v13

    .line 190
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v18

    sub-int v13, v13, v18

    .line 185
    invoke-static {v1, v5, v13, v4}, Lcom/google/android/exoplayer2/util/Util;->crc32([BIII)I

    move-result v1

    .line 192
    .local v1, "checksum":I
    array-length v4, v6

    add-int v4, v16, v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_e8

    .line 195
    .end local v1    # "checksum":I
    :cond_cf
    nop

    .line 197
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 198
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    .line 199
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int/2addr v6, v13

    .line 196
    invoke-static {v1, v5, v6, v4}, Lcom/google/android/exoplayer2/util/Util;->crc32([BIII)I

    move-result v1

    .line 201
    .restart local v1    # "checksum":I
    invoke-virtual {v3, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 205
    :goto_e8
    iget v2, v7, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    .line 207
    return-object v3
.end method

.method private replaceOutputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "size"    # I

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_15

    .line 288
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_1a

    .line 290
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 292
    :goto_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private writeOggIdHeaderPage(Ljava/nio/ByteBuffer;[B)V
    .registers 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "idHeaderPayloadBytes"    # [B

    .line 218
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V

    .line 224
    array-length v0, p2

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedBytes;->checkedCast(J)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 226
    nop

    .line 228
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 229
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1c

    .line 227
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->crc32([BIII)I

    move-result v0

    .line 232
    .local v0, "checksum":I
    const/16 v1, 0x16

    invoke-virtual {p1, v1, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 233
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1c

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 234
    return-void
.end method

.method private writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V
    .registers 9
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "granulePosition"    # J
    .param p4, "pageSequenceNumber"    # I
    .param p5, "numberPageSegments"    # I
    .param p6, "isIdHeaderPacket"    # Z

    .line 253
    const/16 v0, 0x4f

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 254
    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 256
    const/16 v0, 0x53

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 262
    if-eqz p6, :cond_1a

    const/4 v1, 0x2

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual {p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 268
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 271
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 275
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 278
    int-to-long v0, p5

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedBytes;->checkedCast(J)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 279
    return-void
.end method


# virtual methods
.method public packetize(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Ljava/util/List;)V
    .registers 6
    .param p1, "inputBuffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 81
    .local p2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 83
    return-void

    .line 88
    :cond_15
    iget v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_30

    .line 89
    :cond_28
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_31

    .line 90
    :cond_30
    const/4 v0, 0x0

    :goto_31
    nop

    .line 91
    .local v0, "providedOggIdHeaderPayloadBytes":[B
    iget-object v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->packetizeInternal(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 93
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 94
    iget-object v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 96
    return-void
.end method

.method public reset()V
    .registers 2

    .line 100
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->granulePosition:I

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    .line 103
    return-void
.end method
