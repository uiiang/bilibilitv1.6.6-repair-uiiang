.class final Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.source "VideoTagPayloadReader.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AVC_PACKET_TYPE_AVC_NALU:I = 0x1

.field private static final AVC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final VIDEO_CODEC_AVC:I = 0x7

.field private static final VIDEO_FRAME_KEYFRAME:I = 0x1

.field private static final VIDEO_FRAME_VIDEO_INFO:I = 0x5


# instance fields
.field private frameType:I

.field private hasOutputFormat:Z

.field private hasOutputKeyframe:Z

.field private final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 4
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 64
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 66
    return-void
.end method


# virtual methods
.method protected parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 8
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 76
    .local v0, "header":I
    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 77
    .local v1, "frameType":I
    and-int/lit8 v2, v0, 0xf

    .line 79
    .local v2, "videoCodec":I
    const/4 v3, 0x7

    if-ne v2, v3, :cond_16

    .line 82
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->frameType:I

    .line 83
    const/4 v3, 0x5

    if-eq v1, v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    return v3

    .line 80
    :cond_16
    new-instance v3, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video format not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected parsePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Z
    .registers 23
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 89
    .local v2, "packetType":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt24()I

    move-result v3

    .line 91
    .local v3, "compositionTimeMs":I
    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    add-long v4, p2, v4

    .line 93
    .end local p2    # "timeUs":J
    .local v4, "timeUs":J
    const/4 v13, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_6e

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v7, :cond_6e

    .line 94
    new-instance v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    new-array v8, v8, [B

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 95
    .local v7, "videoSequence":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    invoke-virtual {v1, v8, v6, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 96
    invoke-static {v7}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v8

    .line 97
    .local v8, "avcConfig":Lcom/google/android/exoplayer2/video/AvcConfig;
    iget v9, v8, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    .line 99
    new-instance v9, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v9}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 101
    const-string v10, "video/avc"

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    iget-object v10, v8, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    .line 102
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    iget v10, v8, Lcom/google/android/exoplayer2/video/AvcConfig;->width:I

    .line 103
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    iget v10, v8, Lcom/google/android/exoplayer2/video/AvcConfig;->height:I

    .line 104
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    iget v10, v8, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthHeightRatio:F

    .line 105
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    iget-object v10, v8, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 106
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    .line 107
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 108
    .local v9, "format":Lcom/google/android/exoplayer2/Format;
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v10, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 109
    iput-boolean v13, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    .line 110
    return v6

    .line 111
    .end local v7    # "videoSequence":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v8    # "avcConfig":Lcom/google/android/exoplayer2/video/AvcConfig;
    .end local v9    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_6e
    if-ne v2, v13, :cond_e2

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-eqz v7, :cond_e2

    .line 112
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->frameType:I

    if-ne v7, v13, :cond_7a

    const/4 v7, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v7, 0x0

    :goto_7b
    move v14, v7

    .line 113
    .local v14, "isKeyframe":Z
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    if-nez v7, :cond_83

    if-nez v14, :cond_83

    .line 114
    return v6

    .line 119
    :cond_83
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v15

    .line 120
    .local v15, "nalLengthData":[B
    aput-byte v6, v15, v6

    .line 121
    aput-byte v6, v15, v13

    .line 122
    const/4 v7, 0x2

    aput-byte v6, v15, v7

    .line 123
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    const/4 v8, 0x4

    rsub-int/lit8 v12, v7, 0x4

    .line 127
    .local v12, "nalUnitLengthFieldLengthDiff":I
    const/4 v7, 0x0

    move/from16 v16, v7

    .line 129
    .local v16, "bytesWritten":I
    :goto_98
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    if-lez v7, :cond_ca

    .line 131
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    invoke-virtual {v1, v7, v12, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 132
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 133
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    .line 136
    .local v7, "bytesToWrite":I
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 137
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v9, v10, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 138
    add-int/lit8 v16, v16, 0x4

    .line 141
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v9, v1, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 142
    add-int v16, v16, v7

    goto :goto_98

    .line 144
    .end local v7    # "bytesToWrite":I
    :cond_ca
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 145
    if-eqz v14, :cond_d0

    const/4 v9, 0x1

    goto :goto_d1

    :cond_d0
    const/4 v9, 0x0

    :goto_d1
    const/4 v11, 0x0

    const/16 v17, 0x0

    .line 144
    move-object v6, v7

    move-wide v7, v4

    move/from16 v10, v16

    move/from16 v18, v12

    .end local v12    # "nalUnitLengthFieldLengthDiff":I
    .local v18, "nalUnitLengthFieldLengthDiff":I
    move-object/from16 v12, v17

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 146
    iput-boolean v13, v0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    .line 147
    return v13

    .line 149
    .end local v14    # "isKeyframe":Z
    .end local v15    # "nalLengthData":[B
    .end local v16    # "bytesWritten":I
    .end local v18    # "nalUnitLengthFieldLengthDiff":I
    :cond_e2
    return v6
.end method

.method public seek()V
    .registers 2

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    .line 71
    return-void
.end method
