.class public final Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;
.super Ljava/lang/Object;
.source "FlacMetadataReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SEEK_POINT_SIZE:I = 0x12

.field private static final STREAM_MARKER:I = 0x664c6143

.field private static final SYNC_CODE:I = 0x3ffe


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndPeekStreamMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 8
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 87
    .local v0, "scratch":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 88
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    const-wide/32 v4, 0x664c6143

    cmp-long v6, v1, v4

    if-nez v6, :cond_1a

    const/4 v3, 0x1

    :cond_1a
    return v3
.end method

.method public static getFrameStartMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .registers 6
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 239
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 240
    .local v0, "scratch":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 242
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 243
    .local v1, "frameStartMarker":I
    shr-int/lit8 v2, v1, 0x2

    .line 244
    .local v2, "syncCode":I
    const/16 v3, 0x3ffe

    if-ne v2, v3, :cond_1f

    .line 250
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 251
    return v1

    .line 245
    :cond_1f
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 246
    const-string v3, "First frame does not start with sync code."

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v3

    throw v3
.end method

.method public static peekId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 6
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "parseData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move-object v1, v0

    goto :goto_7

    :cond_5
    sget-object v1, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 73
    .local v1, "id3FramePredicate":Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;
    :goto_7
    new-instance v2, Lcom/google/android/exoplayer2/extractor/Id3Peeker;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/Id3Peeker;-><init>()V

    invoke-virtual {v2, p0, v1}, Lcom/google/android/exoplayer2/extractor/Id3Peeker;->peekId3Data(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    .line 74
    .local v2, "id3Metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v3

    if-nez v3, :cond_19

    goto :goto_1a

    :cond_19
    move-object v0, v2

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static readId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 7
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "parseData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 108
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    .line 109
    .local v0, "startingPeekPosition":J
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->peekId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    .line 110
    .local v2, "id3Metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-int v4, v3

    .line 111
    .local v4, "peekedId3Bytes":I
    invoke-interface {p0, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 112
    return-object v2
.end method

.method public static readMetadataBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;)Z
    .registers 11
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "metadataHolder"    # Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 155
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    new-array v2, v1, [B

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 156
    .local v0, "scratch":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 158
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 159
    .local v2, "isLastMetadataBlock":Z
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 160
    .local v4, "type":I
    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v1

    .line 161
    .local v5, "length":I
    if-nez v4, :cond_2a

    .line 162
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readStreamInfoBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    goto :goto_6f

    .line 164
    :cond_2a
    iget-object v6, p1, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 165
    .local v6, "flacStreamMetadata":Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    if-eqz v6, :cond_70

    .line 168
    const/4 v7, 0x3

    if-ne v4, v7, :cond_3c

    .line 169
    invoke-static {p0, v5}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readSeekTableMetadataBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    move-result-object v1

    .line 170
    .local v1, "seekTable":Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;
    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->copyWithSeekTable(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object v3

    iput-object v3, p1, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 171
    .end local v1    # "seekTable":Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;
    goto :goto_6f

    :cond_3c
    if-ne v4, v1, :cond_4a

    .line 172
    invoke-static {p0, v5}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readVorbisCommentMetadataBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 174
    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->copyWithVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object v3

    iput-object v3, p1, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 175
    .end local v1    # "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_6f

    :cond_4a
    const/4 v7, 0x6

    if-ne v4, v7, :cond_6c

    .line 176
    new-instance v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v7, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 177
    .local v7, "pictureBlock":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v8

    invoke-interface {p0, v8, v3, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 178
    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 179
    invoke-static {v7}, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->fromPictureBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    move-result-object v1

    .line 180
    .local v1, "pictureFrame":Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;
    nop

    .line 181
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->copyWithPictureFrames(Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object v3

    iput-object v3, p1, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 182
    .end local v1    # "pictureFrame":Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;
    .end local v7    # "pictureBlock":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    goto :goto_6f

    .line 183
    :cond_6c
    invoke-interface {p0, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 187
    .end local v6    # "flacStreamMetadata":Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    :goto_6f
    return v2

    .line 166
    .restart local v6    # "flacStreamMetadata":Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    :cond_70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static readSeekTableMetadataBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;
    .registers 5
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 264
    .local v0, "scratch":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 265
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readSeekTableMetadataBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    move-result-object v1

    return-object v1
.end method

.method public static readSeekTableMetadataBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;
    .registers 13
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 202
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    .line 204
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 205
    .local v1, "seekTableEndPosition":J
    div-int/lit8 v3, v0, 0x12

    .line 206
    .local v3, "seekPointCount":I
    new-array v4, v3, [J

    .line 207
    .local v4, "pointSampleNumbers":[J
    new-array v5, v3, [J

    .line 208
    .local v5, "pointOffsets":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_16
    if-ge v6, v3, :cond_3a

    .line 211
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v7

    .line 212
    .local v7, "sampleNumber":J
    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-nez v11, :cond_2b

    .line 213
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 214
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 215
    goto :goto_3a

    .line 217
    :cond_2b
    aput-wide v7, v4, v6

    .line 218
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v9

    aput-wide v9, v5, v6

    .line 219
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 208
    .end local v7    # "sampleNumber":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 222
    .end local v6    # "i":I
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v1, v6

    long-to-int v7, v6

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 223
    new-instance v6, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    invoke-direct {v6, v4, v5}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;-><init>([J[J)V

    return-object v6
.end method

.method private static readStreamInfoBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .registers 4
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const/16 v0, 0x26

    new-array v1, v0, [B

    .line 256
    .local v1, "scratchData":[B
    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 257
    new-instance v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;-><init>([BI)V

    return-object v0
.end method

.method public static readStreamMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 7
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 126
    .local v0, "scratch":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 127
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long v5, v1, v3

    if-nez v5, :cond_1a

    .line 131
    return-void

    .line 128
    :cond_1a
    const-string v1, "Failed to read FLAC stream marker."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1
.end method

.method private static readVorbisCommentMetadataBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/util/List;
    .registers 5
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 271
    .local v0, "scratch":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 272
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 273
    nop

    .line 274
    invoke-static {v0, v2, v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    move-result-object v1

    .line 276
    .local v1, "commentHeader":Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
