.class public final Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;
.super Ljava/lang/Object;
.source "AviExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;,
        Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviSeekMap;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AVIIF_KEYFRAME:I = 0x10

.field public static final FOURCC_AVI_:I = 0x20495641

.field public static final FOURCC_JUNK:I = 0x4b4e554a

.field public static final FOURCC_LIST:I = 0x5453494c

.field public static final FOURCC_RIFF:I = 0x46464952

.field public static final FOURCC_auds:I = 0x73647561

.field public static final FOURCC_avih:I = 0x68697661

.field public static final FOURCC_hdrl:I = 0x6c726468

.field public static final FOURCC_idx1:I = 0x31786469

.field public static final FOURCC_movi:I = 0x69766f6d

.field public static final FOURCC_strf:I = 0x66727473

.field public static final FOURCC_strh:I = 0x68727473

.field public static final FOURCC_strl:I = 0x6c727473

.field public static final FOURCC_strn:I = 0x6e727473

.field public static final FOURCC_txts:I = 0x73747874

.field public static final FOURCC_vids:I = 0x73646976

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_FINDING_IDX1_HEADER:I = 0x4

.field private static final STATE_FINDING_MOVI_HEADER:I = 0x3

.field private static final STATE_READING_HDRL_BODY:I = 0x2

.field private static final STATE_READING_HDRL_HEADER:I = 0x1

.field private static final STATE_READING_IDX1_BODY:I = 0x5

.field private static final STATE_READING_SAMPLES:I = 0x6

.field private static final STATE_SKIPPING_TO_HDRL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AviExtractor"


# instance fields
.field private aviHeader:Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

.field private final chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

.field private chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

.field private currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

.field private durationUs:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private hdrlSize:I

.field private idx1BodySize:I

.field private moviEnd:J

.field private moviStart:J

.field private pendingReposition:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private seekMapHasBeenOutput:Z

.field private state:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 148
    new-instance v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 149
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DummyExtractorOutput;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DummyExtractorOutput;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 150
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 151
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviStart:J

    .line 152
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviEnd:J

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->hdrlSize:I

    .line 154
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->durationUs:J

    .line 155
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;)[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    return-object v0
.end method

.method private static alignInputToEvenPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 6
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    .line 504
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 506
    :cond_f
    return-void
.end method

.method private getChunkReader(I)Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    .registers 7
    .param p1, "chunkId"    # I

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 411
    .local v3, "chunkReader":Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->handlesChunkId(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 412
    return-object v3

    .line 410
    .end local v3    # "chunkReader":Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 415
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseHdrlBody(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 10
    .param p1, "hrdlBody"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    const v0, 0x6c726468

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->parseFrom(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/ListChunk;

    move-result-object v1

    .line 333
    .local v1, "headerList":Lcom/google/android/exoplayer2/extractor/avi/ListChunk;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->getType()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_6d

    .line 337
    const-class v0, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

    .line 338
    .local v0, "aviHeader":Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;
    if-eqz v0, :cond_66

    .line 342
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviHeader:Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

    .line 344
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;->totalFrames:I

    int-to-long v2, v2

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;->frameDurationUs:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->durationUs:J

    .line 345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v2, "chunkReaderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;>;"
    const/4 v3, 0x0

    .line 347
    .local v3, "streamId":I
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    .line 348
    .local v5, "aviChunk":Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/avi/AviChunk;->getType()I

    move-result v6

    const v7, 0x6c727473

    if-ne v6, v7, :cond_54

    .line 349
    move-object v6, v5

    check-cast v6, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;

    .line 353
    .local v6, "streamList":Lcom/google/android/exoplayer2/extractor/avi/ListChunk;
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "streamId":I
    .local v7, "streamId":I
    invoke-direct {p0, v6, v3}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->processStreamList(Lcom/google/android/exoplayer2/extractor/avi/ListChunk;I)Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    move-result-object v3

    .line 354
    .local v3, "chunkReader":Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    if-eqz v3, :cond_53

    .line 355
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v3    # "chunkReader":Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    .end local v5    # "aviChunk":Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    .end local v6    # "streamList":Lcom/google/android/exoplayer2/extractor/avi/ListChunk;
    :cond_53
    move v3, v7

    .end local v7    # "streamId":I
    .local v3, "streamId":I
    :cond_54
    goto :goto_30

    .line 359
    :cond_55
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    iput-object v4, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 360
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 361
    return-void

    .line 339
    .end local v2    # "chunkReaderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;>;"
    .end local v3    # "streamId":I
    :cond_66
    const-string v2, "AviHeader not found"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v2

    throw v2

    .line 334
    .end local v0    # "aviHeader":Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header list type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    goto :goto_8a

    :goto_89
    throw v0

    :goto_8a
    goto :goto_89
.end method

.method private parseIdx1Body(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 11
    .param p1, "body"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 365
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->peekSeekOffset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v0

    .line 366
    .local v0, "seekOffset":J
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2f

    .line 367
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    .line 368
    .local v2, "chunkId":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    .line 369
    .local v4, "flags":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v0

    .line 370
    .local v5, "offset":J
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 371
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->getChunkReader(I)Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    move-result-object v7

    .line 372
    .local v7, "chunkReader":Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    if-nez v7, :cond_24

    .line 374
    goto :goto_4

    .line 376
    :cond_24
    and-int/lit8 v8, v4, 0x10

    if-ne v8, v3, :cond_2b

    .line 377
    invoke-virtual {v7, v5, v6}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->appendKeyFrameToIndex(J)V

    .line 379
    :cond_2b
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->incrementIndexChunkCount()V

    .line 380
    .end local v2    # "chunkId":I
    .end local v4    # "flags":I
    .end local v5    # "offset":J
    .end local v7    # "chunkReader":Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    goto :goto_4

    .line 381
    :cond_2f
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v3, :cond_3d

    aget-object v5, v2, v4

    .line 382
    .local v5, "chunkReader":Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->compactIndex()V

    .line 381
    .end local v5    # "chunkReader":Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 384
    :cond_3d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    .line 385
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviSeekMap;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->durationUs:J

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;J)V

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 386
    return-void
.end method

.method private peekSeekOffset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .registers 11
    .param p1, "idx1Body"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 393
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0x10

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_b

    .line 395
    return-wide v2

    .line 397
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 398
    .local v0, "startingPosition":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 399
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    .line 403
    .local v1, "offset":I
    int-to-long v4, v1

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviStart:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_20

    goto :goto_23

    :cond_20
    const-wide/16 v2, 0x8

    add-long/2addr v2, v6

    .line 404
    .local v2, "seekOffset":J
    :goto_23
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 405
    return-wide v2
.end method

.method private processStreamList(Lcom/google/android/exoplayer2/extractor/avi/ListChunk;I)Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    .registers 24
    .param p1, "streamList"    # Lcom/google/android/exoplayer2/extractor/avi/ListChunk;
    .param p2, "streamId"    # I

    .line 459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    const-class v2, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;

    .line 460
    .local v10, "aviStreamHeaderChunk":Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;
    const-class v2, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;

    .line 461
    .local v11, "streamFormatChunk":Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;
    const-string v2, "AviExtractor"

    const/4 v3, 0x0

    if-nez v10, :cond_23

    .line 462
    const-string v4, "Missing Stream Header"

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-object v3

    .line 465
    :cond_23
    if-nez v11, :cond_2b

    .line 466
    const-string v4, "Missing Stream Format"

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-object v3

    .line 469
    :cond_2b
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->getDurationUs()J

    move-result-wide v12

    .line 470
    .local v12, "durationUs":J
    iget-object v14, v11, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->format:Lcom/google/android/exoplayer2/Format;

    .line 471
    .local v14, "streamFormat":Lcom/google/android/exoplayer2/Format;
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v15

    .line 472
    .local v15, "builder":Lcom/google/android/exoplayer2/Format$Builder;
    invoke-virtual {v15, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 473
    iget v8, v10, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->suggestedBufferSize:I

    .line 474
    .local v8, "suggestedBufferSize":I
    if-eqz v8, :cond_3f

    .line 475
    invoke-virtual {v15, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 477
    :cond_3f
    const-class v2, Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;

    .line 478
    .local v7, "streamName":Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;
    if-eqz v7, :cond_4f

    .line 479
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;->name:Ljava/lang/String;

    invoke-virtual {v15, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 481
    :cond_4f
    iget-object v2, v14, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v5

    .line 482
    .local v5, "trackType":I
    const/4 v2, 0x1

    if-eq v5, v2, :cond_5d

    const/4 v2, 0x2

    if-ne v5, v2, :cond_5c

    goto :goto_5d

    .line 492
    :cond_5c
    return-object v3

    .line 483
    :cond_5d
    :goto_5d
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v2, v9, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v6

    .line 484
    .local v6, "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {v6, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 485
    new-instance v16, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    iget v4, v10, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->length:I

    move-object/from16 v2, v16

    move/from16 v3, p2

    move/from16 v17, v4

    move v4, v5

    move/from16 v18, v5

    move-object/from16 v19, v6

    .end local v5    # "trackType":I
    .end local v6    # "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .local v18, "trackType":I
    .local v19, "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    move-wide v5, v12

    move-object/from16 v20, v7

    .end local v7    # "streamName":Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;
    .local v20, "streamName":Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;
    move/from16 v7, v17

    move/from16 v17, v8

    .end local v8    # "suggestedBufferSize":I
    .local v17, "suggestedBufferSize":I
    move-object/from16 v8, v19

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;-><init>(IIJILcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 488
    .local v2, "chunkReader":Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    iput-wide v12, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->durationUs:J

    .line 489
    return-object v2
.end method

.method private readMoviChunks(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .registers 10
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviEnd:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_c

    .line 420
    const/4 v0, -0x1

    return v0

    .line 421
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 422
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->onChunkData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    goto :goto_86

    .line 426
    :cond_1b
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->alignInputToEvenPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 427
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v2, 0xc

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    .line 430
    .local v0, "chunkType":I
    const v3, 0x5453494c

    const/16 v4, 0x8

    if-ne v0, v3, :cond_55

    .line 431
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 432
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    .line 433
    .local v3, "listType":I
    const v5, 0x69766f6d

    if-ne v3, v5, :cond_4c

    goto :goto_4e

    :cond_4c
    const/16 v2, 0x8

    :goto_4e
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 434
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 435
    return v1

    .line 437
    .end local v3    # "listType":I
    :cond_55
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    .line 438
    .local v2, "size":I
    const v3, 0x4b4e554a    # 1.352225E7f

    if-ne v0, v3, :cond_6c

    .line 439
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 440
    return v1

    .line 442
    :cond_6c
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 443
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 444
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->getChunkReader(I)Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    move-result-object v3

    .line 445
    .local v3, "chunkReader":Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    if-nez v3, :cond_81

    .line 447
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 448
    return v1

    .line 450
    :cond_81
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->onChunkStart(I)V

    .line 451
    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 454
    .end local v0    # "chunkType":I
    .end local v2    # "size":I
    .end local v3    # "chunkReader":Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    :cond_86
    :goto_86
    return v1
.end method

.method private resolvePendingReposition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z
    .registers 13
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "needSeek":Z
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_25

    .line 316
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    .line 317
    .local v1, "currentPosition":J
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    cmp-long v7, v5, v1

    if-ltz v7, :cond_22

    const-wide/32 v7, 0x40000

    add-long/2addr v7, v1

    cmp-long v9, v5, v7

    if-lez v9, :cond_1c

    goto :goto_22

    .line 324
    :cond_1c
    sub-long/2addr v5, v1

    long-to-int v6, v5

    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_25

    .line 319
    :cond_22
    :goto_22
    iput-wide v5, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 320
    const/4 v0, 0x1

    .line 327
    .end local v1    # "currentPosition":J
    :cond_25
    :goto_25
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 328
    return v0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 4
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 162
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 163
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 164
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 16
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->resolvePendingReposition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 180
    return v1

    .line 182
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/16 v5, 0xc

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_176

    .line 276
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 274
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->readMoviChunks(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 267
    :pswitch_1e
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->idx1BodySize:I

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 268
    .local v0, "idx1Body":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->idx1BodySize:I

    invoke-interface {p1, v1, v6, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 269
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->parseIdx1Body(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 270
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 271
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviStart:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 272
    return v6

    .line 254
    .end local v0    # "idx1Body":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :pswitch_38
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {p1, v0, v6, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    .line 257
    .local v0, "idx1Fourcc":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    .line 258
    .local v1, "boxSize":I
    const v2, 0x31786469

    if-ne v0, v2, :cond_5f

    .line 259
    const/4 v2, 0x5

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 260
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->idx1BodySize:I

    goto :goto_67

    .line 263
    :cond_5f
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 265
    :goto_67
    return v6

    .line 215
    .end local v0    # "idx1Fourcc":I
    .end local v1    # "boxSize":I
    :pswitch_68
    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviStart:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_7d

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviStart:J

    cmp-long v0, v7, v9

    if-eqz v0, :cond_7d

    .line 216
    iput-wide v9, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 217
    return v6

    .line 219
    :cond_7d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v6, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 220
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->populateFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    .line 224
    .local v0, "listType":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    const v7, 0x46464952

    if-ne v2, v7, :cond_a8

    .line 227
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 228
    return v6

    .line 230
    :cond_a8
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    const v5, 0x5453494c

    const-wide/16 v7, 0x8

    if-ne v2, v5, :cond_fb

    const v2, 0x69766f6d

    if-eq v0, v2, :cond_b9

    goto :goto_fb

    .line 235
    :cond_b9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviStart:J

    .line 237
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    int-to-long v11, v2

    add-long/2addr v9, v11

    add-long/2addr v9, v7

    iput-wide v9, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviEnd:J

    .line 238
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    if-nez v2, :cond_ef

    .line 239
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviHeader:Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;->hasIndex()Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 240
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 241
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviEnd:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 242
    return v6

    .line 244
    :cond_e1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v4, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->durationUs:J

    invoke-direct {v4, v7, v8}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 245
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    .line 250
    :cond_ef
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v4, 0xc

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 251
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 252
    return v6

    .line 232
    :cond_fb
    :goto_fb
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 233
    return v6

    .line 208
    .end local v0    # "listType":I
    :pswitch_109
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->hdrlSize:I

    sub-int/2addr v0, v4

    .line 209
    .local v0, "bytesToRead":I
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 210
    .local v1, "hdrlBody":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-interface {p1, v2, v6, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 211
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->parseHdrlBody(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 212
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 213
    return v6

    .line 195
    .end local v0    # "bytesToRead":I
    .end local v1    # "hdrlBody":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :pswitch_11f
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v6, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->populateWithListHeaderFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    const v1, 0x6c726468

    if-ne v0, v1, :cond_147

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->hdrlSize:I

    .line 204
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 205
    return v6

    .line 199
    :cond_147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hdrl expected, found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 186
    :pswitch_163
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 187
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 192
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 193
    return v6

    .line 189
    :cond_16f
    const-string v0, "AVI Header List not found"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_163
        :pswitch_11f
        :pswitch_109
        :pswitch_68
        :pswitch_38
        :pswitch_1e
        :pswitch_19
    .end packed-switch
.end method

.method public release()V
    .registers 1

    .line 302
    return-void
.end method

.method public seek(JJ)V
    .registers 10
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 282
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 285
    .local v4, "chunkReader":Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->seekToPosition(J)V

    .line 284
    .end local v4    # "chunkReader":Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 287
    :cond_16
    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_28

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    array-length v0, v0

    if-nez v0, :cond_24

    .line 290
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    goto :goto_27

    .line 292
    :cond_24
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 294
    :goto_27
    return-void

    .line 296
    :cond_28
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 297
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 5
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    const v1, 0x46464952

    if-eq v0, v1, :cond_1d

    .line 171
    return v2

    .line 173
    :cond_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    const v1, 0x20495641

    if-ne v0, v1, :cond_2f

    const/4 v2, 0x1

    :cond_2f
    return v2
.end method
