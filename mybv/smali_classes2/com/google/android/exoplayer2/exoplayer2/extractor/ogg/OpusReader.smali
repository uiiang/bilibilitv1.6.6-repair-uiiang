.class final Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;
.super Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.source "OpusReader.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final OPUS_COMMENT_HEADER_SIGNATURE:[B

.field private static final OPUS_ID_HEADER_SIGNATURE:[B


# instance fields
.field private firstCommentHeaderSeen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    .line 45
    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1a
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method private static peekPacketStartsWith(Lcom/google/android/exoplayer2/util/ParsableByteArray;[B)Z
    .registers 6
    .param p0, "packet"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "expectedPrefix"    # [B

    .line 140
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_9

    .line 141
    return v2

    .line 143
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 144
    .local v0, "startPosition":I
    array-length v1, p1

    new-array v1, v1, [B

    .line 145
    .local v1, "header":[B
    array-length v3, p1

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 147
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public static verifyBitstreamType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 2
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 52
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->peekPacketStartsWith(Lcom/google/android/exoplayer2/util/ParsableByteArray;[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .registers 4
    .param p1, "packet"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 65
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/OpusUtil;->getPacketDurationUs([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->convertTimeToGranule(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .registers 11
    .param p1, "packet"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "setupData"    # Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 72
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->peekPacketStartsWith(Lcom/google/android/exoplayer2/util/ParsableByteArray;[B)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_43

    .line 73
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 74
    .local v0, "headerBytes":[B
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/OpusUtil;->getChannelCount([B)I

    move-result v2

    .line 75
    .local v2, "channelCount":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v3

    .line 77
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v4, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v4, :cond_22

    .line 84
    return v1

    .line 86
    :cond_22
    new-instance v4, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 88
    const-string v5, "audio/opus"

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 89
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 90
    const v5, 0xbb80

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 91
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iput-object v4, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    .line 93
    return v1

    .line 94
    .end local v0    # "headerBytes":[B
    .end local v2    # "channelCount":I
    .end local v3    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_43
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->peekPacketStartsWith(Lcom/google/android/exoplayer2/util/ParsableByteArray;[B)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_87

    .line 97
    iget-object v2, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    if-eqz v2, :cond_56

    .line 104
    return v1

    .line 106
    :cond_56
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    .line 107
    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 108
    nop

    .line 109
    invoke-static {p1, v3, v3}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    move-result-object v0

    .line 112
    .local v0, "commentHeader":Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    .line 113
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    .line 114
    .local v2, "vorbisMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    if-nez v2, :cond_6e

    .line 115
    return v1

    .line 117
    :cond_6e
    iget-object v3, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    .line 120
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget-object v4, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 121
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    .line 123
    return v1

    .line 127
    .end local v0    # "commentHeader":Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;
    .end local v2    # "vorbisMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :cond_87
    iget-object v0, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return v3
.end method

.method protected reset(Z)V
    .registers 3
    .param p1, "headerData"    # Z

    .line 57
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 58
    if-eqz p1, :cond_8

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    .line 61
    :cond_8
    return-void
.end method
