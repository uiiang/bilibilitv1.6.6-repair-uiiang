.class public final Lcom/google/android/exoplayer2/audio/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AC3_MAX_RATE_BYTES_PER_SECOND:I = 0x13880

.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field public static final E_AC3_MAX_RATE_BYTES_PER_SECOND:I = 0xbb800

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

.field public static final TRUEHD_MAX_RATE_BYTES_PER_SECOND:I = 0x2ebae4

.field public static final TRUEHD_RECHUNK_SAMPLE_COUNT:I = 0x10

.field public static final TRUEHD_SYNCFRAME_PREFIX_LENGTH:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 131
    const/4 v0, 0x3

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 133
    const v0, 0xac44

    const/16 v1, 0x7d00

    const v2, 0xbb80

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 135
    const/16 v0, 0x5622

    const/16 v1, 0x3e80

    const/16 v2, 0x5dc0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    .line 137
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 139
    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_52

    sput-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 144
    new-array v0, v0, [I

    fill-array-data v0, :array_7c

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    :array_3e
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_52
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_7c
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateEac3Bitrate(III)I
    .registers 5
    .param p0, "frameSize"    # I
    .param p1, "sampleRate"    # I
    .param p2, "audioBlocks"    # I

    .line 610
    mul-int v0, p0, p1

    mul-int/lit8 v1, p2, 0x20

    div-int/2addr v0, v1

    return v0
.end method

.method public static findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 535
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 536
    .local v0, "startIndex":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    .line 537
    .local v1, "endIndex":I
    move v2, v0

    .local v2, "i":I
    :goto_b
    if-gt v2, v1, :cond_20

    .line 539
    add-int/lit8 v3, v2, 0x4

    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/util/Util;->getBigEndianInt(Ljava/nio/ByteBuffer;I)I

    move-result v3

    and-int/lit8 v3, v3, -0x2

    const v4, -0x78d9046

    if-ne v3, v4, :cond_1d

    .line 540
    sub-int v3, v2, v0

    return v3

    .line 537
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 543
    .end local v2    # "i":I
    :cond_20
    const/4 v2, -0x1

    return v2
.end method

.method private static getAc3SyncframeSize(II)I
    .registers 6
    .param p0, "fscod"    # I
    .param p1, "frmsizecod"    # I

    .line 583
    div-int/lit8 v0, p1, 0x2

    .line 584
    .local v0, "halfFrmsizecod":I
    if-ltz p0, :cond_2e

    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v2, v1

    if-ge p0, v2, :cond_2e

    if-ltz p1, :cond_2e

    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v3, v2

    if-lt v0, v3, :cond_11

    goto :goto_2e

    .line 591
    :cond_11
    aget v1, v1, p0

    .line 592
    .local v1, "sampleRate":I
    const v3, 0xac44

    if-ne v1, v3, :cond_20

    .line 593
    aget v2, v2, v0

    rem-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    return v2

    .line 595
    :cond_20
    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v2, v2, v0

    .line 596
    .local v2, "bitrate":I
    const/16 v3, 0x7d00

    if-ne v1, v3, :cond_2b

    .line 597
    mul-int/lit8 v3, v2, 0x6

    return v3

    .line 599
    :cond_2b
    mul-int/lit8 v3, v2, 0x4

    return v3

    .line 589
    .end local v1    # "sampleRate":I
    .end local v2    # "bitrate":I
    :cond_2e
    :goto_2e
    const/4 v1, -0x1

    return v1
.end method

.method public static parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 12
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 162
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>()V

    .line 163
    .local v0, "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 165
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 166
    .local v1, "fscod":I
    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v2, v2, v1

    .line 167
    .local v2, "sampleRate":I
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 168
    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    aget v3, v3, v4

    .line 169
    .local v3, "channelCount":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_28

    .line 170
    add-int/lit8 v3, v3, 0x1

    .line 172
    :cond_28
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 173
    .local v4, "halfFrmsizecod":I
    sget-object v5, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v5, v5, v4

    mul-int/lit16 v5, v5, 0x3e8

    .line 175
    .local v5, "constantBitrate":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    .line 176
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 177
    new-instance v6, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 178
    invoke-virtual {v6, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 179
    const-string v7, "audio/ac3"

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 180
    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 181
    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 182
    invoke-virtual {v6, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 183
    invoke-virtual {v6, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 184
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 185
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 186
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 177
    return-object v6
.end method

.method public static parseAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 516
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    const/16 v2, 0xa

    if-le v0, v2, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 517
    .local v0, "isEac3":Z
    :goto_15
    if-eqz v0, :cond_3d

    .line 518
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v2, v2, 0x6

    .line 519
    .local v2, "fscod":I
    if-ne v2, v1, :cond_28

    goto :goto_36

    :cond_28
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v1, v1, 0x4

    .line 520
    .local v1, "numblkscod":I
    :goto_36
    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v3, v3, v1

    mul-int/lit16 v3, v3, 0x100

    return v3

    .line 522
    .end local v1    # "numblkscod":I
    .end local v2    # "fscod":I
    :cond_3d
    const/16 v1, 0x600

    return v1
.end method

.method public static parseAc3SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;
    .registers 32
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 259
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v1

    .line 260
    .local v1, "initialPosition":I
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 262
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0xa

    if-le v3, v5, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    .line 263
    .local v3, "isEac3":Z
    :goto_18
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 265
    const/4 v6, -0x1

    .line 273
    .local v6, "streamType":I
    const/16 v7, 0x8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v3, :cond_23a

    .line 275
    const/16 v11, 0x10

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 276
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    packed-switch v12, :pswitch_data_2b2

    .line 287
    const/4 v6, -0x1

    goto :goto_36

    .line 284
    :pswitch_30
    const/4 v6, 0x2

    .line 285
    goto :goto_36

    .line 281
    :pswitch_32
    const/4 v6, 0x1

    .line 282
    goto :goto_36

    .line 278
    :pswitch_34
    const/4 v6, 0x0

    .line 279
    nop

    .line 290
    :goto_36
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 291
    const/16 v12, 0xb

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    add-int/2addr v12, v4

    mul-int/lit8 v12, v12, 0x2

    .line 292
    .local v12, "frameSize":I
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 295
    .local v13, "fscod":I
    if-ne v13, v9, :cond_56

    .line 296
    const/4 v14, 0x3

    .line 297
    .local v14, "numblkscod":I
    sget-object v15, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v16

    aget v15, v15, v16

    .line 298
    .local v15, "sampleRate":I
    const/16 v16, 0x6

    move/from16 v8, v16

    .local v16, "audioBlocks":I
    goto :goto_64

    .line 300
    .end local v14    # "numblkscod":I
    .end local v15    # "sampleRate":I
    .end local v16    # "audioBlocks":I
    :cond_56
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 301
    .restart local v14    # "numblkscod":I
    sget-object v15, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v16, v15, v14

    .line 302
    .restart local v16    # "audioBlocks":I
    sget-object v15, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v15, v15, v13

    move/from16 v8, v16

    .line 304
    .end local v16    # "audioBlocks":I
    .local v8, "audioBlocks":I
    .restart local v15    # "sampleRate":I
    :goto_64
    mul-int/lit16 v10, v8, 0x100

    .line 305
    .local v10, "sampleCount":I
    invoke-static {v12, v15, v8}, Lcom/google/android/exoplayer2/audio/Ac3Util;->calculateEac3Bitrate(III)I

    move-result v18

    .line 306
    .local v18, "bitrate":I
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 307
    .local v11, "acmod":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v20

    .line 308
    .local v20, "lfeon":Z
    sget-object v21, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v21, v21, v11

    add-int v21, v21, v20

    .line 309
    .local v21, "channelCount":I
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_84

    .line 311
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 313
    :cond_84
    if-nez v11, :cond_92

    .line 314
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_92

    .line 316
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 319
    :cond_92
    if-ne v6, v4, :cond_9f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 320
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 322
    :cond_9f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1ce

    .line 323
    const/4 v5, 0x2

    if-le v11, v5, :cond_ab

    .line 324
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 326
    :cond_ab
    and-int/lit8 v17, v11, 0x1

    if-eqz v17, :cond_b6

    if-le v11, v5, :cond_b6

    .line 327
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_b7

    .line 326
    :cond_b6
    const/4 v5, 0x6

    .line 329
    :goto_b7
    and-int/lit8 v16, v11, 0x4

    if-eqz v16, :cond_be

    .line 330
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 332
    :cond_be
    if-eqz v20, :cond_c9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 333
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 335
    :cond_c9
    if-nez v6, :cond_1ce

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 337
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_d7

    .line 336
    :cond_d6
    const/4 v5, 0x6

    .line 339
    :goto_d7
    if-nez v11, :cond_e2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_e2

    .line 340
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 342
    :cond_e2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_eb

    .line 343
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 345
    :cond_eb
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 346
    .local v7, "mixdef":I
    if-ne v7, v4, :cond_f7

    .line 347
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_19a

    .line 348
    :cond_f7
    if-ne v7, v5, :cond_100

    .line 349
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_19a

    .line 350
    :cond_100
    if-ne v7, v9, :cond_19a

    .line 351
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 352
    .local v5, "mixdeflen":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v23

    if-eqz v23, :cond_169

    .line 353
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v23

    if-eqz v23, :cond_11a

    .line 355
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_11b

    .line 354
    :cond_11a
    const/4 v4, 0x4

    .line 357
    :goto_11b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_124

    .line 358
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 360
    :cond_124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_12d

    .line 361
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 363
    :cond_12d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_136

    .line 364
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 366
    :cond_136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_13f

    .line 367
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 369
    :cond_13f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_148

    .line 370
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 372
    :cond_148
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_151

    .line 373
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 375
    :cond_151
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_169

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_160

    .line 377
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 379
    :cond_160
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_169

    .line 380
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 384
    :cond_169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_18e

    .line 385
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_18b

    .line 387
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_188

    .line 389
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_190

    .line 388
    :cond_188
    const/16 v4, 0x8

    goto :goto_190

    .line 386
    :cond_18b
    const/16 v4, 0x8

    goto :goto_190

    .line 384
    :cond_18e
    const/16 v4, 0x8

    .line 393
    :goto_190
    add-int/lit8 v19, v5, 0x2

    mul-int/lit8 v9, v19, 0x8

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    .line 396
    .end local v5    # "mixdeflen":I
    :cond_19a
    :goto_19a
    const/4 v4, 0x2

    if-ge v11, v4, :cond_1b3

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/16 v5, 0xe

    if-eqz v4, :cond_1a8

    .line 398
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 400
    :cond_1a8
    if-nez v11, :cond_1b3

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 402
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 406
    :cond_1b3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1ce

    .line 407
    if-nez v14, :cond_1bf

    .line 408
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1ce

    .line 410
    :cond_1bf
    const/4 v4, 0x0

    .local v4, "blk":I
    :goto_1c0
    if-ge v4, v8, :cond_1ce

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1cb

    .line 412
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 410
    :cond_1cb
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c0

    .line 419
    .end local v4    # "blk":I
    .end local v7    # "mixdef":I
    :cond_1ce
    :goto_1ce
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_204

    .line 420
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 421
    const/4 v2, 0x2

    if-ne v11, v2, :cond_1de

    .line 422
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 424
    :cond_1de
    const/4 v4, 0x6

    if-lt v11, v4, :cond_1e4

    .line 425
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 427
    :cond_1e4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1f0

    .line 428
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1f2

    .line 427
    :cond_1f0
    const/16 v2, 0x8

    .line 430
    :goto_1f2
    if-nez v11, :cond_1fd

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1fd

    .line 431
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 433
    :cond_1fd
    const/4 v2, 0x3

    if-ge v13, v2, :cond_205

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    goto :goto_205

    .line 419
    :cond_204
    const/4 v2, 0x3

    .line 437
    :cond_205
    :goto_205
    if-nez v6, :cond_20c

    if-eq v14, v2, :cond_20c

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 440
    :cond_20c
    const/4 v4, 0x2

    if-ne v6, v4, :cond_21f

    if-eq v14, v2, :cond_21a

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_218

    goto :goto_21a

    :cond_218
    const/4 v2, 0x6

    goto :goto_220

    .line 442
    :cond_21a
    :goto_21a
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_220

    .line 440
    :cond_21f
    const/4 v2, 0x6

    .line 444
    :goto_220
    const-string v4, "audio/eac3"

    .line 445
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_239

    .line 446
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 447
    .local v2, "addbsil":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_239

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-ne v7, v5, :cond_239

    .line 448
    const-string v4, "audio/eac3-joc"

    .line 451
    .end local v2    # "addbsil":I
    .end local v8    # "audioBlocks":I
    .end local v13    # "fscod":I
    .end local v14    # "numblkscod":I
    :cond_239
    goto :goto_299

    .line 452
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v10    # "sampleCount":I
    .end local v11    # "acmod":I
    .end local v12    # "frameSize":I
    .end local v15    # "sampleRate":I
    .end local v18    # "bitrate":I
    .end local v20    # "lfeon":Z
    .end local v21    # "channelCount":I
    :cond_23a
    const-string v2, "audio/ac3"

    .line 453
    .local v2, "mimeType":Ljava/lang/String;
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 454
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 455
    .local v5, "fscod":I
    const/4 v4, 0x3

    if-ne v5, v4, :cond_24c

    .line 458
    const/4 v2, 0x0

    move-object v4, v2

    goto :goto_24d

    .line 455
    :cond_24c
    move-object v4, v2

    .line 460
    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local v4    # "mimeType":Ljava/lang/String;
    :goto_24d
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 461
    .local v2, "frmsizecod":I
    sget-object v7, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    div-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    mul-int/lit16 v7, v7, 0x3e8

    .line 462
    .local v7, "bitrate":I
    invoke-static {v5, v2}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v12

    .line 463
    .restart local v12    # "frameSize":I
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 464
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 465
    .restart local v11    # "acmod":I
    and-int/lit8 v8, v11, 0x1

    if-eqz v8, :cond_274

    const/4 v8, 0x1

    if-eq v11, v8, :cond_274

    .line 466
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_275

    .line 465
    :cond_274
    const/4 v8, 0x2

    .line 468
    :goto_275
    and-int/lit8 v9, v11, 0x4

    if-eqz v9, :cond_27c

    .line 469
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 471
    :cond_27c
    if-ne v11, v8, :cond_281

    .line 472
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 475
    :cond_281
    sget-object v8, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v9, v8

    if-ge v5, v9, :cond_289

    aget v8, v8, v5

    goto :goto_28a

    :cond_289
    const/4 v8, -0x1

    :goto_28a
    move v15, v8

    .line 476
    .restart local v15    # "sampleRate":I
    const/16 v10, 0x600

    .line 477
    .restart local v10    # "sampleCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v20

    .line 478
    .restart local v20    # "lfeon":Z
    sget-object v8, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v8, v8, v11

    add-int v21, v8, v20

    move/from16 v18, v7

    .line 480
    .end local v2    # "frmsizecod":I
    .end local v5    # "fscod":I
    .end local v7    # "bitrate":I
    .restart local v18    # "bitrate":I
    .restart local v21    # "channelCount":I
    :goto_299
    new-instance v2, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;

    const/16 v30, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move/from16 v24, v6

    move/from16 v25, v21

    move/from16 v26, v15

    move/from16 v27, v12

    move/from16 v28, v10

    move/from16 v29, v18

    invoke-direct/range {v22 .. v30}, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIIILcom/google/android/exoplayer2/audio/Ac3Util$1;)V

    return-object v2

    nop

    :pswitch_data_2b2
    .packed-switch 0x0
        :pswitch_34
        :pswitch_32
        :pswitch_30
    .end packed-switch
.end method

.method public static parseAc3SyncframeSize([B)I
    .registers 5
    .param p0, "data"    # [B

    .line 491
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_6

    .line 492
    const/4 v0, -0x1

    return v0

    .line 495
    :cond_6
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0xa

    if-le v0, v3, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 496
    .local v0, "isEac3":Z
    :goto_14
    if-eqz v0, :cond_27

    .line 497
    const/4 v1, 0x2

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x8

    .line 498
    .local v3, "frmsiz":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    .line 499
    .end local v3    # "frmsiz":I
    .local v2, "frmsiz":I
    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v3, v3, 0x2

    return v3

    .line 501
    .end local v2    # "frmsiz":I
    :cond_27
    const/4 v2, 0x4

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xc0

    shr-int/lit8 v1, v3, 0x6

    .line 502
    .local v1, "fscod":I
    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3f

    .line 503
    .local v2, "frmsizecod":I
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v3

    return v3
.end method

.method public static parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 14
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 201
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>()V

    .line 202
    .local v0, "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 204
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    .line 205
    .local v1, "peakBitrate":I
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 208
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 209
    .local v3, "fscod":I
    sget-object v4, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v4, v4, v3

    .line 210
    .local v4, "sampleRate":I
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 211
    sget-object v5, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    aget v5, v5, v6

    .line 212
    .local v5, "channelCount":I
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-eqz v7, :cond_33

    .line 213
    add-int/lit8 v5, v5, 0x1

    .line 217
    :cond_33
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 218
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 219
    .local v2, "numDepSub":I
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 220
    if-lez v2, :cond_4f

    .line 221
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 224
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-eqz v7, :cond_4c

    .line 225
    add-int/lit8 v5, v5, 0x2

    .line 227
    :cond_4c
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 230
    :cond_4f
    const-string v7, "audio/eac3"

    .line 231
    .local v7, "mimeType":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v8

    const/4 v9, 0x7

    if-le v8, v9, :cond_63

    .line 232
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 233
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    if-eqz v6, :cond_63

    .line 234
    const-string v7, "audio/eac3-joc"

    .line 238
    :cond_63
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    .line 239
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 240
    new-instance v6, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 241
    invoke-virtual {v6, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 242
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 243
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 244
    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 245
    invoke-virtual {v6, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 246
    invoke-virtual {v6, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 247
    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 248
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 240
    return-object v6
.end method

.method public static parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 578
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 579
    .local v0, "isMlp":Z
    :goto_14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    if-eqz v0, :cond_1e

    const/16 v2, 0x9

    goto :goto_20

    :cond_1e
    const/16 v2, 0x8

    :goto_20
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x7

    const/16 v2, 0x28

    shl-int v1, v2, v1

    return v1
.end method

.method public static parseTrueHdSyncframeAudioSampleCount([B)I
    .registers 6
    .param p0, "syncframe"    # [B

    .line 558
    const/4 v0, 0x4

    aget-byte v1, p0, v0

    const/4 v2, -0x8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3a

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_3a

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_3a

    const/4 v1, 0x7

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xfe

    const/16 v4, 0xba

    if-eq v2, v4, :cond_1f

    goto :goto_3a

    .line 564
    :cond_1f
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xbb

    if-ne v2, v4, :cond_28

    const/4 v3, 0x1

    :cond_28
    move v2, v3

    .line 565
    .local v2, "isMlp":Z
    if-eqz v2, :cond_2e

    const/16 v3, 0x9

    goto :goto_30

    :cond_2e
    const/16 v3, 0x8

    :goto_30
    aget-byte v3, p0, v3

    shr-int/lit8 v0, v3, 0x4

    and-int/2addr v0, v1

    const/16 v1, 0x28

    shl-int v0, v1, v0

    return v0

    .line 562
    .end local v2    # "isMlp":Z
    :cond_3a
    :goto_3a
    return v3
.end method
