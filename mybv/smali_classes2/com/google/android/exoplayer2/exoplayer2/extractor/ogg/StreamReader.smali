.class abstract Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;,
        Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final STATE_END_OF_INPUT:I = 0x3

.field private static final STATE_READ_HEADERS:I = 0x0

.field private static final STATE_READ_PAYLOAD:I = 0x2

.field private static final STATE_SKIP_HEADERS:I = 0x1


# instance fields
.field private currentGranule:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private formatSet:Z

.field private lengthOfReadPacket:J

.field private final oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

.field private oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

.field private payloadStartPosition:J

.field private sampleRate:I

.field private seekMapSet:Z

.field private setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

.field private state:I

.field private targetGranule:J

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    .line 76
    return-void
.end method

.method private assertInitialized()V
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackOutput",
            "extractorOutput"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method private readHeaders(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 6
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "setupData.format"
        }
        result = true
    .end annotation

    .line 157
    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 158
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 159
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_e
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->getPayload()Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 164
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    goto :goto_1

    .line 166
    :cond_2e
    const/4 v0, 0x1

    return v0
.end method

.method private readHeadersAndUpdateState(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .registers 17
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 173
    move-object v11, p0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->readHeaders(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 174
    const/4 v0, -0x1

    return v0

    .line 177
    :cond_9
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput v0, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    .line 178
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_21

    .line 179
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 180
    iput-boolean v1, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    .line 183
    :cond_21
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    const/4 v12, 0x0

    if-eqz v0, :cond_2f

    .line 184
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    iput-object v0, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_68

    .line 185
    :cond_2f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_42

    .line 186
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$1;)V

    iput-object v0, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_68

    .line 188
    :cond_42
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->getPageHeader()Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    move-result-object v13

    .line 189
    .local v13, "firstPayloadPageHeader":Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;
    iget v0, v13, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_50

    const/4 v10, 0x1

    goto :goto_51

    :cond_50
    const/4 v10, 0x0

    .line 190
    .local v10, "isLastPage":Z
    :goto_51
    new-instance v14, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;

    iget-wide v2, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    .line 194
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    iget v0, v13, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget v1, v13, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    int-to-long v6, v0

    iget-wide v8, v13, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    move-object v0, v14

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;JJJJZ)V

    iput-object v14, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    .line 200
    .end local v10    # "isLastPage":Z
    .end local v13    # "firstPayloadPageHeader":Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;
    :goto_68
    const/4 v0, 0x2

    iput v0, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 202
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->trimPayload()V

    .line 203
    return v12
.end method

.method private readPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 27
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput",
            "oggSeeker",
            "extractorOutput"
        }
    .end annotation

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v2

    .line 209
    .local v2, "position":J
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_16

    .line 210
    move-object/from16 v7, p2

    iput-wide v2, v7, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 211
    return v4

    .line 212
    :cond_16
    move-object/from16 v7, p2

    const-wide/16 v8, -0x1

    cmp-long v10, v2, v8

    if-gez v10, :cond_25

    .line 213
    const-wide/16 v10, 0x2

    add-long/2addr v10, v2

    neg-long v10, v10

    invoke-virtual {v0, v10, v11}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->onSeekEnd(J)V

    .line 216
    :cond_25
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v10, :cond_3c

    .line 217
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v10}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->createSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 218
    .local v10, "seekMap":Lcom/google/android/exoplayer2/extractor/SeekMap;
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v11, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 219
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    .line 222
    .end local v10    # "seekMap":Lcom/google/android/exoplayer2/extractor/SeekMap;
    :cond_3c
    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    cmp-long v4, v10, v5

    if-gtz v4, :cond_50

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_4b

    goto :goto_50

    .line 235
    :cond_4b
    const/4 v4, 0x3

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 236
    const/4 v4, -0x1

    return v4

    .line 223
    :cond_50
    :goto_50
    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 224
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->getPayload()Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v4

    .line 225
    .local v4, "payload":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v10

    .line 226
    .local v10, "granulesInPacket":J
    cmp-long v12, v10, v5

    if-ltz v12, :cond_8c

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long v12, v5, v10

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    cmp-long v16, v12, v14

    if-ltz v16, :cond_8c

    .line 228
    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v5

    .line 229
    .local v5, "timeUs":J
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v13

    invoke-interface {v12, v4, v13}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 230
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/16 v20, 0x1

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v12

    move-wide/from16 v18, v5

    invoke-interface/range {v17 .. v23}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 231
    iput-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 233
    .end local v5    # "timeUs":J
    :cond_8c
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v5, v10

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    .line 234
    .end local v4    # "payload":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v10    # "granulesInPacket":J
    nop

    .line 238
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method protected convertGranuleToTime(J)J
    .registers 7
    .param p1, "granule"    # J

    .line 248
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p1

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected convertTimeToGranule(J)J
    .registers 7
    .param p1, "timeUs"    # J

    .line 258
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 4
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "trackOutput"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 79
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 80
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 82
    return-void
.end method

.method protected onSeekEnd(J)V
    .registers 3
    .param p1, "currentGranule"    # J

    .line 288
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    .line 289
    return-void
.end method

.method protected abstract preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
.end method

.method final read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 5
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->assertInitialized()V

    .line 122
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    packed-switch v0, :pswitch_data_2a

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 133
    :pswitch_e
    const/4 v0, -0x1

    return v0

    .line 130
    :pswitch_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->readPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 126
    :pswitch_1a
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 128
    const/4 v0, 0x0

    return v0

    .line 124
    :pswitch_25
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->readHeadersAndUpdateState(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    return v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_25
        :pswitch_1a
        :pswitch_10
        :pswitch_e
    .end packed-switch
.end method

.method protected abstract readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
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
.end method

.method protected reset(Z)V
    .registers 6
    .param p1, "headerData"    # Z

    .line 90
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_11

    .line 91
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    .line 92
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    .line 93
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    goto :goto_14

    .line 95
    :cond_11
    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 97
    :goto_14
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 98
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    .line 99
    return-void
.end method

.method final seek(JJ)V
    .registers 8
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->reset()V

    .line 106
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_13

    .line 107
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    goto :goto_2d

    .line 109
    :cond_13
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    if-eqz v0, :cond_2d

    .line 110
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->startSeek(J)V

    .line 112
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 115
    :cond_2d
    :goto_2d
    return-void
.end method
