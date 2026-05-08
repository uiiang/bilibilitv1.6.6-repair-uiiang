.class public final Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;
.super Ljava/lang/Object;
.source "DvbSubtitleReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bytesToCheck:I

.field private final outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private sampleBytesWritten:I

.field private sampleTimeUs:J

.field private final subtitleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private writingSample:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "subtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 56
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    .line 57
    return-void
.end method

.method private checkNextByte(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Z
    .registers 5
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "expectedValue"    # I

    .line 129
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 130
    return v1

    .line 132
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p2, :cond_10

    .line 133
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 135
    :cond_10
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    .line 136
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    return v0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 8
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 109
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_3c

    .line 110
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->checkNextByte(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 112
    return-void

    .line 114
    :cond_12
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->checkNextByte(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 116
    return-void

    .line 118
    :cond_1f
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 119
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    .line 120
    .local v2, "bytesAvailable":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v4, v3

    :goto_2a
    if-ge v1, v4, :cond_37

    aget-object v5, v3, v1

    .line 121
    .local v5, "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 122
    invoke-interface {v5, p1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 120
    .end local v5    # "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 124
    :cond_37
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    .line 126
    .end local v0    # "dataPosition":I
    .end local v2    # "bytesAvailable":I
    :cond_3c
    return-void
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 8
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v1, v1

    if-ge v0, v1, :cond_4b

    .line 68
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    .line 69
    .local v1, "subtitleInfo":Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 70
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v2

    .line 71
    .local v2, "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 73
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 74
    const-string v4, "application/dvbsubs"

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    .line 75
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    .line 76
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 71
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 78
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    aput-object v2, v3, v0

    .line 67
    .end local v1    # "subtitleInfo":Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;
    .end local v2    # "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    :cond_4b
    return-void
.end method

.method public packetFinished()V
    .registers 13

    .line 97
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_28

    .line 98
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_26

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_26

    aget-object v3, v0, v2

    .line 100
    .local v3, "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const/4 v8, 0x1

    iget v9, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v3

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 99
    .end local v3    # "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 103
    :cond_26
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 105
    :cond_28
    return-void
.end method

.method public packetStarted(JI)V
    .registers 7
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 84
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_5

    .line 85
    return-void

    .line 87
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 88
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_13

    .line 89
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    .line 91
    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    .line 93
    return-void
.end method

.method public seek()V
    .registers 3

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 62
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    .line 63
    return-void
.end method
