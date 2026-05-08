.class public final Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AUDIO_STREAM:I = 0xc0

.field public static final AUDIO_STREAM_MASK:I = 0xe0

.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_SEARCH_LENGTH:J = 0x100000L

.field private static final MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND:J = 0x2000L

.field private static final MAX_STREAM_ID_PLUS_ONE:I = 0x100

.field static final MPEG_PROGRAM_END_CODE:I = 0x1b9

.field static final PACKET_START_CODE_PREFIX:I = 0x1

.field static final PACK_START_CODE:I = 0x1ba

.field public static final PRIVATE_STREAM_1:I = 0xbd

.field static final SYSTEM_HEADER_START_CODE:I = 0x1bb

.field public static final VIDEO_STREAM:I = 0xe0

.field public static final VIDEO_STREAM_MASK:I = 0xf0


# instance fields
.field private final durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

.field private foundAllTracks:Z

.field private foundAudioTrack:Z

.field private foundVideoTrack:Z

.field private hasOutputSeekMap:Z

.field private lastTrackPosition:J

.field private output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

.field private final psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final psPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 85
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;-><init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .registers 4
    .param p1, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    .line 93
    return-void
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(J)V
    .registers 14
    .param p1, "inputLength"    # J
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 302
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_45

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_35

    .line 305
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    .line 307
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->getScrTimestampAdjuster()Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    .line 308
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v7

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;JJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    .line 310
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    goto :goto_45

    .line 312
    :cond_35
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 315
    :cond_45
    :goto_45
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 2
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 141
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 142
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 21
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 184
    .local v3, "inputLength":J
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-eqz v9, :cond_19

    const/4 v9, 0x1

    goto :goto_1a

    :cond_19
    const/4 v9, 0x0

    .line 185
    .local v9, "canReadDuration":Z
    :goto_1a
    if-eqz v9, :cond_2b

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isDurationReadFinished()Z

    move-result v10

    if-nez v10, :cond_2b

    .line 186
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    invoke-virtual {v5, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v5

    return v5

    .line 188
    :cond_2b
    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->maybeOutputSeekMap(J)V

    .line 189
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    if-eqz v10, :cond_3f

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;->isSeeking()Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 190
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {v5, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;->handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v5

    return v5

    .line 193
    :cond_3f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 195
    cmp-long v10, v3, v7

    if-eqz v10, :cond_4d

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v10

    sub-long v10, v3, v10

    goto :goto_4e

    :cond_4d
    move-wide v10, v7

    .line 196
    .local v10, "peekBytesLeft":J
    :goto_4e
    const/4 v12, -0x1

    cmp-long v13, v10, v7

    if-eqz v13, :cond_5a

    const-wide/16 v7, 0x4

    cmp-long v13, v10, v7

    if-gez v13, :cond_5a

    .line 197
    return v12

    .line 200
    :cond_5a
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    const/4 v8, 0x4

    invoke-interface {v1, v7, v6, v8, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v7

    if-nez v7, :cond_68

    .line 201
    return v12

    .line 204
    :cond_68
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 205
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 206
    .local v7, "nextStartCode":I
    const/16 v8, 0x1b9

    if-ne v7, v8, :cond_78

    .line 207
    return v12

    .line 208
    :cond_78
    const/16 v8, 0x1ba

    if-ne v7, v8, :cond_9c

    .line 210
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    const/16 v8, 0xa

    invoke-interface {v1, v5, v6, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 213
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v8, 0x9

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 216
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    .line 219
    .local v5, "packStuffingLength":I
    add-int/lit8 v8, v5, 0xe

    invoke-interface {v1, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 220
    return v6

    .line 221
    .end local v5    # "packStuffingLength":I
    :cond_9c
    const/16 v8, 0x1bb

    const/4 v12, 0x2

    if-ne v7, v8, :cond_bb

    .line 223
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-interface {v1, v5, v6, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 226
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 227
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 228
    .local v5, "systemHeaderLength":I
    add-int/lit8 v8, v5, 0x6

    invoke-interface {v1, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 229
    return v6

    .line 230
    .end local v5    # "systemHeaderLength":I
    :cond_bb
    and-int/lit16 v8, v7, -0x100

    shr-int/lit8 v8, v8, 0x8

    if-eq v8, v5, :cond_c5

    .line 231
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 232
    return v6

    .line 237
    :cond_c5
    and-int/lit16 v8, v7, 0xff

    .line 240
    .local v8, "streamId":I
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v13, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;

    .line 241
    .local v13, "payloadReader":Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v14, :cond_156

    .line 242
    if-nez v13, :cond_132

    .line 243
    const/4 v14, 0x0

    .line 244
    .local v14, "elementaryStreamReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    const/16 v15, 0xbd

    if-ne v8, v15, :cond_eb

    .line 248
    new-instance v15, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    invoke-direct {v15}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;-><init>()V

    move-object v14, v15

    .line 249
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 250
    move/from16 v16, v7

    .end local v7    # "nextStartCode":I
    .local v16, "nextStartCode":I
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_116

    .line 251
    .end local v16    # "nextStartCode":I
    .restart local v7    # "nextStartCode":I
    :cond_eb
    move/from16 v16, v7

    .end local v7    # "nextStartCode":I
    .restart local v16    # "nextStartCode":I
    and-int/lit16 v6, v8, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_102

    .line 252
    new-instance v6, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;-><init>()V

    move-object v14, v6

    .line 253
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 254
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_116

    .line 255
    :cond_102
    and-int/lit16 v6, v8, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_116

    .line 256
    new-instance v6, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;-><init>()V

    move-object v14, v6

    .line 257
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundVideoTrack:Z

    .line 258
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->lastTrackPosition:J

    .line 260
    :cond_116
    :goto_116
    if-eqz v14, :cond_134

    .line 261
    new-instance v6, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v7, 0x100

    invoke-direct {v6, v8, v7}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    .line 262
    .local v6, "idGenerator":Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v14, v7, v6}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 263
    new-instance v7, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-direct {v7, v14, v15}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 264
    .end local v13    # "payloadReader":Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
    .local v7, "payloadReader":Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v13, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v13, v7

    goto :goto_134

    .line 242
    .end local v6    # "idGenerator":Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;
    .end local v14    # "elementaryStreamReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    .end local v16    # "nextStartCode":I
    .local v7, "nextStartCode":I
    .restart local v13    # "payloadReader":Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
    :cond_132
    move/from16 v16, v7

    .line 268
    .end local v7    # "nextStartCode":I
    .restart local v16    # "nextStartCode":I
    :cond_134
    :goto_134
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz v6, :cond_142

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-eqz v6, :cond_142

    .line 269
    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->lastTrackPosition:J

    const-wide/16 v14, 0x2000

    add-long/2addr v6, v14

    goto :goto_145

    .line 270
    :cond_142
    const-wide/32 v6, 0x100000

    :goto_145
    nop

    .line 271
    .local v6, "maxSearchPosition":J
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v14

    cmp-long v17, v14, v6

    if-lez v17, :cond_158

    .line 272
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAllTracks:Z

    .line 273
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    goto :goto_158

    .line 241
    .end local v6    # "maxSearchPosition":J
    .end local v16    # "nextStartCode":I
    .restart local v7    # "nextStartCode":I
    :cond_156
    move/from16 v16, v7

    .line 278
    .end local v7    # "nextStartCode":I
    .restart local v16    # "nextStartCode":I
    :cond_158
    :goto_158
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 279
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 280
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 281
    .local v5, "payloadLength":I
    add-int/lit8 v6, v5, 0x6

    .line 283
    .local v6, "pesLength":I
    if-nez v13, :cond_175

    .line 285
    invoke-interface {v1, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_198

    .line 287
    :cond_175
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 289
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    const/4 v12, 0x0

    invoke-interface {v1, v7, v12, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 290
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v12, 0x6

    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 291
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v13, v7}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 292
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 295
    :goto_198
    const/4 v7, 0x0

    return v7
.end method

.method public release()V
    .registers 1

    .line 177
    return-void
.end method

.method public seek(JJ)V
    .registers 13
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-nez v6, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 152
    .local v0, "resetTimestampAdjuster":Z
    :goto_14
    if-nez v0, :cond_2c

    .line 153
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v6

    .line 157
    .local v6, "adjusterFirstSampleTimestampUs":J
    cmp-long v1, v6, v4

    if-eqz v1, :cond_2b

    const-wide/16 v4, 0x0

    cmp-long v1, v6, v4

    if-eqz v1, :cond_2b

    cmp-long v1, v6, p3

    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    move v0, v2

    .line 162
    .end local v6    # "adjusterFirstSampleTimestampUs":J
    :cond_2c
    if-eqz v0, :cond_33

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v1, p3, p4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->reset(J)V

    .line 166
    :cond_33
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    if-eqz v1, :cond_3a

    .line 167
    invoke-virtual {v1, p3, p4}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;->setSeekTargetUs(J)V

    .line 169
    :cond_3a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3b
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 170
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->seek()V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 172
    .end local v1    # "i":I
    :cond_51
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 11
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    const/16 v0, 0xe

    new-array v1, v0, [B

    .line 100
    .local v1, "scratch":[B
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 103
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_2a

    .line 108
    return v2

    .line 111
    :cond_2a
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_34

    .line 112
    return v2

    .line 115
    :cond_34
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3b

    .line 116
    return v2

    .line 119
    :cond_3b
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_41

    .line 120
    return v2

    .line 123
    :cond_41
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_49

    .line 124
    return v2

    .line 127
    :cond_49
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_51

    .line 128
    return v2

    .line 131
    :cond_51
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 132
    .local v0, "packStuffingLength":I
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 134
    invoke-interface {p1, v1, v2, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 135
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v6, v7, 0x8

    or-int/2addr v5, v6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    if-ne v3, v4, :cond_72

    const/4 v2, 0x1

    :cond_72
    return v2
.end method
