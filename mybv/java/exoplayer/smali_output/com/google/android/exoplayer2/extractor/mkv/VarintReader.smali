.class final Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;
.super Ljava/lang/Object;
.source "VarintReader.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final STATE_BEGIN_READING:I = 0x0

.field private static final STATE_READ_CONTENTS:I = 0x1

.field private static final VARINT_LENGTH_MASKS:[J


# instance fields
.field private length:I

.field private final scratch:[B

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    return-void

    :array_a
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    .line 53
    return-void
.end method

.method public static assembleVarint([BIZ)J
    .registers 12
    .param p0, "varintBytes"    # [B
    .param p1, "varintLength"    # I
    .param p2, "removeLengthMask"    # Z

    .line 149
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    .line 150
    .local v0, "varint":J
    if-eqz p2, :cond_13

    .line 151
    sget-object v4, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    add-int/lit8 v5, p1, -0x1

    aget-wide v5, v4, v5

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr v0, v5

    .line 153
    :cond_13
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_14
    if-ge v4, p1, :cond_23

    .line 154
    const/16 v5, 0x8

    shl-long v5, v0, v5

    aget-byte v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    or-long v0, v5, v7

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 156
    .end local v4    # "i":I
    :cond_23
    return-wide v0
.end method

.method public static parseUnsignedVarintLength(I)I
    .registers 8
    .param p0, "firstByte"    # I

    .line 129
    const/4 v0, -0x1

    .line 130
    .local v0, "varIntLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    array-length v3, v2

    if-ge v1, v3, :cond_17

    .line 131
    aget-wide v3, v2, v1

    int-to-long v5, p0

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-eqz v2, :cond_14

    .line 132
    add-int/lit8 v0, v1, 0x1

    .line 133
    goto :goto_17

    .line 130
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 136
    .end local v1    # "i":I
    :cond_17
    :goto_17
    return v0
.end method


# virtual methods
.method public getLastLength()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    return v0
.end method

.method public readUnsignedVarint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J
    .registers 10
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "allowEndOfInput"    # Z
    .param p3, "removeLengthMask"    # Z
    .param p4, "maximumAllowedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2b

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_11

    .line 92
    const-wide/16 v0, -0x1

    return-wide v0

    .line 94
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 95
    .local v0, "firstByte":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    .line 96
    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    .line 99
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    goto :goto_2b

    .line 97
    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    .end local v0    # "firstByte":I
    :cond_2b
    :goto_2b
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    if-le v0, p4, :cond_34

    .line 103
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    .line 104
    const-wide/16 v0, -0x2

    return-wide v0

    .line 107
    :cond_34
    if-eq v0, v2, :cond_3c

    .line 109
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    sub-int/2addr v0, v2

    invoke-interface {p1, v3, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 112
    :cond_3c
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    invoke-static {v0, v1, p3}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .registers 2

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    .line 58
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    .line 59
    return-void
.end method
