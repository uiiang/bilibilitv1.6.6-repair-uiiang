.class public final Lcom/google/android/exoplayer2/extractor/ts/LatmReader;
.super Ljava/lang/Object;
.source "LatmReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INITIAL_BUFFER_SIZE:I = 0x400

.field private static final STATE_FINDING_SYNC_1:I = 0x0

.field private static final STATE_FINDING_SYNC_2:I = 0x1

.field private static final STATE_READING_HEADER:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x3

.field private static final SYNC_BYTE_FIRST:I = 0x56

.field private static final SYNC_BYTE_SECOND:I = 0xe0


# instance fields
.field private audioMuxVersionA:I

.field private bytesRead:I

.field private channelCount:I

.field private codecs:Ljava/lang/String;

.field private format:Lcom/google/android/exoplayer2/Format;

.field private formatId:Ljava/lang/String;

.field private frameLengthType:I

.field private final language:Ljava/lang/String;

.field private numSubframes:I

.field private otherDataLenBits:J

.field private otherDataPresent:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private final sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private sampleDurationUs:J

.field private sampleRateHz:I

.field private sampleSize:I

.field private secondHeaderByte:I

.field private state:I

.field private streamMuxRead:Z

.field private timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 90
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 91
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    .line 92
    return-void
.end method

.method private static latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J
    .registers 4
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 335
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 336
    .local v0, "bytesForValue":I
    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method private parseAudioMuxElement(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .registers 6
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 172
    .local v0, "useSameStreamMux":Z
    if-nez v0, :cond_d

    .line 173
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseStreamMuxConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    goto :goto_12

    .line 175
    :cond_d
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    if-nez v1, :cond_12

    .line 176
    return-void

    .line 179
    :cond_12
    :goto_12
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->audioMuxVersionA:I

    const/4 v2, 0x0

    if-nez v1, :cond_33

    .line 180
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->numSubframes:I

    if-nez v1, :cond_2e

    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parsePayloadLengthInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    .line 184
    .local v1, "muxSlotLengthBytes":I
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parsePayloadMux(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    .line 185
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataPresent:Z

    if-eqz v2, :cond_2c

    .line 186
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    long-to-int v3, v2

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 188
    .end local v1    # "muxSlotLengthBytes":I
    :cond_2c
    nop

    .line 192
    return-void

    .line 181
    :cond_2e
    invoke-static {v2, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 190
    :cond_33
    invoke-static {v2, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1
.end method

.method private parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .registers 5
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    .line 287
    .local v0, "bitsLeft":I
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v1

    .line 288
    .local v1, "config":Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    .line 289
    iget v2, v1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleRateHz:I

    .line 290
    iget v2, v1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->channelCount:I

    .line 291
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    sub-int v2, v0, v2

    return v2
.end method

.method private parseFrameLength(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .registers 3
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 263
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->frameLengthType:I

    .line 264
    packed-switch v0, :pswitch_data_28

    .line 281
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 278
    :pswitch_10
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 279
    goto :goto_26

    .line 274
    :pswitch_15
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 275
    goto :goto_26

    .line 269
    :pswitch_1a
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 270
    goto :goto_26

    .line 266
    :pswitch_20
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 267
    nop

    .line 283
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1a
        :pswitch_a
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private parsePayloadLengthInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .registers 5
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, "muxSlotLengthBytes":I
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->frameLengthType:I

    if-nez v1, :cond_11

    .line 300
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 301
    .local v1, "tmp":I
    add-int/2addr v0, v1

    .line 302
    const/16 v2, 0xff

    if-eq v1, v2, :cond_5

    .line 303
    return v0

    .line 305
    .end local v1    # "tmp":I
    :cond_11
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    goto :goto_18

    :goto_17
    throw v1

    :goto_18
    goto :goto_17
.end method

.method private parsePayloadMux(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V
    .registers 13
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p2, "muxLengthBytes"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v0

    .line 313
    .local v0, "bitPosition":I
    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_10

    .line 315
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    shr-int/lit8 v2, v0, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_21

    .line 319
    :cond_10
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    mul-int/lit8 v2, p2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits([BII)V

    .line 320
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 322
    :goto_21
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v1, v2, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 323
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v1

    if-eqz v3, :cond_43

    .line 324
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v7, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 325
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDurationUs:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    .line 327
    :cond_43
    return-void
.end method

.method private parseStreamMuxConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .registers 15
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 198
    .local v1, "audioMuxVersion":I
    const/4 v2, 0x0

    if-ne v1, v0, :cond_d

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->audioMuxVersionA:I

    .line 199
    const/4 v4, 0x0

    if-nez v3, :cond_e4

    .line 200
    if-ne v1, v0, :cond_18

    .line 201
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    .line 203
    :cond_18
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 206
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->numSubframes:I

    .line 207
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 208
    .local v3, "numProgram":I
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 209
    .local v5, "numLayer":I
    if-nez v3, :cond_da

    if-nez v5, :cond_da

    .line 212
    const/16 v4, 0x8

    if-nez v1, :cond_98

    .line 213
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v6

    .line 214
    .local v6, "startPosition":I
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v7

    .line 215
    .local v7, "readBits":I
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 216
    add-int/lit8 v8, v7, 0x7

    div-int/2addr v8, v4

    new-array v8, v8, [B

    .line 217
    .local v8, "initData":[B
    invoke-virtual {p1, v8, v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits([BII)V

    .line 218
    new-instance v2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    .line 220
    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 221
    const-string v9, "audio/mp4a-latm"

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    .line 222
    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v9, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->channelCount:I

    .line 223
    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v9, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleRateHz:I

    .line 224
    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 225
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 226
    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 228
    .local v2, "format":Lcom/google/android/exoplayer2/Format;
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_97

    .line 229
    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->format:Lcom/google/android/exoplayer2/Format;

    .line 230
    iget v9, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v9, v9

    const-wide/32 v11, 0x3d090000

    div-long/2addr v11, v9

    iput-wide v11, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDurationUs:J

    .line 231
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v9, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 233
    .end local v2    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v6    # "startPosition":I
    .end local v7    # "readBits":I
    .end local v8    # "initData":[B
    :cond_97
    goto :goto_a6

    .line 234
    :cond_98
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    move-result-wide v6

    long-to-int v2, v6

    .line 235
    .local v2, "ascLen":I
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v6

    .line 236
    .local v6, "bitsRead":I
    sub-int v7, v2, v6

    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 238
    .end local v2    # "ascLen":I
    .end local v6    # "bitsRead":I
    :goto_a6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseFrameLength(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    .line 239
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataPresent:Z

    .line 240
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    .line 241
    if-eqz v2, :cond_cf

    .line 242
    if-ne v1, v0, :cond_be

    .line 243
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    goto :goto_cf

    .line 247
    :cond_be
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 248
    .local v0, "otherDataLenEsc":Z
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    shl-long/2addr v6, v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    .line 249
    if-nez v0, :cond_be

    .line 252
    .end local v0    # "otherDataLenEsc":Z
    :cond_cf
    :goto_cf
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 253
    .local v0, "crcCheckPresent":Z
    if-eqz v0, :cond_d8

    .line 254
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 256
    .end local v0    # "crcCheckPresent":Z
    .end local v3    # "numProgram":I
    .end local v5    # "numLayer":I
    :cond_d8
    nop

    .line 260
    return-void

    .line 210
    .restart local v3    # "numProgram":I
    .restart local v5    # "numLayer":I
    :cond_da
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 204
    .end local v3    # "numProgram":I
    .end local v5    # "numLayer":I
    :cond_df
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 258
    :cond_e4
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    goto :goto_ea

    :goto_e9
    throw v0

    :goto_ea
    goto :goto_e9
.end method

.method private resetBufferForSize(I)V
    .registers 4
    .param p1, "newSize"    # I

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([B)V

    .line 332
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 7
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_5
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_85

    .line 120
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    const/16 v1, 0x56

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_86

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 144
    :pswitch_19
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 145
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    invoke-virtual {p1, v1, v3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 146
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    .line 147
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    if-ne v1, v3, :cond_5

    .line 148
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 149
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioMuxElement(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    .line 150
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_5

    .line 136
    .end local v0    # "bytesToRead":I
    :pswitch_45
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->secondHeaderByte:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    .line 137
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    array-length v1, v1

    if-le v0, v1, :cond_60

    .line 138
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->resetBufferForSize(I)V

    .line 140
    :cond_60
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    .line 141
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    .line 142
    goto :goto_5

    .line 127
    :pswitch_66
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 128
    .local v0, "secondByte":I
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_76

    .line 129
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->secondHeaderByte:I

    .line 130
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_5

    .line 131
    :cond_76
    if-eq v0, v1, :cond_5

    .line 132
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_5

    .line 122
    .end local v0    # "secondByte":I
    :pswitch_7b
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_5

    .line 157
    :cond_85
    return-void

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_66
        :pswitch_45
        :pswitch_19
    .end packed-switch
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 103
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 104
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 105
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public packetFinished()V
    .registers 1

    .line 162
    return-void
.end method

.method public packetStarted(JI)V
    .registers 7
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 110
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_b

    .line 111
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    .line 113
    :cond_b
    return-void
.end method

.method public seek()V
    .registers 4

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    .line 97
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    .line 98
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    .line 99
    return-void
.end method
