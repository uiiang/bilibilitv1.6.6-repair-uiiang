.class public final Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final FLV_HEADER_SIZE:I = 0x9

.field private static final FLV_TAG:I = 0x464c56

.field private static final FLV_TAG_HEADER_SIZE:I = 0xb

.field private static final STATE_READING_FLV_HEADER:I = 0x1

.field private static final STATE_READING_TAG_DATA:I = 0x4

.field private static final STATE_READING_TAG_HEADER:I = 0x3

.field private static final STATE_SKIPPING_TO_TAG_HEADER:I = 0x2

.field private static final TAG_TYPE_AUDIO:I = 0x8

.field private static final TAG_TYPE_SCRIPT_DATA:I = 0x12

.field private static final TAG_TYPE_VIDEO:I = 0x9


# instance fields
.field private audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

.field private bytesToNextTagHeader:I

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private mediaTagTimestampOffsetUs:J

.field private final metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

.field private outputFirstSample:Z

.field private outputSeekMap:Z

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private state:I

.field private final tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private tagDataSize:I

.field private final tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private tagTimestampUs:J

.field private tagType:I

.field private videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 103
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 104
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 105
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 106
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 108
    return-void
.end method

.method private ensureReadyForMediaOutput()V
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 318
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v0, :cond_16

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    .line 322
    :cond_16
    return-void
.end method

.method private getCurrentTimestampUs()J
    .registers 6

    .line 325
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputFirstSample:Z

    if-eqz v0, :cond_a

    .line 326
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v0, v2

    goto :goto_1e

    .line 327
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    const-wide/16 v0, 0x0

    goto :goto_1e

    :cond_1c
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 325
    :goto_1e
    return-wide v0
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private prepareTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .registers 6
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1f

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    goto :goto_24

    .line 309
    :cond_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 311
    :goto_24
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-object v0
.end method

.method private readFlvHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 11
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_11

    .line 203
    return v1

    .line 206
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 209
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_28

    const/4 v5, 0x1

    goto :goto_29

    :cond_28
    const/4 v5, 0x0

    .line 210
    .local v5, "hasAudio":Z
    :goto_29
    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_2e

    const/4 v1, 0x1

    .line 211
    .local v1, "hasVideo":Z
    :cond_2e
    if-eqz v5, :cond_43

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    if-nez v6, :cond_43

    .line 212
    new-instance v6, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 213
    const/16 v8, 0x8

    invoke-interface {v7, v8, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    .line 215
    :cond_43
    const/4 v6, 0x2

    if-eqz v1, :cond_57

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    if-nez v7, :cond_57

    .line 216
    new-instance v7, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 217
    invoke-interface {v8, v2, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    .line 219
    :cond_57
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v7}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 222
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    sub-int/2addr v7, v2

    add-int/2addr v7, v4

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 223
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 224
    return v3
.end method

.method private readTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 15
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 271
    const/4 v0, 0x1

    .line 272
    .local v0, "wasConsumed":Z
    const/4 v1, 0x0

    .line 273
    .local v1, "wasSampleOutput":Z
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->getCurrentTimestampUs()J

    move-result-wide v2

    .line 274
    .local v2, "timestampUs":J
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagType:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v4, v5, :cond_24

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    if-eqz v5, :cond_24

    .line 275
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 276
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Z

    move-result v1

    goto :goto_75

    .line 277
    :cond_24
    const/16 v5, 0x9

    if-ne v4, v5, :cond_3a

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    if-eqz v5, :cond_3a

    .line 278
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 279
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Z

    move-result v1

    goto :goto_75

    .line 280
    :cond_3a
    const/16 v5, 0x12

    if-ne v4, v5, :cond_6f

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v4, :cond_6f

    .line 281
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Z

    move-result v1

    .line 282
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v4

    .line 283
    .local v4, "durationUs":J
    cmp-long v9, v4, v7

    if-eqz v9, :cond_6e

    .line 284
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v10, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;

    iget-object v11, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    .line 286
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->getKeyFrameTagPositions()[J

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    .line 287
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->getKeyFrameTimesUs()[J

    move-result-object v12

    invoke-direct {v10, v11, v12, v4, v5}, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;-><init>([J[JJ)V

    .line 284
    invoke-interface {v9, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 289
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    .line 291
    .end local v4    # "durationUs":J
    :cond_6e
    goto :goto_75

    .line 292
    :cond_6f
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 293
    const/4 v0, 0x0

    .line 295
    :goto_75
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputFirstSample:Z

    if-nez v4, :cond_90

    if-eqz v1, :cond_90

    .line 296
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputFirstSample:Z

    .line 297
    nop

    .line 298
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v4

    cmp-long v6, v4, v7

    if-nez v6, :cond_8c

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    neg-long v4, v4

    goto :goto_8e

    :cond_8c
    const-wide/16 v4, 0x0

    :goto_8e
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    .line 300
    :cond_90
    const/4 v4, 0x4

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 301
    const/4 v4, 0x2

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 302
    return v0
.end method

.method private readTagHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_11

    .line 249
    return v1

    .line 252
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagType:I

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 258
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 259
    return v3
.end method

.method private skipToTagHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 3
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 236
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 237
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 2
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 143
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 144
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 5
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_5
    :goto_5
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_2c

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 181
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->readTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    const/4 v0, 0x0

    return v0

    .line 176
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->readTagHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 177
    return v1

    .line 173
    :pswitch_20
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->skipToTagHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 174
    goto :goto_5

    .line 168
    :pswitch_24
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->readFlvHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 169
    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_20
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method

.method public release()V
    .registers 1

    .line 160
    return-void
.end method

.method public seek(JJ)V
    .registers 9
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 148
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_d

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 150
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputFirstSample:Z

    goto :goto_10

    .line 152
    :cond_d
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 154
    :goto_10
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 155
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 6
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    const v1, 0x464c56

    if-eq v0, v1, :cond_1c

    .line 116
    return v2

    .line 120
    :cond_1c
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_36

    .line 123
    return v2

    .line 127
    :cond_36
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 131
    .local v0, "dataOffset":I
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 132
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 135
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-interface {p1, v3, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 136
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    if-nez v1, :cond_68

    const/4 v2, 0x1

    :cond_68
    return v2
.end method
