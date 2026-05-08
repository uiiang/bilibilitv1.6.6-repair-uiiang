.class final Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;
.super Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private commentHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

.field private previousPacketBlockSize:I

.field private seenFirstAudioPacket:Z

.field private vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

.field private vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static appendNumberOfSamples(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V
    .registers 9
    .param p0, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "packetSampleCount"    # J

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_1e

    .line 187
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    goto :goto_27

    .line 189
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 193
    :goto_27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 194
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    .line 195
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    .line 197
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 198
    return-void
.end method

.method private static decodeBlockSize(BLcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;)I
    .registers 4
    .param p0, "firstByteOfAudioPacket"    # B
    .param p1, "vorbisSetup"    # Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    .line 202
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->readBits(BII)I

    move-result v0

    .line 204
    .local v0, "modeNumber":I
    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;->blockFlag:Z

    if-nez v1, :cond_14

    .line 205
    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    .local v1, "currentBlockSize":I
    goto :goto_18

    .line 207
    .end local v1    # "currentBlockSize":I
    :cond_14
    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->blockSize1:I

    .line 209
    .restart local v1    # "currentBlockSize":I
    :goto_18
    return v1
.end method

.method static readBits(BII)I
    .registers 6
    .param p0, "src"    # B
    .param p1, "length"    # I
    .param p2, "leastSignificantBitIndex"    # I

    .line 180
    shr-int v0, p0, p2

    rsub-int/lit8 v1, p1, 0x8

    const/16 v2, 0xff

    ushr-int v1, v2, v1

    and-int/2addr v0, v1

    return v0
.end method

.method public static verifyBitstreamType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 3
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 56
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0, p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    move-result v0
    :try_end_5
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_1 .. :try_end_5} :catch_6

    return v0

    .line 57
    :catch_6
    move-exception v0

    .line 58
    .local v0, "e":Lcom/google/android/exoplayer2/ParserException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected onSeekEnd(J)V
    .registers 7
    .param p1, "currentGranule"    # J

    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->onSeekEnd(J)V

    .line 77
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-eqz v3, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    if-eqz v0, :cond_15

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    :cond_15
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 79
    return-void
.end method

.method protected preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .registers 7
    .param p1, "packet"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 84
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_e

    .line 85
    const-wide/16 v0, -0x1

    return-wide v0

    .line 89
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    aget-byte v0, v0, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->decodeBlockSize(BLcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;)I

    move-result v0

    .line 93
    .local v0, "packetBlockSize":I
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-eqz v3, :cond_29

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    .line 95
    .local v1, "samplesInPacket":I
    :cond_29
    int-to-long v3, v1

    invoke-static {p1, v3, v4}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->appendNumberOfSamples(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V

    .line 98
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 99
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 100
    int-to-long v2, v1

    return-wide v2
.end method

.method protected readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .registers 12
    .param p1, "packet"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "setupData"    # Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    if-eqz v0, :cond_b

    .line 108
    iget-object v0, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_b
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->readSetupHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    .line 113
    const/4 v1, 0x1

    if-nez v0, :cond_15

    .line 114
    return v1

    .line 116
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    .line 118
    .local v0, "vorbisSetup":Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    .line 120
    .local v2, "idHeader":Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v3, "codecInitializationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->data:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->commentHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    .line 126
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v4

    .line 128
    .local v4, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    new-instance v5, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 130
    const-string v6, "audio/vorbis"

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    .line 131
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->bitrateMaximum:I

    .line 132
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    .line 133
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->sampleRate:I

    .line 134
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 135
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 136
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 137
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iput-object v5, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    .line 138
    return v1
.end method

.method readSetupHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;
    .registers 14
    .param p1, "scratch"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 146
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readVorbisIdentificationHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    .line 147
    return-object v1

    .line 150
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    if-nez v0, :cond_17

    .line 151
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    .line 152
    return-object v1

    .line 154
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    .line 155
    .local v0, "vorbisIdHeader":Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    .line 158
    .local v1, "commentHeader":Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    new-array v8, v2, [B

    .line 160
    .local v8, "setupHeaderData":[B
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v8, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readVorbisModes(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    move-result-object v9

    .line 164
    .local v9, "modes":[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;
    array-length v2, v9

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v10

    .line 166
    .local v10, "iLogModes":I
    new-instance v11, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    move-object v2, v11

    move-object v3, v0

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;[B[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;I)V

    return-object v11
.end method

.method protected reset(Z)V
    .registers 3
    .param p1, "headerData"    # Z

    .line 64
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 65
    if-eqz p1, :cond_c

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    .line 67
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    .line 68
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    .line 70
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 71
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 72
    return-void
.end method
