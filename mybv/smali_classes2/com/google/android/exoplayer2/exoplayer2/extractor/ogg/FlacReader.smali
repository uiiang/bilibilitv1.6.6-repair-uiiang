.class final Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;
.super Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.source "FlacReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AUDIO_PACKET_TYPE:B = -0x1t

.field private static final FRAME_HEADER_SAMPLE_NUMBER_OFFSET:I = 0x4


# instance fields
.field private flacOggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

.field private streamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method private getFlacFrameBlockSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 5
    .param p1, "packet"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 115
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    shr-int/2addr v0, v1

    .line 116
    .local v0, "blockSizeKey":I
    const/4 v2, 0x6

    if-eq v0, v2, :cond_11

    const/4 v2, 0x7

    if-ne v0, v2, :cond_17

    .line 118
    :cond_11
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 119
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUtf8EncodedLong()J

    .line 121
    :cond_17
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->readFrameBlockSizeSamplesFromKey(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v1

    .line 122
    .local v1, "result":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 123
    return v1
.end method

.method private static isAudioPacket([B)Z
    .registers 4
    .param p0, "data"    # [B

    .line 70
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public static verifyBitstreamType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 6
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1c

    .line 55
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1c

    .line 57
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 54
    :goto_1d
    return v0
.end method


# virtual methods
.method protected preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .registers 4
    .param p1, "packet"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result v0

    if-nez v0, :cond_d

    .line 76
    const-wide/16 v0, -0x1

    return-wide v0

    .line 78
    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->getFlacFrameBlockSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .registers 11
    .param p1, "packet"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "setupData"    # Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 84
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 85
    .local v0, "data":[B
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->streamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 86
    .local v1, "streamMetadata":Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    const/4 v2, 0x1

    if-nez v1, :cond_25

    .line 87
    new-instance v3, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    const/16 v4, 0x11

    invoke-direct {v3, v0, v4}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;-><init>([BI)V

    move-object v1, v3

    .line 88
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->streamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 89
    const/16 v3, 0x9

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 90
    .local v3, "metadata":[B
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getFormat([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iput-object v4, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    .line 91
    return v2

    .line 94
    .end local v3    # "metadata":[B
    :cond_25
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    and-int/lit8 v4, v4, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3f

    .line 95
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readSeekTableMetadataBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    move-result-object v3

    .line 96
    .local v3, "seekTable":Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->copyWithSeekTable(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object v1

    .line 97
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->streamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 98
    new-instance v4, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    invoke-direct {v4, v1, v3}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    .line 99
    return v2

    .line 102
    .end local v3    # "seekTable":Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;
    :cond_3f
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 103
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    if-eqz v2, :cond_50

    .line 104
    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->setFirstFrameOffset(J)V

    .line 105
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    iput-object v2, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    .line 107
    :cond_50
    iget-object v2, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return v3

    .line 111
    :cond_56
    return v2
.end method

.method protected reset(Z)V
    .registers 3
    .param p1, "headerData"    # Z

    .line 62
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 63
    if-eqz p1, :cond_a

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->streamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 65
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    .line 67
    :cond_a
    return-void
.end method
