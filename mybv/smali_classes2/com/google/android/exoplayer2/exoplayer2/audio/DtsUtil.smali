.class public final Lcom/google/android/exoplayer2/audio/DtsUtil;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CHANNELS_BY_AMODE:[I

.field public static final DTS_HD_MAX_RATE_BYTES_PER_SECOND:I = 0x225510

.field public static final DTS_MAX_RATE_BYTES_PER_SECOND:I = 0x2ee00

.field private static final FIRST_BYTE_14B_BE:B = 0x1ft

.field private static final FIRST_BYTE_14B_LE:B = -0x1t

.field private static final FIRST_BYTE_BE:B = 0x7ft

.field private static final FIRST_BYTE_LE:B = -0x2t

.field private static final SAMPLE_RATE_BY_SFREQ:[I

.field private static final SYNC_EXT_SUB_LE:I = 0x25205864

.field private static final SYNC_FTOC_LE:I = -0xde4bec0

.field private static final SYNC_FTOC_NON_SYNC_LE:I = -0x17bd3b8f

.field private static final SYNC_VALUE_14B_BE:I = 0x1fffe800

.field private static final SYNC_VALUE_14B_LE:I = -0xe0ff18

.field private static final SYNC_VALUE_BE:I = 0x7ffe8001

.field private static final SYNC_VALUE_LE:I = -0x180fe80

.field private static final TWICE_BITRATE_KBPS_BY_RATE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 67
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_1a

    sput-object v1, Lcom/google/android/exoplayer2/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    .line 71
    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/google/android/exoplayer2/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    .line 77
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_62

    sput-object v0, Lcom/google/android/exoplayer2/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    return-void

    :array_1a
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_3e
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_62
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDtsFrameSize([B)I
    .registers 6
    .param p0, "data"    # [B

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "uses14BitPerWord":Z
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/4 v4, 0x4

    sparse-switch v1, :sswitch_data_70

    .line 222
    const/4 v1, 0x5

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xf0

    shr-int/2addr v2, v4

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .local v1, "fsize":I
    goto :goto_67

    .line 210
    .end local v1    # "fsize":I
    :sswitch_20
    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    const/16 v2, 0x8

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 211
    .restart local v1    # "fsize":I
    const/4 v0, 0x1

    .line 212
    goto :goto_67

    .line 217
    .end local v1    # "fsize":I
    :sswitch_39
    aget-byte v1, p0, v3

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    const/16 v2, 0x9

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 218
    .restart local v1    # "fsize":I
    const/4 v0, 0x1

    .line 219
    goto :goto_67

    .line 214
    .end local v1    # "fsize":I
    :sswitch_52
    aget-byte v1, p0, v4

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xf0

    shr-int/2addr v2, v4

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 215
    .restart local v1    # "fsize":I
    nop

    .line 226
    :goto_67
    if-eqz v0, :cond_6e

    mul-int/lit8 v2, v1, 0x10

    div-int/lit8 v2, v2, 0xe

    goto :goto_6f

    :cond_6e
    move v2, v1

    :goto_6f
    return v2

    :sswitch_data_70
    .sparse-switch
        -0x2 -> :sswitch_52
        -0x1 -> :sswitch_39
        0x1f -> :sswitch_20
    .end sparse-switch
.end method

.method private static getNormalizedFrameHeader([B)Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .registers 5
    .param p0, "frameHeader"    # [B

    .line 230
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_d

    .line 232
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    return-object v0

    .line 235
    :cond_d
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 236
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/DtsUtil;->isLittleEndianFrameHeader([B)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 238
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2d

    .line 239
    aget-byte v2, p0, v1

    .line 240
    .local v2, "temp":B
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, p0, v1

    .line 241
    add-int/lit8 v3, v1, 0x1

    aput-byte v2, p0, v3

    .line 238
    .end local v2    # "temp":B
    add-int/lit8 v1, v1, 0x2

    goto :goto_19

    .line 244
    .end local v1    # "i":I
    :cond_2d
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 245
    .local v1, "frameBits":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    aget-byte v0, p0, v0

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_53

    .line 247
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 248
    .local v0, "scratchBits":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    :goto_3d
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_53

    .line 249
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 250
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->putInt(II)V

    goto :goto_3d

    .line 253
    .end local v0    # "scratchBits":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    :cond_53
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([B)V

    .line 254
    return-object v1
.end method

.method private static isLittleEndianFrameHeader([B)Z
    .registers 4
    .param p0, "frameHeader"    # [B

    .line 258
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_b

    aget-byte v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static isSyncWord(I)Z
    .registers 2
    .param p0, "word"    # I

    .line 91
    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_17

    const v0, -0x180fe80

    if-eq p0, v0, :cond_17

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_17

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v2, -0xde4bec0

    if-eq v1, v2, :cond_88

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v2, -0x17bd3b8f

    if-ne v1, v2, :cond_14

    goto :goto_88

    .line 173
    :cond_14
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v1, 0x25205864

    if-ne v0, v1, :cond_20

    .line 176
    const/16 v0, 0x1000

    return v0

    .line 180
    :cond_20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 182
    .local v0, "position":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    sparse-switch v1, :sswitch_data_8c

    .line 194
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x5

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xfc

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    .local v1, "nblks":I
    goto :goto_83

    .line 190
    .end local v1    # "nblks":I
    :sswitch_41
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v0, 0x6

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    .line 191
    .restart local v1    # "nblks":I
    goto :goto_83

    .line 187
    .end local v1    # "nblks":I
    :sswitch_57
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    .line 188
    .restart local v1    # "nblks":I
    goto :goto_83

    .line 184
    .end local v1    # "nblks":I
    :sswitch_6d
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xfc

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    .line 185
    .restart local v1    # "nblks":I
    nop

    .line 196
    :goto_83
    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v2, v2, 0x20

    return v2

    .line 172
    .end local v0    # "position":I
    .end local v1    # "nblks":I
    :cond_88
    :goto_88
    const/16 v0, 0x400

    return v0

    nop

    :sswitch_data_8c
    .sparse-switch
        -0x2 -> :sswitch_6d
        -0x1 -> :sswitch_57
        0x1f -> :sswitch_41
    .end sparse-switch
.end method

.method public static parseDtsAudioSampleCount([B)I
    .registers 6
    .param p0, "data"    # [B

    .line 144
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    sparse-switch v0, :sswitch_data_42

    .line 156
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xfc

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .local v0, "nblks":I
    goto :goto_3c

    .line 152
    .end local v0    # "nblks":I
    :sswitch_17
    aget-byte v0, p0, v3

    and-int/2addr v0, v1

    shl-int/2addr v0, v4

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x3c

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 153
    .restart local v0    # "nblks":I
    goto :goto_3c

    .line 149
    .end local v0    # "nblks":I
    :sswitch_23
    aget-byte v0, p0, v4

    and-int/2addr v0, v1

    shl-int/2addr v0, v4

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3c

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 150
    .restart local v0    # "nblks":I
    goto :goto_3c

    .line 146
    .end local v0    # "nblks":I
    :sswitch_2f
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xfc

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 147
    .restart local v0    # "nblks":I
    nop

    .line 158
    :goto_3c
    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x20

    return v1

    nop

    :sswitch_data_42
    .sparse-switch
        -0x2 -> :sswitch_2f
        -0x1 -> :sswitch_23
        0x1f -> :sswitch_17
    .end sparse-switch
.end method

.method public static parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 13
    .param p0, "frame"    # [B
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 112
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/DtsUtil;->getNormalizedFrameHeader([B)Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-result-object v0

    .line 113
    .local v0, "frameBits":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 114
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 115
    .local v1, "amode":I
    sget-object v2, Lcom/google/android/exoplayer2/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v2, v2, v1

    .line 116
    .local v2, "channelCount":I
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 117
    .local v3, "sfreq":I
    sget-object v4, Lcom/google/android/exoplayer2/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v4, v4, v3

    .line 118
    .local v4, "sampleRate":I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 120
    .local v5, "rate":I
    sget-object v6, Lcom/google/android/exoplayer2/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    array-length v7, v6

    const/4 v8, 0x2

    if-lt v5, v7, :cond_28

    .line 121
    const/4 v6, -0x1

    goto :goto_2d

    .line 122
    :cond_28
    aget v6, v6, v5

    mul-int/lit16 v6, v6, 0x3e8

    div-int/2addr v6, v8

    :goto_2d
    nop

    .line 123
    .local v6, "bitrate":I
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 124
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-lez v7, :cond_3b

    const/4 v7, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v7, 0x0

    :goto_3c
    add-int/2addr v2, v7

    .line 125
    new-instance v7, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 126
    invoke-virtual {v7, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    .line 127
    const-string v8, "audio/vnd.dts"

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    .line 128
    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    .line 129
    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    .line 130
    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    .line 131
    invoke-virtual {v7, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    .line 132
    invoke-virtual {v7, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    .line 133
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 125
    return-object v7
.end method
