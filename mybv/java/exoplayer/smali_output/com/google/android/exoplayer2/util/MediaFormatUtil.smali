.class public final Lcom/google/android/exoplayer2/util/MediaFormatUtil;
.super Ljava/lang/Object;
.source "MediaFormatUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final KEY_MAX_BIT_RATE:Ljava/lang/String; = "max-bitrate"

.field public static final KEY_PCM_ENCODING_EXTENDED:Ljava/lang/String; = "exo-pcm-encoding-int"

.field public static final KEY_PIXEL_WIDTH_HEIGHT_RATIO_FLOAT:Ljava/lang/String; = "exo-pixel-width-height-ratio-float"

.field private static final MAX_POWER_OF_TWO_INT:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFormatFromMediaFormat(Landroid/media/MediaFormat;)Lcom/google/android/exoplayer2/Format;
    .registers 6
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 80
    const-string v1, "mime"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 81
    const-string v1, "language"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 83
    const-string v1, "max-bitrate"

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 85
    const-string v1, "bitrate"

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 87
    const-string v1, "codecs-string"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 88
    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getFrameRate(Landroid/media/MediaFormat;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 90
    const-string v1, "width"

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 92
    const-string v1, "height"

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 95
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getPixelWidthHeightRatio(Landroid/media/MediaFormat;F)F

    move-result v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 97
    const-string v1, "max-input-size"

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 102
    const-string v1, "rotation-degrees"

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 104
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getColorInfo(Landroid/media/MediaFormat;Z)Lcom/google/android/exoplayer2/video/ColorInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 106
    const-string v1, "sample-rate"

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 109
    const-string v1, "channel-count"

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 114
    const-string v1, "pcm-encoding"

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 119
    .local v0, "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 120
    .local v1, "csdBuffers":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<[B>;"
    const/4 v2, 0x0

    .line 122
    .local v2, "csdIndex":I
    :goto_a2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csd-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 123
    .local v3, "csdByteBuffer":Ljava/nio/ByteBuffer;
    if-nez v3, :cond_c8

    .line 124
    nop

    .line 134
    .end local v3    # "csdByteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 136
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    return-object v3

    .line 126
    .restart local v3    # "csdByteBuffer":Ljava/nio/ByteBuffer;
    :cond_c8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    .line 127
    .local v4, "csdBufferData":[B
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 130
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 131
    nop

    .end local v3    # "csdByteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "csdBufferData":[B
    add-int/lit8 v2, v2, 0x1

    .line 132
    goto :goto_a2
.end method

.method public static createMediaFormatFromFormat(Lcom/google/android/exoplayer2/Format;)Landroid/media/MediaFormat;
    .registers 5
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 151
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 152
    .local v0, "result":Landroid/media/MediaFormat;
    const-string v1, "bitrate"

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 153
    const-string v1, "max-bitrate"

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 154
    const-string v1, "channel-count"

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 156
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/video/ColorInfo;)V

    .line 158
    const-string v1, "mime"

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "codecs-string"

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "frame-rate"

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 161
    const-string v1, "width"

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 162
    const-string v1, "height"

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 165
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetPcmEncoding(Landroid/media/MediaFormat;I)V

    .line 166
    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "max-input-size"

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 168
    const-string v1, "sample-rate"

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 169
    const-string v1, "caption-service-number"

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 170
    const-string v1, "rotation-degrees"

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 172
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 173
    .local v1, "selectionFlags":I
    and-int/lit8 v2, v1, 0x4

    const-string v3, "is-autoselect"

    invoke-static {v0, v3, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setBooleanAsInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 175
    and-int/lit8 v2, v1, 0x1

    const-string v3, "is-default"

    invoke-static {v0, v3, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setBooleanAsInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 176
    and-int/lit8 v2, v1, 0x2

    const-string v3, "is-forced-subtitle"

    invoke-static {v0, v3, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setBooleanAsInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 179
    const-string v2, "encoder-delay"

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 180
    const-string v2, "encoder-padding"

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 182
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetPixelAspectRatio(Landroid/media/MediaFormat;F)V

    .line 183
    return-object v0
.end method

.method public static getArray(Ljava/nio/ByteBuffer;)[B
    .registers 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 373
    .local v0, "array":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 374
    return-object v0
.end method

.method public static getColorInfo(Landroid/media/MediaFormat;)Lcom/google/android/exoplayer2/video/ColorInfo;
    .registers 2
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 277
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getColorInfo(Landroid/media/MediaFormat;Z)Lcom/google/android/exoplayer2/video/ColorInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getColorInfo(Landroid/media/MediaFormat;Z)Lcom/google/android/exoplayer2/video/ColorInfo;
    .registers 10
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "allowInvalidValues"    # Z

    .line 284
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    .line 286
    return-object v2

    .line 288
    :cond_8
    nop

    .line 289
    const-string v0, "color-standard"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    .line 291
    .local v0, "colorSpace":I
    nop

    .line 292
    const-string v3, "color-range"

    invoke-static {p0, v3, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    .line 293
    .local v3, "colorRange":I
    nop

    .line 294
    const-string v4, "color-transfer"

    invoke-static {p0, v4, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v4

    .line 297
    .local v4, "colorTransfer":I
    const-string v5, "hdr-static-info"

    invoke-virtual {p0, v5}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 300
    .local v5, "hdrStaticInfoByteBuffer":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_2b

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->getArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    goto :goto_2c

    :cond_2b
    move-object v6, v2

    .line 302
    .local v6, "hdrStaticInfo":[B
    :goto_2c
    if-nez p1, :cond_43

    .line 305
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->isValidColorSpace(I)Z

    move-result v7

    if-nez v7, :cond_35

    .line 306
    const/4 v0, -0x1

    .line 308
    :cond_35
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->isValidColorRange(I)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 309
    const/4 v3, -0x1

    .line 311
    :cond_3c
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->isValidColorTransfer(I)Z

    move-result v7

    if-nez v7, :cond_43

    .line 312
    const/4 v4, -0x1

    .line 316
    :cond_43
    if-ne v0, v1, :cond_4d

    if-ne v3, v1, :cond_4d

    if-ne v4, v1, :cond_4d

    if-eqz v6, :cond_4c

    goto :goto_4d

    .line 327
    :cond_4c
    return-object v2

    .line 320
    :cond_4d
    :goto_4d
    new-instance v1, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;-><init>()V

    .line 321
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->setColorSpace(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    move-result-object v1

    .line 322
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->setColorRange(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    move-result-object v1

    .line 323
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->setColorTransfer(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    move-result-object v1

    .line 324
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->setHdrStaticInfo([B)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->build()Lcom/google/android/exoplayer2/video/ColorInfo;

    move-result-object v1

    .line 320
    return-object v1
.end method

.method public static getFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)F
    .registers 4
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 337
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_c

    :cond_b
    move v0, p2

    :goto_c
    return v0
.end method

.method private static getFrameRate(Landroid/media/MediaFormat;F)F
    .registers 5
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "defaultValue"    # F

    .line 347
    move v0, p1

    .line 348
    .local v0, "frameRate":F
    const-string v1, "frame-rate"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 350
    :try_start_9
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_d} :catch_f

    move v0, v1

    .line 353
    goto :goto_15

    .line 351
    :catch_f
    move-exception v2

    .line 352
    .local v2, "ex":Ljava/lang/ClassCastException;
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-float v0, v1

    .line 355
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    :cond_15
    :goto_15
    return v0
.end method

.method public static getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .registers 4
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 332
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    :cond_b
    move v0, p2

    :goto_c
    return v0
.end method

.method private static getPixelWidthHeightRatio(Landroid/media/MediaFormat;F)F
    .registers 5
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "defaultValue"    # F

    .line 362
    const-string v0, "sar-width"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 363
    const-string v1, "sar-height"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 364
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    .line 365
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 364
    return v0

    .line 368
    :cond_1c
    return p1
.end method

.method public static getTimeLapseFrameRate(Landroid/media/MediaFormat;)Ljava/lang/Integer;
    .registers 3
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 390
    const-string v0, "time-lapse-enable"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 391
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1f

    .line 392
    const-string v0, "time-lapse-fps"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 393
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 395
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isAudioFormat(Landroid/media/MediaFormat;)Z
    .registers 2
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 384
    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidColorRange(I)Z
    .registers 3
    .param p0, "colorRange"    # I

    .line 473
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_b

    if-eq p0, v1, :cond_b

    const/4 v0, -0x1

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_b
    return v1
.end method

.method private static isValidColorSpace(I)Z
    .registers 3
    .param p0, "colorSpace"    # I

    .line 464
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_e

    if-eq p0, v1, :cond_e

    const/4 v0, 0x6

    if-eq p0, v0, :cond_e

    const/4 v0, -0x1

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_e
    return v1
.end method

.method private static isValidColorTransfer(I)Z
    .registers 3
    .param p0, "colorTransfer"    # I

    .line 483
    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v1, 0x3

    if-eq p0, v1, :cond_11

    const/4 v1, 0x6

    if-eq p0, v1, :cond_11

    const/4 v1, 0x7

    if-eq p0, v1, :cond_11

    const/4 v1, -0x1

    if-ne p0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :cond_11
    :goto_11
    return v0
.end method

.method public static isVideoFormat(Landroid/media/MediaFormat;)Z
    .registers 2
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 379
    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static maybeSetByteBuffer(Landroid/media/MediaFormat;Ljava/lang/String;[B)V
    .registers 4
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 247
    if-eqz p2, :cond_9

    .line 248
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 250
    :cond_9
    return-void
.end method

.method public static maybeSetColorInfo(Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/video/ColorInfo;)V
    .registers 4
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "colorInfo"    # Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 260
    if-eqz p1, :cond_1e

    .line 261
    const-string v0, "color-transfer"

    iget v1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 262
    const-string v0, "color-standard"

    iget v1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 263
    const-string v0, "color-range"

    iget v1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 264
    const-string v0, "hdr-static-info"

    iget-object v1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetByteBuffer(Landroid/media/MediaFormat;Ljava/lang/String;[B)V

    .line 266
    :cond_1e
    return-void
.end method

.method public static maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .registers 4
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 234
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_9

    .line 235
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 237
    :cond_9
    return-void
.end method

.method public static maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .registers 4
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 220
    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    .line 221
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 223
    :cond_6
    return-void
.end method

.method private static maybeSetPcmEncoding(Landroid/media/MediaFormat;I)V
    .registers 4
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "exoPcmEncoding"    # I

    .line 428
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 429
    return-void

    .line 432
    :cond_4
    const-string v0, "exo-pcm-encoding-int"

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 433
    sparse-switch p1, :sswitch_data_22

    .line 456
    return-void

    .line 447
    :sswitch_d
    const/16 v0, 0x16

    .line 448
    .local v0, "mediaFormatPcmEncoding":I
    goto :goto_1b

    .line 444
    .end local v0    # "mediaFormatPcmEncoding":I
    :sswitch_10
    const/16 v0, 0x15

    .line 445
    .restart local v0    # "mediaFormatPcmEncoding":I
    goto :goto_1b

    .line 441
    .end local v0    # "mediaFormatPcmEncoding":I
    :sswitch_13
    const/4 v0, 0x4

    .line 442
    .restart local v0    # "mediaFormatPcmEncoding":I
    goto :goto_1b

    .line 435
    .end local v0    # "mediaFormatPcmEncoding":I
    :sswitch_15
    const/4 v0, 0x3

    .line 436
    .restart local v0    # "mediaFormatPcmEncoding":I
    goto :goto_1b

    .line 438
    .end local v0    # "mediaFormatPcmEncoding":I
    :sswitch_17
    const/4 v0, 0x2

    .line 439
    .restart local v0    # "mediaFormatPcmEncoding":I
    goto :goto_1b

    .line 450
    .end local v0    # "mediaFormatPcmEncoding":I
    :sswitch_19
    const/4 v0, 0x0

    .line 451
    .restart local v0    # "mediaFormatPcmEncoding":I
    nop

    .line 458
    :goto_1b
    const-string v1, "pcm-encoding"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 459
    return-void

    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_19
        0x2 -> :sswitch_17
        0x3 -> :sswitch_15
        0x4 -> :sswitch_13
        0x20000000 -> :sswitch_10
        0x30000000 -> :sswitch_d
    .end sparse-switch
.end method

.method private static maybeSetPixelAspectRatio(Landroid/media/MediaFormat;F)V
    .registers 6
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "pixelWidthHeightRatio"    # F

    .line 409
    const-string v0, "exo-pixel-width-height-ratio-float"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 410
    const/4 v0, 0x1

    .line 411
    .local v0, "pixelAspectRatioWidth":I
    const/4 v1, 0x1

    .line 414
    .local v1, "pixelAspectRatioHeight":I
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v2

    if-gez v3, :cond_14

    .line 415
    const/high16 v1, 0x40000000    # 2.0f

    .line 416
    int-to-float v2, v1

    mul-float v2, v2, p1

    float-to-int v0, v2

    goto :goto_1d

    .line 417
    :cond_14
    cmpl-float v2, p1, v2

    if-lez v2, :cond_1d

    .line 418
    const/high16 v0, 0x40000000    # 2.0f

    .line 419
    int-to-float v2, v0

    div-float/2addr v2, p1

    float-to-int v1, v2

    .line 421
    :cond_1d
    :goto_1d
    const-string v2, "sar-width"

    invoke-virtual {p0, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 422
    const-string v2, "sar-height"

    invoke-virtual {p0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 423
    return-void
.end method

.method public static maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 194
    if-eqz p2, :cond_5

    .line 195
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_5
    return-void
.end method

.method private static setBooleanAsInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .registers 4
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 402
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 403
    return-void
.end method

.method public static setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V
    .registers 5
    .param p0, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 206
    .local p1, "csdBuffers":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csd-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method
