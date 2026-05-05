.class public Lcom/google/android/exoplayer2/text/SubtitleExtractor;
.super Ljava/lang/Object;
.source "SubtitleExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400

.field private static final STATE_CREATED:I = 0x0

.field private static final STATE_EXTRACTING:I = 0x2

.field private static final STATE_FINISHED:I = 0x4

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_RELEASED:I = 0x5

.field private static final STATE_SEEKING:I = 0x3


# instance fields
.field private bytesRead:I

.field private final cueEncoder:Lcom/google/android/exoplayer2/text/CueEncoder;

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private final samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private seekTimeUs:J

.field private state:I

.field private final subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

.field private final timestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/SubtitleDecoder;Lcom/google/android/exoplayer2/Format;)V
    .registers 5
    .param p1, "subtitleDecoder"    # Lcom/google/android/exoplayer2/text/SubtitleDecoder;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 105
    new-instance v0, Lcom/google/android/exoplayer2/text/CueEncoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/CueEncoder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->cueEncoder:Lcom/google/android/exoplayer2/text/CueEncoder;

    .line 106
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 107
    nop

    .line 109
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 110
    const-string v1, "text/x-exoplayer-cues"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->format:Lcom/google/android/exoplayer2/Format;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 116
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->seekTimeUs:J

    .line 117
    return-void
.end method

.method private decode()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 224
    .local v0, "inputBuffer":Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    :goto_8
    const-wide/16 v1, 0x5

    if-nez v0, :cond_19

    .line 225
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 226
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-object v0, v1

    goto :goto_8

    .line 228
    :cond_19
    iget v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->ensureSpaceForWrite(I)V

    .line 229
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 230
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 231
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 232
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 233
    .local v3, "outputBuffer":Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    :goto_40
    if-nez v3, :cond_4f

    .line 234
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 235
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-object v3, v4

    goto :goto_40

    .line 237
    :cond_4f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_50
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v2

    if-ge v1, v2, :cond_7f

    .line 238
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object v2

    .line 239
    .local v2, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->cueEncoder:Lcom/google/android/exoplayer2/text/CueEncoder;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/text/CueEncoder;->encode(Ljava/util/List;)[B

    move-result-object v4

    .line 240
    .local v4, "cuesSample":[B
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    new-instance v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v6, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    nop

    .end local v2    # "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    .end local v4    # "cuesSample":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 243
    .end local v1    # "i":I
    :cond_7f
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V
    :try_end_82
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_82} :catch_8c
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_82} :catch_84

    .line 249
    .end local v0    # "inputBuffer":Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .end local v3    # "outputBuffer":Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    nop

    .line 250
    return-void

    .line 247
    :catch_84
    move-exception v0

    .line 248
    .local v0, "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    const-string v1, "SubtitleDecoder failed."

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 244
    .end local v0    # "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    :catch_8c
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 246
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    goto :goto_9b

    :goto_9a
    throw v1

    :goto_9b
    goto :goto_9a
.end method

.method private readFromInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 9
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    if-ne v0, v1, :cond_11

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V

    .line 210
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 211
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 212
    .local v0, "readResult":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    .line 213
    iget v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    .line 215
    :cond_2e
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    .line 216
    .local v2, "inputLength":J
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3f

    iget v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    int-to-long v4, v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_41

    :cond_3f
    if-ne v0, v1, :cond_43

    :cond_41
    const/4 v1, 0x1

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    return v1
.end method

.method private skipInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    nop

    .line 199
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    .line 200
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    goto :goto_16

    .line 201
    :cond_14
    const/16 v0, 0x400

    .line 198
    :goto_16
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method private writeToOutput()V
    .registers 13

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 256
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->seekTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-nez v6, :cond_28

    .line 257
    const/4 v0, 0x0

    goto :goto_32

    .line 258
    :cond_28
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 258
    invoke-static {v4, v0, v3, v3}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v0

    :goto_32
    nop

    .line 260
    .local v0, "index":I
    move v1, v0

    .local v1, "i":I
    :goto_34
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_69

    .line 261
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 262
    .local v3, "sample":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 263
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    array-length v4, v4

    .line 264
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v5, v3, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 265
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 266
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 265
    move v9, v4

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 260
    .end local v3    # "sample":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v4    # "size":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 272
    .end local v1    # "i":I
    :cond_69
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 10
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 129
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 130
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 131
    const/4 v0, 0x3

    invoke-interface {p1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;

    new-array v4, v1, [J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v2

    new-array v7, v1, [J

    aput-wide v5, v7, v2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v3, v4, v7, v5, v6}, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;-><init>([J[JJ)V

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 139
    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 140
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 11
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    const/4 v3, 0x5

    if-eq v0, v3, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 145
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v3, 0x2

    if-ne v0, v1, :cond_32

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 147
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_29

    .line 148
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    goto :goto_2b

    .line 149
    :cond_29
    const/16 v1, 0x400

    .line 146
    :goto_2b
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 150
    iput v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    .line 151
    iput v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 153
    :cond_32
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v1, 0x4

    if-ne v0, v3, :cond_45

    .line 154
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->readFromInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    .line 155
    .local v0, "inputFinished":Z
    if-eqz v0, :cond_45

    .line 156
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->decode()V

    .line 157
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->writeToOutput()V

    .line 158
    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 161
    .end local v0    # "inputFinished":Z
    :cond_45
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_55

    .line 162
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->skipInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    .line 163
    .restart local v0    # "inputFinished":Z
    if-eqz v0, :cond_55

    .line 164
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->writeToOutput()V

    .line 165
    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 168
    .end local v0    # "inputFinished":Z
    :cond_55
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    if-ne v0, v1, :cond_5b

    .line 169
    const/4 v0, -0x1

    return v0

    .line 171
    :cond_5b
    return v2
.end method

.method public release()V
    .registers 3

    .line 189
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 190
    return-void

    .line 192
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->release()V

    .line 193
    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 194
    return-void
.end method

.method public seek(JJ)V
    .registers 8
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 176
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    const/4 v2, 0x5

    if-eq v0, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 177
    iput-wide p3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->seekTimeUs:J

    .line 178
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_17

    .line 179
    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 181
    :cond_17
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 182
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 184
    :cond_1f
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 3
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x1

    return v0
.end method
