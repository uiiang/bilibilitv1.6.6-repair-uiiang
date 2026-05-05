.class public final Lcom/google/android/exoplayer2/extractor/ts/TsUtil;
.super Ljava/lang/Object;
.source "TsUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public static findSyncBytePosition([BII)I
    .registers 6
    .param p0, "data"    # [B
    .param p1, "startPosition"    # I
    .param p2, "limitPosition"    # I

    .line 69
    move v0, p1

    .line 70
    .local v0, "position":I
    :goto_1
    if-ge v0, p2, :cond_c

    aget-byte v1, p0, v0

    const/16 v2, 0x47

    if-eq v1, v2, :cond_c

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_c
    return v0
.end method

.method public static isStartOfTsPacket([BIII)Z
    .registers 9
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "searchPosition"    # I

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "consecutiveSyncByteCount":I
    const/4 v1, -0x4

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x4

    if-gt v1, v2, :cond_1e

    .line 52
    mul-int/lit16 v2, v1, 0xbc

    add-int/2addr v2, p3

    .line 53
    .local v2, "currentPosition":I
    if-lt v2, p1, :cond_1a

    if-ge v2, p2, :cond_1a

    aget-byte v3, p0, v2

    const/16 v4, 0x47

    if-eq v3, v4, :cond_13

    goto :goto_1a

    .line 57
    :cond_13
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1b

    .line 58
    const/4 v3, 0x1

    return v3

    .line 56
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    .line 51
    .end local v2    # "currentPosition":I
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 61
    .end local v1    # "i":I
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method public static readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J
    .registers 14
    .param p0, "packetBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "startOfPacket"    # I
    .param p2, "pcrPid"    # I

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x5

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v1, :cond_10

    .line 90
    return-wide v2

    .line 93
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 94
    .local v0, "tsPacketHeader":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1a

    .line 96
    return-wide v2

    .line 98
    :cond_1a
    const v1, 0x1fff00

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x8

    .line 99
    .local v1, "pid":I
    if-eq v1, p2, :cond_23

    .line 100
    return-wide v2

    .line 102
    :cond_23
    and-int/lit8 v4, v0, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    .line 103
    .local v4, "adaptationFieldExists":Z
    :goto_2c
    if-nez v4, :cond_2f

    .line 104
    return-wide v2

    .line 107
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 108
    .local v7, "adaptationFieldLength":I
    const/4 v8, 0x7

    if-lt v7, v8, :cond_56

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    if-lt v9, v8, :cond_56

    .line 109
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 110
    .local v8, "flags":I
    and-int/lit8 v9, v8, 0x10

    const/16 v10, 0x10

    if-ne v9, v10, :cond_47

    goto :goto_48

    :cond_47
    const/4 v5, 0x0

    .line 111
    .local v5, "pcrFlagSet":Z
    :goto_48
    if-eqz v5, :cond_56

    .line 112
    const/4 v2, 0x6

    new-array v2, v2, [B

    .line 113
    .local v2, "pcrBytes":[B
    array-length v3, v2

    invoke-virtual {p0, v2, v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 114
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->readPcrValueFromPcrBytes([B)J

    move-result-wide v9

    return-wide v9

    .line 117
    .end local v2    # "pcrBytes":[B
    .end local v5    # "pcrFlagSet":Z
    .end local v8    # "flags":I
    :cond_56
    return-wide v2
.end method

.method private static readPcrValueFromPcrBytes([B)J
    .registers 9
    .param p0, "pcrBytes"    # [B

    .line 126
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x19

    shl-long/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v7, 0x11

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    const/4 v5, 0x2

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v7, 0x9

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    shl-long v4, v5, v4

    or-long/2addr v0, v4

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/4 v4, 0x7

    shr-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method
