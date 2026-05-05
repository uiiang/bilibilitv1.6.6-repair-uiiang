.class final Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;
.super Ljava/lang/Object;
.source "StreamFormatChunk.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/avi/AviChunk;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamFormatChunk"


# instance fields
.field public final format:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .registers 2
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->format:Lcom/google/android/exoplayer2/Format;

    .line 57
    return-void
.end method

.method private static getMimeTypeFromCompression(I)Ljava/lang/String;
    .registers 2
    .param p0, "compression"    # I

    .line 134
    sparse-switch p0, :sswitch_data_14

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 153
    :sswitch_5
    const-string v0, "video/mjpeg"

    return-object v0

    .line 138
    :sswitch_8
    const-string v0, "video/mp43"

    return-object v0

    .line 136
    :sswitch_b
    const-string v0, "video/mp42"

    return-object v0

    .line 142
    :sswitch_e
    const-string v0, "video/avc"

    return-object v0

    .line 150
    :sswitch_11
    const-string v0, "video/mp4v-es"

    return-object v0

    :sswitch_data_14
    .sparse-switch
        0x30355844 -> :sswitch_11
        0x31435641 -> :sswitch_e
        0x31637661 -> :sswitch_e
        0x3234504d -> :sswitch_b
        0x3334504d -> :sswitch_8
        0x34363248 -> :sswitch_e
        0x34504d46 -> :sswitch_11
        0x44495633 -> :sswitch_11
        0x44495658 -> :sswitch_11
        0x47504a4d -> :sswitch_5
        0x58564944 -> :sswitch_11
        0x64697678 -> :sswitch_11
        0x67706a6d -> :sswitch_5
        0x78766964 -> :sswitch_11
    .end sparse-switch
.end method

.method private static getMimeTypeFromTag(I)Ljava/lang/String;
    .registers 2
    .param p0, "tag"    # I

    .line 116
    sparse-switch p0, :sswitch_data_14

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 126
    :sswitch_5
    const-string v0, "audio/vnd.dts"

    return-object v0

    .line 124
    :sswitch_8
    const-string v0, "audio/ac3"

    return-object v0

    .line 122
    :sswitch_b
    const-string v0, "audio/mp4a-latm"

    return-object v0

    .line 120
    :sswitch_e
    const-string v0, "audio/mpeg"

    return-object v0

    .line 118
    :sswitch_11
    const-string v0, "audio/raw"

    return-object v0

    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_11
        0x55 -> :sswitch_e
        0xff -> :sswitch_b
        0x2000 -> :sswitch_8
        0x2001 -> :sswitch_5
    .end sparse-switch
.end method

.method private static parseBitmapInfoHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    .registers 8
    .param p0, "body"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 66
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    .line 68
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    .line 69
    .local v2, "height":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    .line 71
    .local v0, "compression":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->getMimeTypeFromCompression(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "mimeType":Ljava/lang/String;
    if-nez v3, :cond_33

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring track with unsupported compression "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StreamFormatChunk"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v4, 0x0

    return-object v4

    .line 76
    :cond_33
    new-instance v4, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 77
    .local v4, "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 78
    new-instance v5, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;-><init>(Lcom/google/android/exoplayer2/Format;)V

    return-object v5
.end method

.method public static parseFrom(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    .registers 4
    .param p0, "trackType"    # I
    .param p1, "body"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 41
    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    .line 42
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->parseBitmapInfoHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    move-result-object v0

    return-object v0

    .line 43
    :cond_8
    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    .line 44
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->parseWaveFormatEx(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    move-result-object v0

    return-object v0

    .line 46
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring strf box for unsupported track type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v1, "StreamFormatChunk"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseWaveFormatEx(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    .registers 12
    .param p0, "body"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 85
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    .line 86
    .local v0, "formatTag":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->getMimeTypeFromTag(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "mimeType":Ljava/lang/String;
    if-nez v1, :cond_24

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring track with unsupported format tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StreamFormatChunk"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v2, 0x0

    return-object v2

    .line 91
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v2

    .line 92
    .local v2, "channelCount":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    .line 93
    .local v3, "samplesPerSecond":I
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 95
    .local v4, "bitsPerSample":I
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v5

    .line 96
    .local v5, "pcmEncoding":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v6

    .line 97
    .local v6, "cbSize":I
    new-array v7, v6, [B

    .line 98
    .local v7, "codecData":[B
    const/4 v8, 0x0

    array-length v9, v7

    invoke-virtual {p0, v7, v8, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 100
    new-instance v8, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 101
    .local v8, "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    nop

    .line 102
    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    .line 103
    invoke-virtual {v9, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    .line 104
    invoke-virtual {v9, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 105
    const-string v9, "audio/raw"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    if-eqz v5, :cond_61

    .line 106
    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 108
    :cond_61
    const-string v9, "audio/mp4a-latm"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_73

    array-length v9, v7

    if-lez v9, :cond_73

    .line 109
    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 111
    :cond_73
    new-instance v9, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;-><init>(Lcom/google/android/exoplayer2/Format;)V

    return-object v9
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 61
    const v0, 0x66727473

    return v0
.end method
