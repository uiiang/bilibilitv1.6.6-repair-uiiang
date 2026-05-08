.class final Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;
.super Ljava/lang/Object;
.source "UserDataReader.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final USER_DATA_START_CODE:I = 0x1b2


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->closedCaptionFormats:Ljava/util/List;

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 48
    return-void
.end method


# virtual methods
.method public consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 8
    .param p1, "pesTimeUs"    # J
    .param p3, "userDataPayload"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 75
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_9

    .line 76
    return-void

    .line 78
    :cond_9
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 79
    .local v0, "userDataStartCode":I
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 80
    .local v1, "userDataIdentifier":I
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 81
    .local v2, "userDataTypeCode":I
    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_26

    const v3, 0x47413934

    if-ne v1, v3, :cond_26

    const/4 v3, 0x3

    if-ne v2, v3, :cond_26

    .line 84
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {p1, p2, p3, v3}, Lcom/google/android/exoplayer2/extractor/CeaUtil;->consumeCcData(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 86
    :cond_26
    return-void
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 10
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v1, v1

    if-ge v0, v1, :cond_7e

    .line 53
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 54
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v1

    const/4 v2, 0x3

    invoke-interface {p1, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    .line 55
    .local v1, "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Format;

    .line 56
    .local v2, "channelFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v3, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 57
    .local v3, "channelMimeType":Ljava/lang/String;
    nop

    .line 58
    const-string v4, "application/cea-608"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 59
    const-string v4, "application/cea-708"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v4, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v4, 0x1

    :goto_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid closed caption MIME type provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 61
    new-instance v4, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 63
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 64
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget v5, v2, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 65
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 66
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget v5, v2, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 67
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 68
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 61
    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 70
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    aput-object v1, v4, v0

    .line 52
    .end local v1    # "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .end local v2    # "channelFormat":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "channelMimeType":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    .end local v0    # "i":I
    :cond_7e
    return-void
.end method
