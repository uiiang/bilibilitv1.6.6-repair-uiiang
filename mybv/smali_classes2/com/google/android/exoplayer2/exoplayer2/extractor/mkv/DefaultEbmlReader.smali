.class final Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ELEMENT_STATE_READ_CONTENT:I = 0x2

.field private static final ELEMENT_STATE_READ_CONTENT_SIZE:I = 0x1

.field private static final ELEMENT_STATE_READ_ID:I = 0x0

.field private static final MAX_ID_BYTES:I = 0x4

.field private static final MAX_INTEGER_ELEMENT_SIZE_BYTES:I = 0x8

.field private static final MAX_LENGTH_BYTES:I = 0x8

.field private static final VALID_FLOAT32_ELEMENT_SIZE_BYTES:I = 0x4

.field private static final VALID_FLOAT64_ELEMENT_SIZE_BYTES:I = 0x8


# instance fields
.field private elementContentSize:J

.field private elementId:I

.field private elementState:I

.field private final masterElementsStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

.field private final scratch:[B

.field private final varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    .line 74
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    .line 76
    return-void
.end method

.method private maybeResyncToNextLevel1Element(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "processor"
        }
    .end annotation

    .line 179
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 181
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v0

    .line 183
    .local v0, "varintLength":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2b

    if-gt v0, v2, :cond_2b

    .line 184
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 185
    .local v2, "potentialId":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->isLevel1Element(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 186
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 187
    int-to-long v3, v2

    return-wide v3

    .line 190
    .end local v2    # "potentialId":I
    :cond_2b
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 191
    .end local v0    # "varintLength":I
    goto :goto_3
.end method

.method private readFloat(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)D
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v0

    .line 222
    .local v0, "integerValue":J
    const/4 v2, 0x4

    if-ne p2, v2, :cond_e

    .line 223
    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    float-to-double v2, v2

    .local v2, "floatValue":D
    goto :goto_12

    .line 225
    .end local v2    # "floatValue":D
    :cond_e
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 227
    .restart local v2    # "floatValue":D
    :goto_12
    return-wide v2
.end method

.method private readInteger(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J
    .registers 10
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 204
    const-wide/16 v0, 0x0

    .line 205
    .local v0, "value":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, p2, :cond_1b

    .line 206
    const/16 v3, 0x8

    shl-long v3, v0, v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v0, v3, v5

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 208
    .end local v2    # "i":I
    :cond_1b
    return-wide v0
.end method

.method private static readString(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    if-nez p1, :cond_5

    .line 241
    const-string v0, ""

    return-object v0

    .line 243
    :cond_5
    new-array v0, p1, [B

    .line 244
    .local v0, "stringBytes":[B
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 246
    move v2, p1

    .line 247
    .local v2, "trimmedLength":I
    :goto_c
    if-lez v2, :cond_17

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_17

    .line 248
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 250
    :cond_17
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v3
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;)V
    .registers 2
    .param p1, "processor"    # Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    .line 81
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 16
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    .line 95
    .local v0, "head":Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;
    const/4 v1, 0x1

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->access$000(Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2e

    .line 96
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->access$100(Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->endMasterElement(I)V

    .line 97
    return v1

    .line 100
    :cond_2e
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    const/4 v3, 0x0

    if-nez v2, :cond_50

    .line 101
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    const/4 v4, 0x4

    invoke-virtual {v2, p1, v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v4

    .line 102
    .local v4, "result":J
    const-wide/16 v6, -0x2

    cmp-long v2, v4, v6

    if-nez v2, :cond_44

    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->maybeResyncToNextLevel1Element(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v4

    .line 105
    :cond_44
    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_4b

    .line 106
    return v3

    .line 109
    :cond_4b
    long-to-int v2, v4

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    .line 110
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 113
    .end local v4    # "result":J
    :cond_50
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-ne v2, v1, :cond_61

    .line 114
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    const/16 v4, 0x8

    invoke-virtual {v2, p1, v3, v1, v4}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    .line 115
    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 118
    :cond_61
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->getElementType(I)I

    move-result v2

    .line 119
    .local v2, "type":I
    const-wide/16 v4, 0x8

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_158

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid element type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 136
    :pswitch_87
    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v9, 0x4

    cmp-long v11, v7, v9

    if-eqz v11, :cond_ae

    cmp-long v9, v7, v4

    if-nez v9, :cond_94

    goto :goto_ae

    .line 138
    :cond_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid float size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 141
    :cond_ae
    :goto_ae
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v6, v7

    invoke-direct {p0, p1, v6}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readFloat(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)D

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->floatElement(ID)V

    .line 142
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 143
    return v1

    .line 153
    :pswitch_bd
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v7, v6

    invoke-interface {v4, v5, v7, p1}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->binaryElement(IILcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 154
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 155
    return v1

    .line 145
    :pswitch_ca
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v9, v4, v7

    if-gtz v9, :cond_e2

    .line 149
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v5, v4

    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readString(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->stringElement(ILjava/lang/String;)V

    .line 150
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 151
    return v1

    .line 146
    :cond_e2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String element size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 128
    :pswitch_fc
    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v9, v7, v4

    if-gtz v9, :cond_111

    .line 132
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v6, v7

    invoke-direct {p0, p1, v6}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->integerElement(IJ)V

    .line 133
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 134
    return v1

    .line 129
    :cond_111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid integer size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 121
    :pswitch_12b
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    .line 122
    .local v10, "elementContentPosition":J
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long v12, v10, v4

    .line 123
    .local v12, "elementEndPosition":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    new-instance v5, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-direct {v5, v7, v12, v13, v6}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJLcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$1;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 124
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    move-wide v6, v10

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->startMasterElement(IJJ)V

    .line 125
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 126
    return v1

    .line 157
    .end local v10    # "elementContentPosition":J
    .end local v12    # "elementEndPosition":J
    :pswitch_14c
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v1, v4

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 158
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 159
    nop

    .line 164
    .end local v0    # "head":Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;
    .end local v2    # "type":I
    goto/16 :goto_5

    nop

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_14c
        :pswitch_12b
        :pswitch_fc
        :pswitch_ca
        :pswitch_bd
        :pswitch_87
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->reset()V

    .line 88
    return-void
.end method
