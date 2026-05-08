.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV4_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 106
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->limit(I)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV4_SPLITTER:Lcom/google/common/base/Splitter;

    .line 107
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 108
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .registers 3
    .param p0, "addr"    # [B

    .prologue
    .line 320
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 321
    :catch_5
    move-exception v0

    .line 322
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .registers 2
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 897
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .registers 8
    .param p0, "hextets"    # [I

    .prologue
    .line 366
    const/4 v1, -0x1

    .line 367
    .local v1, "bestRunStart":I
    const/4 v0, -0x1

    .line 368
    .local v0, "bestRunLength":I
    const/4 v4, -0x1

    .line 369
    .local v4, "runStart":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_20

    .line 370
    array-length v5, p0

    if-ge v2, v5, :cond_16

    aget v5, p0, v2

    if-nez v5, :cond_16

    .line 371
    if-gez v4, :cond_13

    .line 372
    move v4, v2

    .line 369
    :cond_13
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 374
    :cond_16
    if-ltz v4, :cond_13

    .line 375
    sub-int v3, v2, v4

    .line 376
    .local v3, "runLength":I
    if-le v3, v0, :cond_1e

    .line 377
    move v1, v4

    .line 378
    move v0, v3

    .line 380
    :cond_1e
    const/4 v4, -0x1

    goto :goto_13

    .line 383
    .end local v3    # "runLength":I
    :cond_20
    const/4 v5, 0x2

    if-lt v0, v5, :cond_29

    .line 384
    add-int v5, v1, v0

    const/4 v6, -0x1

    invoke-static {p0, v1, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 386
    :cond_29
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 276
    const/16 v6, 0x3a

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 277
    .local v2, "lastColon":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "initialPart":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "dottedQuad":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    .line 280
    .local v4, "quad":[B
    if-nez v4, :cond_1b

    .line 281
    const/4 v6, 0x0

    .line 285
    :goto_1a
    return-object v6

    .line 283
    :cond_1b
    aget-byte v6, v4, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "penultimate":Ljava/lang/String;
    const/4 v6, 0x2

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "ultimate":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1a
.end method

.method public static decrement(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 5
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 938
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 939
    .local v0, "addr":[B
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 940
    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_13

    aget-byte v2, v0, v1

    if-nez v2, :cond_13

    .line 941
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 942
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 945
    :cond_13
    if-ltz v1, :cond_27

    const/4 v2, 0x1

    :goto_16
    const-string v3, "Decrementing %s would wrap."

    invoke-static {v2, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 947
    aget-byte v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 948
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2

    .line 945
    :cond_27
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 5
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 143
    .local v0, "addr":[B
    if-nez v0, :cond_13

    .line 144
    const-string v1, "\'%s\' is not an IP string literal."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 147
    :cond_13
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 5
    .param p0, "hostAddr"    # Ljava/lang/String;

    .prologue
    .line 462
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 463
    .local v0, "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_13

    .line 464
    const-string v1, "Not a valid URI IP literal: \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 467
    :cond_13
    return-object v0
.end method

.method private static forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 6
    .param p0, "hostAddr"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 472
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v3, "["

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, "]"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 478
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "ipString":Ljava/lang/String;
    const/16 v1, 0x10

    .line 486
    .local v1, "expectBytes":I
    :goto_20
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 487
    .local v0, "addr":[B
    if-eqz v0, :cond_29

    array-length v3, v0

    if-eq v3, v1, :cond_2e

    .line 488
    :cond_29
    const/4 v3, 0x0

    .line 491
    :goto_2a
    return-object v3

    .line 481
    .end local v0    # "addr":[B
    .end local v1    # "expectBytes":I
    .end local v2    # "ipString":Ljava/lang/String;
    :cond_2b
    move-object v2, p0

    .line 482
    .restart local v2    # "ipString":Ljava/lang/String;
    const/4 v1, 0x4

    .restart local v1    # "expectBytes":I
    goto :goto_20

    .line 491
    .restart local v0    # "addr":[B
    :cond_2e
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    goto :goto_2a
.end method

.method private static varargs formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 994
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .registers 2
    .param p0, "address"    # I

    .prologue
    .line 907
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .registers 4
    .param p0, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 921
    array-length v2, p0

    new-array v1, v2, [B

    .line 922
    .local v1, "reversed":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_12

    .line 923
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 922
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 925
    :cond_12
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 578
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a 6to4 address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 580
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .registers 11
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    const/16 v9, 0xf

    .line 834
    instance-of v7, p0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_9

    .line 835
    check-cast p0, Ljava/net/Inet4Address;

    .line 875
    .end local p0    # "ip":Ljava/net/InetAddress;
    .local v2, "bytes":[B
    .local v4, "i":I
    .local v6, "leadingBytesOfZero":Z
    :goto_8
    return-object p0

    .line 839
    .end local v2    # "bytes":[B
    .end local v4    # "i":I
    .end local v6    # "leadingBytesOfZero":Z
    .restart local p0    # "ip":Ljava/net/InetAddress;
    :cond_9
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 840
    .restart local v2    # "bytes":[B
    const/4 v6, 0x1

    .line 841
    .restart local v6    # "leadingBytesOfZero":Z
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_f
    if-ge v4, v9, :cond_16

    .line 842
    aget-byte v7, v2, v4

    if-eqz v7, :cond_20

    .line 843
    const/4 v6, 0x0

    .line 847
    :cond_16
    if-eqz v6, :cond_23

    aget-byte v7, v2, v9

    const/4 v8, 0x1

    if-ne v7, v8, :cond_23

    .line 848
    sget-object p0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    goto :goto_8

    .line 841
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 849
    :cond_23
    if-eqz v6, :cond_2c

    aget-byte v7, v2, v9

    if-nez v7, :cond_2c

    .line 850
    sget-object p0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    goto :goto_8

    :cond_2c
    move-object v5, p0

    .line 853
    check-cast v5, Ljava/net/Inet6Address;

    .line 854
    .local v5, "ip6":Ljava/net/Inet6Address;
    const-wide/16 v0, 0x0

    .line 855
    .local v0, "addressAsLong":J
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 856
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Inet4Address;->hashCode()I

    move-result v7

    int-to-long v0, v7

    .line 864
    :goto_40
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32()Lcom/google/common/hash/HashFunction;

    move-result-object v7

    invoke-interface {v7, v0, v1}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v3

    .line 867
    .local v3, "coercedHash":I
    const/high16 v7, -0x20000000

    or-int/2addr v3, v7

    .line 871
    const/4 v7, -0x1

    if-ne v3, v7, :cond_53

    .line 872
    const/4 v3, -0x2

    .line 875
    :cond_53
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    goto :goto_8

    .line 860
    .end local v3    # "coercedHash":I
    :cond_5c
    invoke-virtual {v5}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v7, v8, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_40
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 547
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not IPv4-compatible."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 550
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 764
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 765
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 773
    :goto_a
    return-object v0

    .line 768
    :cond_b
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 769
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    goto :goto_a

    .line 772
    :cond_16
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 773
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object v0

    goto :goto_a

    .line 776
    :cond_25
    const-string v0, "\'%s\' has no embedded IPv4 address."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .registers 4
    .param p0, "bytes"    # [B

    .prologue
    .line 120
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Byte array has invalid length for an IPv4 address: %s != 4."

    array-length v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 126
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    .line 120
    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .registers 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 730
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not an ISATAP address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 732
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .registers 13
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const v11, 0xffff

    const/16 v10, 0x8

    .line 669
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v7

    const-string v8, "Address \'%s\' is not a Teredo address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 671
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 672
    .local v0, "bytes":[B
    const/4 v7, 0x4

    invoke-static {v0, v7, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v6

    .line 674
    .local v6, "server":Ljava/net/Inet4Address;
    invoke-static {v0, v10}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v7

    and-int v3, v7, v11

    .line 677
    .local v3, "flags":I
    const/16 v7, 0xa

    invoke-static {v0, v7}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v7

    xor-int/lit8 v7, v7, -0x1

    and-int v5, v7, v11

    .line 679
    .local v5, "port":I
    const/16 v7, 0xc

    const/16 v8, 0x10

    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 680
    .local v2, "clientBytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_40
    array-length v7, v2

    if-ge v4, v7, :cond_4d

    .line 682
    aget-byte v7, v2, v4

    xor-int/lit8 v7, v7, -0x1

    int-to-byte v7, v7

    aput-byte v7, v2, v4

    .line 680
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 684
    :cond_4d
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v1

    .line 686
    .local v1, "client":Ljava/net/Inet4Address;
    new-instance v7, Lcom/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v7, v6, v1, v5, v3}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v7
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .registers 2
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 748
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .registers 6
    .param p0, "hextets"    # [I

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 402
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 403
    .local v2, "lastWasNumber":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v4, p0

    if-ge v1, v4, :cond_33

    .line 404
    aget v4, p0, v1

    if-ltz v4, :cond_27

    const/4 v3, 0x1

    .line 405
    .local v3, "thisIsNumber":Z
    :goto_11
    if-eqz v3, :cond_29

    .line 406
    if-eqz v2, :cond_1a

    .line 407
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    :cond_1a
    aget v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_23
    :goto_23
    move v2, v3

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 404
    .end local v3    # "thisIsNumber":Z
    :cond_27
    const/4 v3, 0x0

    goto :goto_11

    .line 411
    .restart local v3    # "thisIsNumber":Z
    :cond_29
    if-eqz v1, :cond_2d

    if-eqz v2, :cond_23

    .line 412
    :cond_2d
    const-string v4, "::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 417
    .end local v3    # "thisIsNumber":Z
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 6
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    const/4 v2, 0x0

    .line 961
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 962
    .local v0, "addr":[B
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 963
    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_14

    aget-byte v3, v0, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    .line 964
    aput-byte v2, v0, v1

    .line 965
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 968
    :cond_14
    if-ltz v1, :cond_17

    const/4 v2, 0x1

    :cond_17
    const-string v3, "Incrementing %s would wrap."

    invoke-static {v2, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 970
    aget-byte v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 971
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .registers 8
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "hasColon":Z
    const/4 v2, 0x0

    .line 166
    .local v2, "hasDot":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_29

    .line 167
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 168
    .local v0, "c":C
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_16

    .line 169
    const/4 v2, 0x1

    .line 166
    :cond_13
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 170
    :cond_16
    const/16 v5, 0x3a

    if-ne v0, v5, :cond_1f

    .line 171
    if-eqz v2, :cond_1d

    .line 192
    .end local v0    # "c":C
    :cond_1c
    :goto_1c
    return-object v4

    .line 174
    .restart local v0    # "c":C
    :cond_1d
    const/4 v1, 0x1

    goto :goto_13

    .line 175
    :cond_1f
    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_13

    goto :goto_1c

    .line 181
    .end local v0    # "c":C
    :cond_29
    if-eqz v1, :cond_38

    .line 182
    if-eqz v2, :cond_33

    .line 183
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 184
    if-eqz p0, :cond_1c

    .line 188
    :cond_33
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_1c

    .line 189
    :cond_38
    if-eqz v2, :cond_1c

    .line 190
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_1c
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .registers 6
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 566
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 567
    .local v0, "bytes":[B
    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_12

    aget-byte v3, v0, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .registers 6
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/16 v4, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 524
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v3

    if-nez v3, :cond_b

    .line 536
    :cond_a
    :goto_a
    return v1

    .line 528
    :cond_b
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 529
    .local v0, "bytes":[B
    const/16 v3, 0xc

    aget-byte v3, v0, v3

    if-nez v3, :cond_29

    const/16 v3, 0xd

    aget-byte v3, v0, v3

    if-nez v3, :cond_29

    const/16 v3, 0xe

    aget-byte v3, v0, v3

    if-nez v3, :cond_29

    aget-byte v3, v0, v4

    if-eqz v3, :cond_a

    aget-byte v3, v0, v4

    if-eq v3, v2, :cond_a

    :cond_29
    move v1, v2

    .line 536
    goto :goto_a
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .registers 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v1, 0x0

    .line 706
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 719
    :cond_7
    :goto_7
    return v1

    .line 710
    :cond_8
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 712
    .local v0, "bytes":[B
    const/16 v2, 0x8

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 719
    const/16 v2, 0x9

    aget-byte v2, v0, v2

    if-nez v2, :cond_7

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_7

    const/16 v2, 0xb

    aget-byte v2, v0, v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .registers 6
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 798
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 799
    .local v0, "bytes":[B
    if-eqz v0, :cond_15

    array-length v3, v0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_15

    .line 800
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    const/16 v3, 0xa

    if-ge v1, v3, :cond_19

    .line 801
    aget-byte v3, v0, v1

    if-eqz v3, :cond_16

    .line 812
    .end local v1    # "i":I
    :cond_15
    :goto_15
    return v2

    .line 800
    .restart local v1    # "i":I
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 805
    :cond_19
    const/16 v1, 0xa

    :goto_1b
    const/16 v3, 0xc

    if-ge v1, v3, :cond_27

    .line 806
    aget-byte v3, v0, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_15

    .line 805
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 810
    :cond_27
    const/4 v2, 0x1

    goto :goto_15
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .registers 5
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 983
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 984
    .local v0, "addr":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_12

    .line 985
    aget-byte v2, v0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_f

    .line 986
    const/4 v2, 0x0

    .line 989
    :goto_e
    return v2

    .line 984
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 989
    :cond_12
    const/4 v2, 0x1

    goto :goto_e
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .registers 6
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 654
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 655
    .local v0, "bytes":[B
    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1b

    aget-byte v3, v0, v1

    if-ne v3, v1, :cond_1b

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    if-nez v3, :cond_1b

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-nez v3, :cond_1b

    :goto_1a
    return v1

    :cond_1b
    move v1, v2

    goto :goto_1a
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .registers 3
    .param p0, "ipPart"    # Ljava/lang/String;

    .prologue
    .line 301
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 302
    .local v0, "hextet":I
    const v1, 0xffff

    if-le v0, v1, :cond_11

    .line 303
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 305
    :cond_11
    int-to-short v1, v0

    return v1
.end method

.method private static parseOctet(Ljava/lang/String;)B
    .registers 4
    .param p0, "ipPart"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 293
    .local v0, "octet":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_17

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1d

    .line 294
    :cond_17
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 296
    :cond_1d
    int-to-byte v1, v0

    return v1
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .registers 10
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x4

    .line 197
    new-array v0, v8, [B

    .line 198
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 200
    .local v2, "i":I
    :try_start_5
    sget-object v7, Lcom/google/common/net/InetAddresses;->IPV4_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v7, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_e} :catch_26

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_10
    :try_start_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1c} :catch_2f

    .line 201
    .local v5, "octet":Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :try_start_1e
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;)B

    move-result v7

    aput-byte v7, v0, v3
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_24} :catch_26

    move v3, v2

    .line 202
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_10

    .line 203
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "octet":Ljava/lang/String;
    .restart local v2    # "i":I
    :catch_26
    move-exception v1

    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_27
    move-object v0, v6

    .line 207
    .end local v0    # "bytes":[B
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :goto_28
    return-object v0

    .end local v2    # "i":I
    .restart local v0    # "bytes":[B
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_29
    if-ne v3, v8, :cond_2d

    .end local v0    # "bytes":[B
    :goto_2b
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_28

    .end local v2    # "i":I
    .restart local v0    # "bytes":[B
    .restart local v3    # "i":I
    :cond_2d
    move-object v0, v6

    goto :goto_2b

    .line 203
    :catch_2f
    move-exception v1

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_27
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .registers 13
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 213
    const-string v9, ":"

    const/16 v10, 0xa

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "parts":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x3

    if-lt v9, v10, :cond_13

    array-length v9, v2

    const/16 v10, 0x9

    if-le v9, v10, :cond_14

    .line 271
    :cond_13
    :goto_13
    return-object v8

    .line 220
    :cond_14
    const/4 v7, -0x1

    .line 221
    .local v7, "skipIndex":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_16
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_29

    .line 222
    aget-object v9, v2, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_26

    .line 223
    if-gez v7, :cond_13

    .line 226
    move v7, v1

    .line 221
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 232
    :cond_29
    if-ltz v7, :cond_69

    .line 234
    move v3, v7

    .line 235
    .local v3, "partsHi":I
    array-length v9, v2

    sub-int/2addr v9, v7

    add-int/lit8 v4, v9, -0x1

    .line 236
    .local v4, "partsLo":I
    aget-object v9, v2, v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3c

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_13

    .line 239
    :cond_3c
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4b

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_13

    .line 251
    :cond_4b
    :goto_4b
    add-int v9, v3, v4

    rsub-int/lit8 v5, v9, 0x8

    .line 252
    .local v5, "partsSkipped":I
    if-ltz v7, :cond_6c

    const/4 v9, 0x1

    if-lt v5, v9, :cond_13

    .line 257
    :cond_54
    const/16 v9, 0x10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 259
    .local v6, "rawBytes":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    :goto_5b
    if-ge v1, v3, :cond_6f

    .line 260
    :try_start_5d
    aget-object v9, v2, v1

    invoke-static {v9}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_66} :catch_8a

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 245
    .end local v3    # "partsHi":I
    .end local v4    # "partsLo":I
    .end local v5    # "partsSkipped":I
    .end local v6    # "rawBytes":Ljava/nio/ByteBuffer;
    :cond_69
    array-length v3, v2

    .line 246
    .restart local v3    # "partsHi":I
    const/4 v4, 0x0

    .restart local v4    # "partsLo":I
    goto :goto_4b

    .line 252
    .restart local v5    # "partsSkipped":I
    :cond_6c
    if-eqz v5, :cond_54

    goto :goto_13

    .line 262
    .restart local v6    # "rawBytes":Ljava/nio/ByteBuffer;
    :cond_6f
    const/4 v1, 0x0

    :goto_70
    if-ge v1, v5, :cond_79

    .line 263
    const/4 v9, 0x0

    :try_start_73
    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 265
    :cond_79
    move v1, v4

    :goto_7a
    if-lez v1, :cond_8c

    .line 266
    array-length v9, v2

    sub-int/2addr v9, v1

    aget-object v9, v2, v9

    invoke-static {v9}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_87} :catch_8a

    .line 265
    add-int/lit8 v1, v1, -0x1

    goto :goto_7a

    .line 268
    :catch_8a
    move-exception v0

    .line 269
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_13

    .line 271
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_8c
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    goto :goto_13
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 7
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    const/4 v5, 0x0

    .line 342
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    instance-of v3, p0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_d

    .line 345
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 354
    :goto_c
    return-object v3

    .line 347
    :cond_d
    instance-of v3, p0, Ljava/net/Inet6Address;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 348
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 349
    .local v0, "bytes":[B
    const/16 v3, 0x8

    new-array v1, v3, [I

    .line 350
    .local v1, "hextets":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    array-length v3, v1

    if-ge v2, v3, :cond_31

    .line 351
    mul-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v0, v4

    invoke-static {v5, v5, v3, v4}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v3

    aput v3, v1, v2

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 353
    :cond_31
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 354
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object v3

    goto :goto_c
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 3
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 441
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_22

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    :goto_21
    return-object v0

    :cond_22
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method
