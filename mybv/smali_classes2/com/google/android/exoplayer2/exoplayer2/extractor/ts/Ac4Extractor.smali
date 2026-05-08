.class public final Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;
.super Ljava/lang/Object;
.source "Ac4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final FRAME_HEADER_SIZE:I = 0x7

.field private static final MAX_SNIFF_BYTES:I = 0x2000

.field private static final READ_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final reader:Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

.field private final sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 74
    return-void
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 6
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 127
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 128
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 129
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 9
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 145
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0x4000

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 146
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 147
    return v1

    .line 151
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 152
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 154
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->startedPacket:Z

    if-nez v1, :cond_2a

    .line 156
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->packetStarted(JI)V

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->startedPacket:Z

    .line 161
    :cond_2a
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 162
    return v2
.end method

.method public release()V
    .registers 1

    .line 140
    return-void
.end method

.method public seek(JJ)V
    .registers 6
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->startedPacket:Z

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->seek()V

    .line 135
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 10
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 82
    .local v0, "scratch":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/4 v2, 0x0

    .line 84
    .local v2, "startPosition":I
    :goto_8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 85
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 86
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_68

    .line 87
    nop

    .line 94
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 95
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 97
    move v1, v2

    .line 98
    .local v1, "headerPosition":I
    const/4 v3, 0x0

    .line 100
    .local v3, "validFramesCount":I
    :goto_25
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    const/4 v6, 0x7

    invoke-interface {p1, v5, v4, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 101
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 102
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 103
    .local v5, "syncBytes":I
    const v6, 0xac40

    if-eq v5, v6, :cond_4f

    const v6, 0xac41

    if-eq v5, v6, :cond_4f

    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 106
    add-int/lit8 v1, v1, 0x1

    sub-int v6, v1, v2

    const/16 v7, 0x2000

    if-lt v6, v7, :cond_4b

    .line 107
    return v4

    .line 109
    :cond_4b
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_67

    .line 111
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x4

    if-lt v3, v6, :cond_56

    .line 112
    const/4 v4, 0x1

    return v4

    .line 114
    :cond_56
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/audio/Ac4Util;->parseAc4SyncframeSize([BI)I

    move-result v6

    .line 115
    .local v6, "frameSize":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_62

    .line 116
    return v4

    .line 118
    :cond_62
    add-int/lit8 v7, v6, -0x7

    invoke-interface {p1, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 120
    .end local v5    # "syncBytes":I
    .end local v6    # "frameSize":I
    :goto_67
    goto :goto_25

    .line 89
    .end local v1    # "headerPosition":I
    .end local v3    # "validFramesCount":I
    :cond_68
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 90
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    .line 91
    .local v3, "length":I
    add-int/lit8 v4, v3, 0xa

    add-int/2addr v2, v4

    .line 92
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 93
    .end local v3    # "length":I
    goto :goto_8
.end method
