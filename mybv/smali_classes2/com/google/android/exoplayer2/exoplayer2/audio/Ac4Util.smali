.class public final Lcom/google/android/exoplayer2/audio/Ac4Util;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AC40_SYNCWORD:I = 0xac40

.field public static final AC41_SYNCWORD:I = 0xac41

.field private static final CHANNEL_COUNT_2:I = 0x2

.field public static final HEADER_SIZE_FOR_PARSER:I = 0x10

.field public static final MAX_RATE_BYTES_PER_SECOND:I = 0x52080

.field private static final SAMPLE_COUNT:[I

.field public static final SAMPLE_HEADER_SIZE:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 86
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac4Util;->SAMPLE_COUNT:[I

    return-void

    :array_a
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAc4SampleHeader(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 5
    .param p0, "size"    # I
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 233
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 234
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 235
    .local v0, "data":[B
    const/4 v1, 0x0

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    .line 236
    const/4 v1, 0x1

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    .line 237
    const/4 v1, 0x2

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 238
    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 239
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 240
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 241
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 242
    return-void
.end method

.method public static parseAc4AnnexEFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 7
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    shr-int/lit8 v1, v1, 0x5

    if-ne v1, v0, :cond_12

    const v0, 0xbb80

    goto :goto_15

    :cond_12
    const v0, 0xac44

    .line 118
    .local v0, "sampleRate":I
    :goto_15
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 119
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 120
    const-string v2, "audio/ac4"

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 121
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 124
    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 118
    return-object v1
.end method

.method public static parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 223
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 224
    .local v0, "bufferBytes":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 225
    .local v1, "position":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 226
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/audio/Ac4Util;->parseAc4SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    return v2
.end method

.method public static parseAc4SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;
    .registers 18
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 136
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 137
    .local v1, "headerSize":I
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 138
    .local v3, "syncWord":I
    const/4 v4, 0x2

    add-int/2addr v1, v4

    .line 139
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 140
    .local v2, "frameSize":I
    add-int/2addr v1, v4

    .line 141
    const v5, 0xffff

    if-ne v2, v5, :cond_1d

    .line 142
    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 143
    add-int/lit8 v1, v1, 0x3

    .line 145
    :cond_1d
    add-int/2addr v2, v1

    .line 146
    const v5, 0xac41

    if-ne v3, v5, :cond_25

    .line 147
    add-int/lit8 v2, v2, 0x2

    .line 149
    :cond_25
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 150
    .local v5, "bitstreamVersion":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_33

    .line 151
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/audio/Ac4Util;->readVariableBits(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)I

    move-result v7

    add-int/2addr v5, v7

    move v12, v5

    goto :goto_34

    .line 150
    :cond_33
    move v12, v5

    .line 153
    .end local v5    # "bitstreamVersion":I
    .local v12, "bitstreamVersion":I
    :goto_34
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 154
    .local v13, "sequenceCounter":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 155
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-lez v5, :cond_49

    .line 156
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 159
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const v5, 0xbb80

    const v7, 0xac44

    if-eqz v4, :cond_59

    const v4, 0xbb80

    goto :goto_5c

    :cond_59
    const v4, 0xac44

    .line 160
    .local v4, "sampleRate":I
    :goto_5c
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 161
    .local v14, "frameRateIndex":I
    const/4 v8, 0x0

    .line 162
    .local v8, "sampleCount":I
    if-ne v4, v7, :cond_6e

    const/16 v7, 0xd

    if-ne v14, v7, :cond_6e

    .line 163
    sget-object v5, Lcom/google/android/exoplayer2/audio/Ac4Util;->SAMPLE_COUNT:[I

    aget v8, v5, v14

    move v15, v8

    goto :goto_9c

    .line 164
    :cond_6e
    if-ne v4, v5, :cond_9b

    sget-object v5, Lcom/google/android/exoplayer2/audio/Ac4Util;->SAMPLE_COUNT:[I

    array-length v7, v5

    if-ge v14, v7, :cond_9b

    .line 165
    aget v8, v5, v14

    .line 166
    rem-int/lit8 v5, v13, 0x5

    const/16 v7, 0xb

    const/16 v9, 0x8

    packed-switch v5, :pswitch_data_aa

    goto :goto_9b

    .line 179
    :pswitch_81
    if-eq v14, v6, :cond_87

    if-eq v14, v9, :cond_87

    if-ne v14, v7, :cond_9b

    .line 180
    :cond_87
    add-int/lit8 v8, v8, 0x1

    move v15, v8

    goto :goto_9c

    .line 174
    :pswitch_8b
    if-eq v14, v9, :cond_8f

    if-ne v14, v7, :cond_9b

    .line 175
    :cond_8f
    add-int/lit8 v8, v8, 0x1

    move v15, v8

    goto :goto_9c

    .line 169
    :pswitch_93
    if-eq v14, v6, :cond_97

    if-ne v14, v9, :cond_9b

    .line 170
    :cond_97
    add-int/lit8 v8, v8, 0x1

    move v15, v8

    goto :goto_9c

    .line 187
    :cond_9b
    :goto_9b
    move v15, v8

    .end local v8    # "sampleCount":I
    .local v15, "sampleCount":I
    :goto_9c
    new-instance v16, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;

    const/4 v7, 0x2

    const/4 v11, 0x0

    move-object/from16 v5, v16

    move v6, v12

    move v8, v4

    move v9, v2

    move v10, v15

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;-><init>(IIIIILcom/google/android/exoplayer2/audio/Ac4Util$1;)V

    return-object v16

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_93
        :pswitch_8b
        :pswitch_93
        :pswitch_81
    .end packed-switch
.end method

.method public static parseAc4SyncframeSize([BI)I
    .registers 6
    .param p0, "data"    # [B
    .param p1, "syncword"    # I

    .line 198
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_6

    .line 199
    const/4 v0, -0x1

    return v0

    .line 201
    :cond_6
    const/4 v0, 0x2

    .line 202
    .local v0, "headerSize":I
    const/4 v1, 0x2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 203
    .local v2, "frameSize":I
    add-int/2addr v0, v1

    .line 204
    const v1, 0xffff

    if-ne v2, v1, :cond_32

    .line 205
    const/4 v1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    const/4 v3, 0x5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x6

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v2, v1, v3

    .line 206
    add-int/lit8 v0, v0, 0x3

    .line 208
    :cond_32
    const v1, 0xac41

    if-ne p1, v1, :cond_39

    .line 209
    add-int/lit8 v0, v0, 0x2

    .line 211
    :cond_39
    add-int/2addr v2, v0

    .line 212
    return v2
.end method

.method private static readVariableBits(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)I
    .registers 4
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "bitsPerRead"    # I

    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "value":I
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_e

    .line 249
    nop

    .line 254
    return v0

    .line 251
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 252
    shl-int/2addr v0, p1

    goto :goto_1
.end method
