.class public final Lcom/google/android/exoplayer2/extractor/ts/SectionReader;
.super Ljava/lang/Object;
.source "SectionReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_SECTION_BUFFER_LENGTH:I = 0x20

.field private static final MAX_SECTION_LENGTH:I = 0x1002

.field private static final SECTION_HEADER_LENGTH:I = 0x3


# instance fields
.field private bytesRead:I

.field private final reader:Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;

.field private final sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private sectionSyntaxIndicator:Z

.field private totalSectionLength:I

.field private waitingForPayloadStart:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V
    .registers 4
    .param p1, "reader"    # Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;

    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 54
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .registers 12
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "flags"    # I

    .line 72
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 73
    .local v0, "payloadUnitStartIndicator":Z
    :goto_9
    const/4 v3, -0x1

    .line 74
    .local v3, "payloadStartPosition":I
    if-eqz v0, :cond_16

    .line 75
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 76
    .local v4, "payloadStartOffset":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int v3, v5, v4

    .line 79
    .end local v4    # "payloadStartOffset":I
    :cond_16
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    if-eqz v4, :cond_24

    .line 80
    if-nez v0, :cond_1d

    .line 81
    return-void

    .line 83
    :cond_1d
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 84
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 85
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    .line 88
    :cond_24
    :goto_24
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lez v4, :cond_107

    .line 89
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_b1

    .line 92
    if-nez v4, :cond_44

    .line 93
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 94
    .local v4, "tableId":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 95
    const/16 v6, 0xff

    if-ne v4, v6, :cond_44

    .line 97
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 98
    return-void

    .line 101
    .end local v4    # "tableId":I
    :cond_44
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    rsub-int/lit8 v6, v6, 0x3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 104
    .local v4, "headerBytesToRead":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p1, v6, v7, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 105
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    .line 106
    if-ne v6, v5, :cond_af

    .line 107
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 108
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 109
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 110
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 111
    .local v6, "secondHeaderByte":I
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 112
    .local v7, "thirdHeaderByte":I
    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_83

    const/4 v8, 0x1

    goto :goto_84

    :cond_83
    const/4 v8, 0x0

    :goto_84
    iput-boolean v8, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    .line 113
    and-int/lit8 v8, v6, 0xf

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v7

    add-int/2addr v8, v5

    iput v8, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    .line 115
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v5

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    if-ge v5, v8, :cond_af

    .line 117
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 118
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v8, 0x1002

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 119
    .local v5, "limit":I
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V

    .line 122
    .end local v4    # "headerBytesToRead":I
    .end local v5    # "limit":I
    .end local v6    # "secondHeaderByte":I
    .end local v7    # "thirdHeaderByte":I
    :cond_af
    goto/16 :goto_24

    .line 124
    :cond_b1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 126
    .local v4, "bodyBytesToRead":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p1, v5, v6, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 127
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    .line 128
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    if-ne v5, v6, :cond_105

    .line 129
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    if-eqz v5, :cond_f2

    .line 131
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    const/4 v7, -0x1

    invoke-static {v5, v1, v6, v7}, Lcom/google/android/exoplayer2/util/Util;->crc32([BIII)I

    move-result v5

    if-eqz v5, :cond_e8

    .line 133
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 134
    return-void

    .line 136
    :cond_e8
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    goto :goto_f7

    .line 139
    :cond_f2
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 141
    :goto_f7
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 142
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 143
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    .line 145
    .end local v4    # "bodyBytesToRead":I
    :cond_105
    goto/16 :goto_24

    .line 147
    :cond_107
    return-void
.end method

.method public init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5
    .param p1, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;->init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 63
    return-void
.end method

.method public seek()V
    .registers 2

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 68
    return-void
.end method
