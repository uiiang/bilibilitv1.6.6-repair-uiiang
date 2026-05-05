.class public final Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "CodecSpecificDataUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXTENDED_PAR:I = 0xf

.field private static final HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

.field private static final NAL_START_CODE:[B

.field private static final RECTANGULAR:I = 0x0

.field private static final VISUAL_OBJECT_LAYER:I = 0x1

.field private static final VISUAL_OBJECT_LAYER_START:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    .line 39
    const-string v0, "B"

    const-string v1, "C"

    const-string v2, ""

    const-string v3, "A"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    return-void

    nop

    :array_18
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAvcCodecString(III)Ljava/lang/String;
    .registers 6
    .param p0, "profileIdc"    # I
    .param p1, "constraintsFlagsAndReservedZero2Bits"    # I
    .param p2, "levelIdc"    # I

    .line 181
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 182
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 181
    const-string v1, "avc1.%02X%02X%02X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildCea708InitializationData(Z)Ljava/util/List;
    .registers 4
    .param p0, "isWideAspectRatio"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [B

    if-eqz p0, :cond_9

    aput-byte v1, v2, v0

    goto :goto_b

    :cond_9
    aput-byte v0, v2, v0

    :goto_b
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static buildHevcCodecString(IZII[II)Ljava/lang/String;
    .registers 13
    .param p0, "generalProfileSpace"    # I
    .param p1, "generalTierFlag"    # Z
    .param p2, "generalProfileIdc"    # I
    .param p3, "generalProfileCompatibilityFlags"    # I
    .param p4, "constraintBytes"    # [I
    .param p5, "generalLevelIdc"    # I

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    aget-object v2, v2, p0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 198
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 199
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 200
    if-eqz p1, :cond_1f

    const/16 v2, 0x48

    goto :goto_21

    :cond_1f
    const/16 v2, 0x4c

    :goto_21
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 201
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    .line 195
    const-string v2, "hvc1.%s%d.%X.%c%d"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v1, p4

    .line 204
    .local v1, "trailingZeroIndex":I
    :goto_39
    if-lez v1, :cond_44

    add-int/lit8 v2, v1, -0x1

    aget v2, p4, v2

    if-nez v2, :cond_44

    .line 205
    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    .line 207
    :cond_44
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_45
    if-ge v2, v1, :cond_5d

    .line 208
    new-array v5, v4, [Ljava/lang/Object;

    aget v6, p4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, ".%02X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 210
    .end local v2    # "i":I
    :cond_5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static buildNalUnit([BII)[B
    .registers 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 222
    sget-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v0

    add-int/2addr v1, p2

    new-array v1, v1, [B

    .line 223
    .local v1, "nalUnit":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    array-length v0, v0

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    return-object v1
.end method

.method private static findNalStartCode([BI)I
    .registers 5
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 270
    array-length v0, p0

    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 271
    .local v0, "endIndex":I
    move v1, p1

    .local v1, "i":I
    :goto_6
    if-gt v1, v0, :cond_12

    .line 272
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 273
    return v1

    .line 271
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 276
    .end local v1    # "i":I
    :cond_12
    const/4 v1, -0x1

    return v1
.end method

.method public static getVideoResolutionFromMpeg4VideoConfig([B)Landroid/util/Pair;
    .registers 12
    .param p0, "videoSpecificConfig"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 100
    .local v1, "foundVOL":Z
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 101
    .local v2, "scratchBytes":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :goto_7
    add-int/lit8 v3, v0, 0x3

    array-length v4, p0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2c

    .line 102
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    if-ne v3, v6, :cond_21

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1f

    goto :goto_21

    .line 108
    :cond_1f
    const/4 v1, 0x1

    .line 109
    goto :goto_2c

    .line 104
    :cond_21
    :goto_21
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 106
    goto :goto_7

    .line 112
    :cond_2c
    :goto_2c
    const-string v3, "Invalid input: VOL not found."

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 114
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 116
    .local v3, "scratchBits":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    add-int/lit8 v4, v0, 0x4

    const/16 v7, 0x8

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 117
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 118
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 120
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v8, 0x4

    if-eqz v4, :cond_53

    .line 121
    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 122
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 125
    :cond_53
    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 126
    .local v4, "aspectRatioInfo":I
    const/16 v8, 0xf

    if-ne v4, v8, :cond_61

    .line 127
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 128
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 131
    :cond_61
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_78

    .line 132
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 133
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 134
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_78

    .line 135
    const/16 v7, 0x4f

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 139
    :cond_78
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 140
    .local v5, "videoObjectLayerShape":I
    const/4 v7, 0x0

    if-nez v5, :cond_81

    const/4 v8, 0x1

    goto :goto_82

    :cond_81
    const/4 v8, 0x0

    :goto_82
    const-string v9, "Only supports rectangular video object layer shape."

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 144
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 145
    const/16 v8, 0x10

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 146
    .local v8, "vopTimeIncrementResolution":I
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 148
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 149
    if-lez v8, :cond_a4

    const/4 v7, 0x1

    :cond_a4
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 150
    add-int/lit8 v8, v8, -0x1

    .line 151
    const/4 v7, 0x0

    .line 152
    .local v7, "numBitsToSkip":I
    :goto_aa
    if-lez v8, :cond_b1

    .line 153
    add-int/lit8 v7, v7, 0x1

    .line 154
    shr-int/lit8 v8, v8, 0x1

    goto :goto_aa

    .line 156
    :cond_b1
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 159
    .end local v7    # "numBitsToSkip":I
    :cond_b4
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 160
    const/16 v7, 0xd

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 161
    .local v9, "videoObjectLayerWidth":I
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 162
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 163
    .local v7, "videoObjectLayerHeight":I
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 165
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 167
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method private static isNalStartCode([BI)Z
    .registers 6
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 287
    array-length v0, p0

    sub-int/2addr v0, p1

    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_9

    .line 288
    return v2

    .line 290
    :cond_9
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_a
    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v1

    if-ge v0, v3, :cond_1b

    .line 291
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    aget-byte v1, v1, v0

    if-eq v3, v1, :cond_18

    .line 292
    return v2

    .line 290
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 295
    .end local v0    # "j":I
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public static parseAlacAudioSpecificConfig([B)Landroid/util/Pair;
    .registers 6
    .param p0, "audioSpecificConfig"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 57
    .local v0, "byteArray":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 58
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 59
    .local v1, "channelCount":I
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 60
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 61
    .local v2, "sampleRate":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method public static parseCea708InitializationData(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 84
    .local p0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    .line 85
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    if-ne v0, v2, :cond_1d

    .line 86
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    nop

    .line 84
    :goto_1e
    return v1
.end method

.method public static splitNalUnits([B)[[B
    .registers 10
    .param p0, "data"    # [B

    .line 241
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v1

    if-nez v1, :cond_9

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v1, "starts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 248
    .local v2, "nalUnitIndex":I
    :cond_f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    add-int/2addr v3, v2

    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->findNalStartCode([BI)I

    move-result v2

    .line 250
    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    .line 251
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [[B

    .line 252
    .local v3, "split":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5b

    .line 253
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 254
    .local v5, "startIndex":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_4d

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_4e

    :cond_4d
    array-length v6, p0

    .line 255
    .local v6, "endIndex":I
    :goto_4e
    sub-int v7, v6, v5

    new-array v7, v7, [B

    .line 256
    .local v7, "nal":[B
    array-length v8, v7

    invoke-static {p0, v5, v7, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    aput-object v7, v3, v4

    .line 252
    .end local v5    # "startIndex":I
    .end local v6    # "endIndex":I
    .end local v7    # "nal":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 259
    .end local v4    # "i":I
    :cond_5b
    return-object v3
.end method
