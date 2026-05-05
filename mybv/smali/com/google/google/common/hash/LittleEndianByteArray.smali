.class final Lcom/google/common/hash/LittleEndianByteArray;
.super Ljava/lang/Object;
.source "LittleEndianByteArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/LittleEndianByteArray$1;,
        Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;,
        Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;,
        Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 27
    const-class v2, Lcom/google/common/hash/LittleEndianByteArray;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_34

    const/4 v2, 0x1

    :goto_9
    sput-boolean v2, Lcom/google/common/hash/LittleEndianByteArray;->$assertionsDisabled:Z

    .line 234
    sget-object v1, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->INSTANCE:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 246
    .local v1, "theGetter":Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;
    :try_start_d
    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "arch":Ljava/lang/String;
    const-string v2, "amd64"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "aarch64"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 248
    :cond_23
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    sget-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->UNSAFE_LITTLE_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_31} :catch_39

    .line 256
    .end local v0    # "arch":Ljava/lang/String;
    :cond_31
    :goto_31
    sput-object v1, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    .line 257
    return-void

    .line 27
    .end local v1    # "theGetter":Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;
    :cond_34
    const/4 v2, 0x0

    goto :goto_9

    .line 248
    .restart local v0    # "arch":Ljava/lang/String;
    .restart local v1    # "theGetter":Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;
    :cond_36
    :try_start_36
    sget-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->UNSAFE_BIG_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_38} :catch_39

    goto :goto_31

    .line 253
    .end local v0    # "arch":Ljava/lang/String;
    :catch_39
    move-exception v2

    goto :goto_31
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static load32([BI)I
    .registers 4
    .param p0, "source"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 94
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static load64([BI)J
    .registers 4
    .param p0, "input"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 42
    sget-boolean v0, Lcom/google/common/hash/LittleEndianByteArray;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    array-length v0, p0

    add-int/lit8 v1, p1, 0x8

    if-ge v0, v1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_f
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    invoke-interface {v0, p0, p1}, Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;->getLongLittleEndian([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static load64Safely([BII)J
    .registers 11
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 58
    const-wide/16 v2, 0x0

    .line 63
    .local v2, "result":J
    const/16 v4, 0x8

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 64
    .local v1, "limit":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_1a

    .line 66
    add-int v4, p1, v0

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 68
    :cond_1a
    return-wide v2
.end method

.method static store64([BIJ)V
    .registers 6
    .param p0, "sink"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .prologue
    .line 80
    sget-boolean v0, Lcom/google/common/hash/LittleEndianByteArray;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    if-ltz p1, :cond_b

    add-int/lit8 v0, p1, 0x8

    array-length v1, p0

    if-le v0, v1, :cond_11

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_11
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;->putLongLittleEndian([BIJ)V

    .line 83
    return-void
.end method

.method static usingUnsafe()Z
    .registers 1

    .prologue
    .line 106
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray;->byteArray:Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;

    instance-of v0, v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    return v0
.end method
