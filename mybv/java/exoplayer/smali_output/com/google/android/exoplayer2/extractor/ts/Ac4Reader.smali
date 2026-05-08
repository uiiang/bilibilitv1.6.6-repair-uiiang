.class public final Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Lcom/google/android/exoplayer2/Format;

.field private formatId:Ljava/lang/String;

.field private hasCRC:Z

.field private final headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private final headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWasAC:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 96
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    .line 98
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 99
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 100
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    .line 101
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    .line 102
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 103
    return-void
.end method

.method private continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .registers 6
    .param p1, "source"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 182
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 183
    .local v0, "bytesToRead":I
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 184
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 185
    if-ne v1, p3, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private parseHeader()V
    .registers 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/Ac4Util;->parseAc4SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;

    move-result-object v0

    .line 216
    .local v0, "frameInfo":Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplayer2/Format;

    const-string v2, "audio/ac4"

    if-eqz v1, :cond_2c

    iget v1, v0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v1, v3, :cond_2c

    iget v1, v0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v1, v3, :cond_2c

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 219
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 220
    :cond_2c
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 223
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    .line 224
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 225
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 226
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplayer2/Format;

    .line 228
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 230
    :cond_58
    iget v1, v0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->frameSize:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleSize:I

    .line 233
    iget v1, v0, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    int-to-long v1, v1

    const-wide/32 v3, 0xf4240

    mul-long v1, v1, v3

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleDurationUs:J

    .line 234
    return-void
.end method

.method private skipToNextSync(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 7
    .param p1, "pesBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 196
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_34

    .line 197
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_19

    .line 198
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 199
    goto :goto_1

    .line 201
    :cond_19
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 202
    .local v0, "secondByte":I
    if-ne v0, v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 203
    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_2e

    if-ne v0, v4, :cond_2d

    goto :goto_2e

    .line 207
    .end local v0    # "secondByte":I
    :cond_2d
    goto :goto_1

    .line 204
    .restart local v0    # "secondByte":I
    :cond_2e
    :goto_2e
    if-ne v0, v4, :cond_31

    const/4 v1, 0x1

    :cond_31
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    .line 205
    return v3

    .line 208
    .end local v0    # "secondByte":I
    :cond_34
    return v1
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 12
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_5
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_94

    .line 132
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_96

    .line 162
    goto :goto_5

    .line 150
    :pswitch_13
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleSize:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 151
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 152
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 153
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleSize:I

    if-ne v1, v7, :cond_5

    .line 154
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v8

    if-eqz v1, :cond_48

    .line 155
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 156
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleDurationUs:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    .line 158
    :cond_48
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    goto :goto_5

    .line 142
    .end local v0    # "bytesToRead":I
    :pswitch_4b
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v3, 0x10

    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->parseHeader()V

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 146
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    goto :goto_5

    .line 134
    :pswitch_6b
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->skipToNextSync(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    .line 136
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    const/16 v4, -0x54

    aput-byte v4, v3, v2

    .line 137
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    if-eqz v3, :cond_8b

    const/16 v3, 0x41

    goto :goto_8d

    :cond_8b
    const/16 v3, 0x40

    :goto_8d
    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 138
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    goto/16 :goto_5

    .line 165
    :cond_94
    return-void

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_4b
        :pswitch_13
    .end packed-switch
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 116
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 117
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 118
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 119
    return-void
.end method

.method public packetFinished()V
    .registers 1

    .line 170
    return-void
.end method

.method public packetStarted(JI)V
    .registers 7
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 123
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_b

    .line 124
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    .line 126
    :cond_b
    return-void
.end method

.method public seek()V
    .registers 3

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    .line 108
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 109
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 110
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    .line 111
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    .line 112
    return-void
.end method
