.class public final Lcom/google/android/exoplayer2/audio/AacUtil;
.super Ljava/lang/Object;
.source "AacUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AacUtil$Config;,
        Lcom/google/android/exoplayer2/audio/AacUtil$AacAudioObjectType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AAC_ELD_MAX_RATE_BYTES_PER_SECOND:I = 0x1f40

.field public static final AAC_HE_AUDIO_SAMPLE_COUNT:I = 0x800

.field public static final AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND:I = 0x3e80

.field public static final AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND:I = 0x1b58

.field public static final AAC_LC_AUDIO_SAMPLE_COUNT:I = 0x400

.field public static final AAC_LC_MAX_RATE_BYTES_PER_SECOND:I = 0x186a0

.field public static final AAC_LD_AUDIO_SAMPLE_COUNT:I = 0x200

.field public static final AAC_XHE_AUDIO_SAMPLE_COUNT:I = 0x400

.field public static final AAC_XHE_MAX_RATE_BYTES_PER_SECOND:I = 0x3e800

.field public static final AUDIO_OBJECT_TYPE_AAC_ELD:I = 0x17

.field public static final AUDIO_OBJECT_TYPE_AAC_ER_BSAC:I = 0x16

.field public static final AUDIO_OBJECT_TYPE_AAC_LC:I = 0x2

.field public static final AUDIO_OBJECT_TYPE_AAC_PS:I = 0x1d

.field public static final AUDIO_OBJECT_TYPE_AAC_SBR:I = 0x5

.field public static final AUDIO_OBJECT_TYPE_AAC_XHE:I = 0x2a

.field private static final AUDIO_OBJECT_TYPE_ESCAPE:I = 0x1f

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID:I = -0x1

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY:I = 0xf

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final CODECS_STRING_PREFIX:Ljava/lang/String; = "mp4a.40."

.field private static final TAG:Ljava/lang/String; = "AacUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 101
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    .line 122
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_32
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAacLcAudioSpecificConfig(II)[B
    .registers 7
    .param p0, "sampleRate"    # I
    .param p1, "channelCount"    # I

    .line 280
    const/4 v0, -0x1

    .line 281
    .local v0, "sampleRateIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    array-length v3, v2

    if-ge v1, v3, :cond_f

    .line 282
    aget v2, v2, v1

    if-ne p0, v2, :cond_c

    .line 283
    move v0, v1

    .line 281
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 286
    .end local v1    # "i":I
    :cond_f
    const/4 v1, -0x1

    .line 287
    .local v1, "channelConfig":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    sget-object v3, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1e

    .line 288
    aget v3, v3, v2

    if-ne p1, v3, :cond_1b

    .line 289
    move v1, v2

    .line 287
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 292
    .end local v2    # "i":I
    :cond_1e
    const/4 v2, -0x1

    if-eq p0, v2, :cond_29

    if-eq v1, v2, :cond_29

    .line 296
    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/audio/AacUtil;->buildAudioSpecificConfig(III)[B

    move-result-object v2

    return-object v2

    .line 293
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sample rate or number of channels: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4d

    :goto_4c
    throw v2

    :goto_4d
    goto :goto_4c
.end method

.method public static buildAudioSpecificConfig(III)[B
    .registers 6
    .param p0, "audioObjectType"    # I
    .param p1, "sampleRateIndex"    # I
    .param p2, "channelConfig"    # I

    .line 309
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 310
    .local v0, "specificConfig":[B
    shl-int/lit8 v1, p0, 0x3

    and-int/lit16 v1, v1, 0xf8

    shr-int/lit8 v2, p1, 0x1

    and-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 311
    shl-int/lit8 v1, p1, 0x7

    and-int/lit16 v1, v1, 0x80

    shl-int/lit8 v2, p2, 0x3

    and-int/lit8 v2, v2, 0x78

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 312
    return-object v0
.end method

.method private static getAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .registers 3
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 322
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 323
    .local v0, "audioObjectType":I
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_10

    .line 324
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x20

    .line 326
    :cond_10
    return v0
.end method

.method private static getSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .registers 5
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 340
    .local v0, "frequencyIndex":I
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1e

    .line 341
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    const/16 v3, 0x18

    if-lt v1, v3, :cond_17

    .line 345
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .local v1, "samplingFrequency":I
    goto :goto_26

    .line 342
    .end local v1    # "samplingFrequency":I
    :cond_17
    const-string v1, "AAC header insufficient data"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 346
    :cond_1e
    const/16 v1, 0xd

    if-ge v0, v1, :cond_27

    .line 347
    sget-object v1, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v1, v1, v0

    .line 352
    .restart local v1    # "samplingFrequency":I
    :goto_26
    return v1

    .line 349
    .end local v1    # "samplingFrequency":I
    :cond_27
    const-string v1, "AAC header wrong Sampling Frequency Index"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1
.end method

.method public static parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    .registers 9
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "forceReadToEnd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 208
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->getAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    .line 209
    .local v0, "audioObjectType":I
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->getSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    .line 210
    .local v1, "sampleRateHz":I
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 211
    .local v3, "channelConfiguration":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mp4a.40."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "codecs":Ljava/lang/String;
    const/4 v5, 0x5

    if-eq v0, v5, :cond_27

    const/16 v5, 0x1d

    if-ne v0, v5, :cond_37

    .line 219
    :cond_27
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->getSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    .line 220
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->getAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    .line 221
    const/16 v5, 0x16

    if-ne v0, v5, :cond_37

    .line 223
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 227
    :cond_37
    if-eqz p1, :cond_7f

    .line 228
    packed-switch v0, :pswitch_data_92

    .line 244
    :pswitch_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported audio object type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v2

    throw v2

    .line 241
    :pswitch_54
    invoke-static {p0, v0, v3}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseGaSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;II)V

    .line 242
    nop

    .line 247
    packed-switch v0, :pswitch_data_c4

    :pswitch_5b
    goto :goto_7f

    .line 254
    :pswitch_5c
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 255
    .local v5, "epConfig":I
    if-eq v5, v2, :cond_67

    const/4 v2, 0x3

    if-eq v5, v2, :cond_67

    goto :goto_7f

    .line 256
    :cond_67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported epConfig: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v2

    throw v2

    .line 265
    .end local v5    # "epConfig":I
    :cond_7f
    :goto_7f
    sget-object v2, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v2, v2, v3

    .line 266
    .local v2, "channelCount":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v2, v5, :cond_8d

    .line 269
    new-instance v5, Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    invoke-direct {v5, v1, v2, v4, v6}, Lcom/google/android/exoplayer2/audio/AacUtil$Config;-><init>(IILjava/lang/String;Lcom/google/android/exoplayer2/audio/AacUtil$1;)V

    return-object v5

    .line 267
    :cond_8d
    invoke-static {v6, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v5

    throw v5

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_3c
        :pswitch_54
        :pswitch_54
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_54
        :pswitch_3c
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x11
        :pswitch_5c
        :pswitch_5b
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
    .end packed-switch
.end method

.method public static parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    .registers 3
    .param p0, "audioSpecificConfig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v0

    return-object v0
.end method

.method private static parseGaSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;II)V
    .registers 9
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "audioObjectType"    # I
    .param p2, "channelConfiguration"    # I

    .line 357
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 358
    .local v0, "frameLengthFlag":Z
    if-eqz v0, :cond_d

    .line 359
    const-string v1, "AacUtil"

    const-string v2, "Unexpected frameLengthFlag = 1"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 362
    .local v1, "dependsOnCoreDecoder":Z
    if-eqz v1, :cond_18

    .line 363
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 365
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 366
    .local v2, "extensionFlag":Z
    if-eqz p2, :cond_4a

    .line 369
    const/4 v3, 0x6

    const/16 v4, 0x14

    const/4 v5, 0x3

    if-eq p1, v3, :cond_26

    if-ne p1, v4, :cond_29

    .line 370
    :cond_26
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 372
    :cond_29
    if-eqz v2, :cond_49

    .line 373
    const/16 v3, 0x16

    if-ne p1, v3, :cond_34

    .line 374
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 376
    :cond_34
    const/16 v3, 0x11

    if-eq p1, v3, :cond_42

    const/16 v3, 0x13

    if-eq p1, v3, :cond_42

    if-eq p1, v4, :cond_42

    const/16 v3, 0x17

    if-ne p1, v3, :cond_45

    .line 382
    :cond_42
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 384
    :cond_45
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 386
    :cond_49
    return-void

    .line 367
    :cond_4a
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method
