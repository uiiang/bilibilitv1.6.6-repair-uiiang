.class final Lcom/google/android/exoplayer2/extractor/mp4/SefReader;
.super Ljava/lang/Object;
.source "SefReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final COLON_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final LENGTH_OF_ONE_SDR:I = 0xc

.field private static final SAMSUNG_TAIL_SIGNATURE:I = 0x53454654

.field private static final STATE_CHECKING_FOR_SEF:I = 0x1

.field private static final STATE_READING_SDRS:I = 0x2

.field private static final STATE_READING_SEF_DATA:I = 0x3

.field private static final STATE_SHOULD_CHECK_FOR_SEF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SefReader"

.field private static final TAIL_FOOTER_LENGTH:I = 0x8

.field private static final TAIL_HEADER_LENGTH:I = 0xc

.field private static final TYPE_SLOW_MOTION_DATA:I = 0x890

.field private static final TYPE_SUPER_SLOW_DEFLICKERING_ON:I = 0xb04

.field private static final TYPE_SUPER_SLOW_MOTION_BGM:I = 0xb01

.field private static final TYPE_SUPER_SLOW_MOTION_DATA:I = 0xb00

.field private static final TYPE_SUPER_SLOW_MOTION_EDIT_DATA:I = 0xb03


# instance fields
.field private final dataReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;",
            ">;"
        }
    .end annotation
.end field

.field private readerState:I

.field private tailLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 102
    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    .line 103
    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    .line 112
    return-void
.end method

.method private checkForSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)V
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 152
    .local v0, "scratch":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 153
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    .line 154
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x53454654

    if-eq v1, v2, :cond_24

    .line 155
    const-wide/16 v1, 0x0

    iput-wide v1, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 156
    return-void

    .line 161
    :cond_24
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v3, v3, -0xc

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 162
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    .line 163
    return-void
.end method

.method private static nameToDataType(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_56

    :cond_7
    goto :goto_3a

    :sswitch_8
    const-string v0, "Super_SlowMotion_BGM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_3b

    :sswitch_12
    const-string v0, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_3b

    :sswitch_1c
    const-string v0, "Super_SlowMotion_Data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3b

    :sswitch_26
    const-string v0, "Super_SlowMotion_Edit_Data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_3b

    :sswitch_30
    const-string v0, "SlowMotion_Data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_3b

    :goto_3a
    const/4 v0, -0x1

    :goto_3b
    packed-switch v0, :pswitch_data_6c

    .line 271
    const-string v0, "Invalid SEF name"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 269
    :pswitch_46
    const/16 v0, 0xb04

    return v0

    .line 267
    :pswitch_49
    const/16 v0, 0xb03

    return v0

    .line 265
    :pswitch_4c
    const/16 v0, 0xb01

    return v0

    .line 263
    :pswitch_4f
    const/16 v0, 0xb00

    return v0

    .line 261
    :pswitch_52
    const/16 v0, 0x890

    return v0

    nop

    :sswitch_data_56
    .sparse-switch
        -0x6604662e -> :sswitch_30
        -0x4f6659e5 -> :sswitch_26
        -0x4a96a712 -> :sswitch_1c
        -0x3182f331 -> :sswitch_12
        0x68f2d704 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
    .end packed-switch
.end method

.method private readSdrs(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)V
    .registers 16
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 167
    .local v0, "streamLength":J
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v2, v2, -0xc

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    .line 168
    .local v2, "sdrsLength":I
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 169
    .local v4, "scratch":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 171
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    div-int/lit8 v7, v2, 0xc

    if-ge v5, v7, :cond_49

    .line 172
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 173
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v7

    .line 174
    .local v7, "dataType":I
    sparse-switch v7, :sswitch_data_66

    .line 187
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_46

    .line 182
    :sswitch_2c
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    int-to-long v8, v8

    sub-long v8, v0, v8

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    .line 183
    .local v8, "startOffset":J
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v10

    .line 184
    .local v10, "size":I
    iget-object v11, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    new-instance v12, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;

    invoke-direct {v12, v7, v8, v9, v10}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;-><init>(IJI)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    nop

    .line 171
    .end local v7    # "dataType":I
    .end local v8    # "startOffset":J
    .end local v10    # "size":I
    :goto_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 191
    .end local v5    # "i":I
    :cond_49
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 192
    const-wide/16 v5, 0x0

    iput-wide v5, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 193
    return-void

    .line 196
    :cond_56
    const/4 v3, 0x3

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    .line 197
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;

    iget-wide v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->startOffset:J

    iput-wide v5, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 198
    return-void

    :sswitch_data_66
    .sparse-switch
        0x890 -> :sswitch_2c
        0xb00 -> :sswitch_2c
        0xb01 -> :sswitch_2c
        0xb03 -> :sswitch_2c
        0xb04 -> :sswitch_2c
    .end sparse-switch
.end method

.method private readSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Ljava/util/List;)V
    .registers 15
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    .local p2, "slowMotionMetadataEntries":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 203
    .local v0, "dataStartOffset":J
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    .line 204
    .local v3, "totalDataLength":I
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 205
    .local v2, "data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 207
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_61

    .line 208
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;

    .line 209
    .local v5, "dataReference":Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;
    iget-wide v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->startOffset:J

    sub-long/2addr v6, v0

    long-to-int v7, v6

    .line 210
    .local v7, "intendedPosition":I
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 214
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 215
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v6

    .line 216
    .local v6, "nameLength":I
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, "name":Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->nameToDataType(Ljava/lang/String;)I

    move-result v9

    .line 219
    .local v9, "dataType":I
    iget v10, v5, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->size:I

    add-int/lit8 v11, v6, 0x8

    sub-int/2addr v10, v11

    .line 220
    .local v10, "remainingDataLength":I
    sparse-switch v9, :sswitch_data_62

    .line 230
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11}, Ljava/lang/IllegalStateException;-><init>()V

    throw v11

    .line 228
    :sswitch_55
    goto :goto_5e

    .line 222
    :sswitch_56
    invoke-static {v2, v10}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readSlowMotionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    move-result-object v11

    invoke-interface {p2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    nop

    .line 207
    .end local v5    # "dataReference":Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;
    .end local v6    # "nameLength":I
    .end local v7    # "intendedPosition":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "dataType":I
    .end local v10    # "remainingDataLength":I
    :goto_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 233
    .end local v4    # "i":I
    :cond_61
    return-void

    :sswitch_data_62
    .sparse-switch
        0x890 -> :sswitch_56
        0xb00 -> :sswitch_55
        0xb01 -> :sswitch_55
        0xb03 -> :sswitch_55
        0xb04 -> :sswitch_55
    .end sparse-switch
.end method

.method private static readSlowMotionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;
    .registers 17
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 238
    .local v1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "dataString":Ljava/lang/String;
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, v2}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    .line 240
    .local v3, "segmentStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_69

    .line 241
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v5

    .line 242
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v0, v6, :cond_64

    .line 246
    const/4 v0, 0x0

    :try_start_2d
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 247
    .local v9, "startTimeMs":J
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 248
    .local v11, "endTimeMs":J
    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 249
    .local v6, "speedMode":I
    add-int/lit8 v8, v6, -0x1

    shl-int/2addr v0, v8

    .line 250
    .local v0, "speedDivisor":I
    new-instance v14, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    move-object v8, v14

    move v13, v0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_5a} :catch_5e

    .line 253
    nop

    .line 240
    .end local v0    # "speedDivisor":I
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "speedMode":I
    .end local v9    # "startTimeMs":J
    .end local v11    # "endTimeMs":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 251
    .restart local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_5e
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v6

    throw v6

    .line 243
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_64
    invoke-static {v7, v7}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 255
    .end local v4    # "i":I
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_69
    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;Ljava/util/List;)I
    .registers 12
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            "Lcom/google/android/exoplayer2/extractor/PositionHolder;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    .local p3, "slowMotionMetadataEntries":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    packed-switch v0, :pswitch_data_38

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 140
    :pswitch_e
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Ljava/util/List;)V

    .line 141
    iput-wide v2, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 142
    goto :goto_37

    .line 137
    :pswitch_14
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readSdrs(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)V

    .line 138
    goto :goto_37

    .line 134
    :pswitch_18
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->checkForSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)V

    .line 135
    goto :goto_37

    .line 126
    :pswitch_1c
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    .line 127
    .local v4, "inputLength":J
    nop

    .line 128
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_31

    const-wide/16 v6, 0x8

    cmp-long v0, v4, v6

    if-gez v0, :cond_2e

    goto :goto_31

    .line 130
    :cond_2e
    sub-long v2, v4, v6

    goto :goto_32

    .line 129
    :cond_31
    :goto_31
    nop

    .line 130
    :goto_32
    iput-wide v2, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 131
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    .line 132
    nop

    .line 146
    .end local v4    # "inputLength":J
    :goto_37
    return v1

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_e
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    .line 117
    return-void
.end method
