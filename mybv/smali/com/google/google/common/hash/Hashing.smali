.class public final Lcom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Hashing$1;,
        Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;,
        Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;,
        Lcom/google/common/hash/Hashing$FarmHashFingerprint64Holder;,
        Lcom/google/common/hash/Hashing$ChecksumType;,
        Lcom/google/common/hash/Hashing$Adler32Holder;,
        Lcom/google/common/hash/Hashing$Crc32Holder;,
        Lcom/google/common/hash/Hashing$Crc32cHolder;,
        Lcom/google/common/hash/Hashing$Sha512Holder;,
        Lcom/google/common/hash/Hashing$Sha384Holder;,
        Lcom/google/common/hash/Hashing$Sha256Holder;,
        Lcom/google/common/hash/Hashing$Sha1Holder;,
        Lcom/google/common/hash/Hashing$Md5Holder;,
        Lcom/google/common/hash/Hashing$SipHash24Holder;,
        Lcom/google/common/hash/Hashing$Murmur3_128Holder;,
        Lcom/google/common/hash/Hashing$Murmur3_32Holder;
    }
.end annotation


# static fields
.field private static final GOOD_FAST_HASH_SEED:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 47
    sget v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;
    .registers 3
    .param p0, "x0"    # Lcom/google/common/hash/Hashing$ChecksumType;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/google/common/hash/Hashing;->checksumHashFunction(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static adler32()Lcom/google/common/hash/HashFunction;
    .registers 1

    .prologue
    .line 400
    sget-object v0, Lcom/google/common/hash/Hashing$Adler32Holder;->ADLER_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method static checkPositiveAndMakeMultipleOf32(I)I
    .registers 3
    .param p0, "bits"    # I

    .prologue
    .line 592
    if-lez p0, :cond_d

    const/4 v0, 0x1

    :goto_3
    const-string v1, "Number of bits must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 593
    add-int/lit8 v0, p0, 0x1f

    and-int/lit8 v0, v0, -0x20

    return v0

    .line 592
    :cond_d
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static checksumHashFunction(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;
    .registers 4
    .param p0, "type"    # Lcom/google/common/hash/Hashing$ChecksumType;
    .param p1, "toString"    # Ljava/lang/String;

    .prologue
    .line 409
    new-instance v0, Lcom/google/common/hash/ChecksumHashFunction;

    # getter for: Lcom/google/common/hash/Hashing$ChecksumType;->bits:I
    invoke-static {p0}, Lcom/google/common/hash/Hashing$ChecksumType;->access$300(Lcom/google/common/hash/Hashing$ChecksumType;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/hash/ChecksumHashFunction;-><init>(Lcom/google/common/base/Supplier;ILjava/lang/String;)V

    return-object v0
.end method

.method public static combineOrdered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "hashCodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 550
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "Must be at least 1 hash code to combine."

    invoke-static {v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 551
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/hash/HashCode;

    invoke-virtual {v7}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v0

    .line 552
    .local v0, "bits":I
    div-int/lit8 v7, v0, 0x8

    new-array v6, v7, [B

    .line 553
    .local v6, "resultBytes":[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/HashCode;

    .line 554
    .local v1, "hashCode":Lcom/google/common/hash/HashCode;
    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v5

    .line 555
    .local v5, "nextBytes":[B
    array-length v7, v5

    array-length v8, v6

    if-ne v7, v8, :cond_4a

    const/4 v7, 0x1

    :goto_34
    const-string v8, "All hashcodes must have the same bit length."

    invoke-static {v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 557
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3a
    array-length v7, v5

    if-ge v2, v7, :cond_1f

    .line 558
    aget-byte v7, v6, v2

    mul-int/lit8 v7, v7, 0x25

    aget-byte v8, v5, v2

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 557
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 555
    .end local v2    # "i":I
    :cond_4a
    const/4 v7, 0x0

    goto :goto_34

    .line 561
    .end local v1    # "hashCode":Lcom/google/common/hash/HashCode;
    .end local v5    # "nextBytes":[B
    :cond_4c
    invoke-static {v6}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v7

    return-object v7
.end method

.method public static combineUnordered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, "hashCodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 575
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "Must be at least 1 hash code to combine."

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 576
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/hash/HashCode;

    invoke-virtual {v6}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    new-array v5, v6, [B

    .line 577
    .local v5, "resultBytes":[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    .line 578
    .local v0, "hashCode":Lcom/google/common/hash/HashCode;
    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v4

    .line 579
    .local v4, "nextBytes":[B
    array-length v6, v4

    array-length v7, v5

    if-ne v6, v7, :cond_48

    const/4 v6, 0x1

    :goto_34
    const-string v7, "All hashcodes must have the same bit length."

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 581
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    array-length v6, v4

    if-ge v1, v6, :cond_1f

    .line 582
    aget-byte v6, v5, v1

    aget-byte v7, v4, v1

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 579
    .end local v1    # "i":I
    :cond_48
    const/4 v6, 0x0

    goto :goto_34

    .line 585
    .end local v0    # "hashCode":Lcom/google/common/hash/HashCode;
    .end local v4    # "nextBytes":[B
    :cond_4a
    invoke-static {v5}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v6

    return-object v6
.end method

.method public static varargs concatenating(Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/HashFunction;[Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashFunction;
    .registers 11
    .param p0, "first"    # Lcom/google/common/hash/HashFunction;
    .param p1, "second"    # Lcom/google/common/hash/HashFunction;
    .param p2, "rest"    # [Lcom/google/common/hash/HashFunction;

    .prologue
    .line 609
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/hash/HashFunction;>;"
    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    move-object v0, p2

    .local v0, "arr$":[Lcom/google/common/hash/HashFunction;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_e
    if-ge v2, v3, :cond_18

    aget-object v1, v0, v2

    .line 613
    .local v1, "hashFunc":Lcom/google/common/hash/HashFunction;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 615
    .end local v1    # "hashFunc":Lcom/google/common/hash/HashFunction;
    :cond_18
    new-instance v6, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/common/hash/HashFunction;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/common/hash/HashFunction;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object v6
.end method

.method public static concatenating(Ljava/lang/Iterable;)Lcom/google/common/hash/HashFunction;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashFunction;",
            ">;)",
            "Lcom/google/common/hash/HashFunction;"
        }
    .end annotation

    .prologue
    .local p0, "hashFunctions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/hash/HashFunction;>;"
    const/4 v4, 0x0

    .line 629
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/hash/HashFunction;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashFunction;

    .line 633
    .local v0, "hashFunction":Lcom/google/common/hash/HashFunction;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 635
    .end local v0    # "hashFunction":Lcom/google/common/hash/HashFunction;
    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3c

    const/4 v3, 0x1

    :goto_24
    const-string v5, "number of hash functions (%s) must be > 0"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 636
    new-instance v5, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    new-array v3, v4, [Lcom/google/common/hash/HashFunction;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/common/hash/HashFunction;

    const/4 v4, 0x0

    invoke-direct {v5, v3, v4}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object v5

    :cond_3c
    move v3, v4

    .line 635
    goto :goto_24
.end method

.method public static consistentHash(JI)I
    .registers 11
    .param p0, "input"    # J
    .param p2, "buckets"    # I

    .prologue
    .line 523
    if-lez p2, :cond_1d

    const/4 v3, 0x1

    :goto_3
    const-string v4, "buckets must be positive: %s"

    invoke-static {v3, v4, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 524
    new-instance v1, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;

    invoke-direct {v1, p0, p1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;-><init>(J)V

    .line 525
    .local v1, "generator":Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    const/4 v0, 0x0

    .line 530
    .local v0, "candidate":I
    :goto_e
    add-int/lit8 v3, v0, 0x1

    int-to-double v4, v3

    invoke-virtual {v1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;->nextDouble()D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v2, v4

    .line 531
    .local v2, "next":I
    if-ltz v2, :cond_1f

    if-ge v2, p2, :cond_1f

    .line 532
    move v0, v2

    goto :goto_e

    .line 523
    .end local v0    # "candidate":I
    .end local v1    # "generator":Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    .end local v2    # "next":I
    :cond_1d
    const/4 v3, 0x0

    goto :goto_3

    .line 534
    .restart local v0    # "candidate":I
    .restart local v1    # "generator":Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    .restart local v2    # "next":I
    :cond_1f
    return v0
.end method

.method public static consistentHash(Lcom/google/common/hash/HashCode;I)I
    .registers 4
    .param p0, "hashCode"    # Lcom/google/common/hash/HashCode;
    .param p1, "buckets"    # I

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->padToLong()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/hash/Hashing;->consistentHash(JI)I

    move-result v0

    return v0
.end method

.method public static crc32()Lcom/google/common/hash/HashFunction;
    .registers 1

    .prologue
    .line 383
    sget-object v0, Lcom/google/common/hash/Hashing$Crc32Holder;->CRC_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static crc32c()Lcom/google/common/hash/HashFunction;
    .registers 1

    .prologue
    .line 366
    sget-object v0, Lcom/google/common/hash/Hashing$Crc32cHolder;->CRC_32_C:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static farmHashFingerprint64()Lcom/google/common/hash/HashFunction;
    .registers 1

    .prologue
    .line 449
    sget-object v0, Lcom/google/common/hash/Hashing$FarmHashFingerprint64Holder;->FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static goodFastHash(I)Lcom/google/common/hash/HashFunction;
    .registers 8
    .param p0, "minimumBits"    # I

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/common/hash/Hashing;->checkPositiveAndMakeMultipleOf32(I)I

    move-result v0

    .line 66
    .local v0, "bits":I
    const/16 v5, 0x20

    if-ne v0, v5, :cond_b

    .line 67
    sget-object v5, Lcom/google/common/hash/Hashing$Murmur3_32Holder;->GOOD_FAST_HASH_FUNCTION_32:Lcom/google/common/hash/HashFunction;

    .line 82
    :goto_a
    return-object v5

    .line 69
    :cond_b
    const/16 v5, 0x80

    if-gt v0, v5, :cond_12

    .line 70
    sget-object v5, Lcom/google/common/hash/Hashing$Murmur3_128Holder;->GOOD_FAST_HASH_FUNCTION_128:Lcom/google/common/hash/HashFunction;

    goto :goto_a

    .line 74
    :cond_12
    add-int/lit8 v5, v0, 0x7f

    div-int/lit16 v2, v5, 0x80

    .line 75
    .local v2, "hashFunctionsNeeded":I
    new-array v1, v2, [Lcom/google/common/hash/HashFunction;

    .line 76
    .local v1, "hashFunctions":[Lcom/google/common/hash/HashFunction;
    const/4 v5, 0x0

    sget-object v6, Lcom/google/common/hash/Hashing$Murmur3_128Holder;->GOOD_FAST_HASH_FUNCTION_128:Lcom/google/common/hash/HashFunction;

    aput-object v6, v1, v5

    .line 77
    sget v4, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    .line 78
    .local v4, "seed":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_20
    if-ge v3, v2, :cond_2f

    .line 79
    const v5, 0x596f0ddf

    add-int/2addr v4, v5

    .line 80
    invoke-static {v4}, Lcom/google/common/hash/Hashing;->murmur3_128(I)Lcom/google/common/hash/HashFunction;

    move-result-object v5

    aput-object v5, v1, v3

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 82
    :cond_2f
    new-instance v5, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    goto :goto_a
.end method

.method public static hmacMd5(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .registers 4
    .param p0, "key"    # Ljava/security/Key;

    .prologue
    .line 257
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "HmacMD5"

    const-string v2, "hmacMd5"

    invoke-static {v2, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacMd5([B)Lcom/google/common/hash/HashFunction;
    .registers 4
    .param p0, "key"    # [B

    .prologue
    .line 270
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v2, "HmacMD5"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/hash/Hashing;->hmacMd5(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .registers 4
    .param p0, "key"    # Ljava/security/Key;

    .prologue
    .line 283
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "HmacSHA1"

    const-string v2, "hmacSha1"

    invoke-static {v2, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha1([B)Lcom/google/common/hash/HashFunction;
    .registers 4
    .param p0, "key"    # [B

    .prologue
    .line 296
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v2, "HmacSHA1"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/hash/Hashing;->hmacSha1(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .registers 4
    .param p0, "key"    # Ljava/security/Key;

    .prologue
    .line 309
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "HmacSHA256"

    const-string v2, "hmacSha256"

    invoke-static {v2, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256([B)Lcom/google/common/hash/HashFunction;
    .registers 4
    .param p0, "key"    # [B

    .prologue
    .line 322
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v2, "HmacSHA256"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/hash/Hashing;->hmacSha256(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .registers 4
    .param p0, "key"    # Ljava/security/Key;

    .prologue
    .line 335
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "HmacSHA512"

    const-string v2, "hmacSha512"

    invoke-static {v2, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha512([B)Lcom/google/common/hash/HashFunction;
    .registers 4
    .param p0, "key"    # [B

    .prologue
    .line 348
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v2, "HmacSHA512"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/hash/Hashing;->hmacSha512(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method private static hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .registers 6
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 352
    const-string v0, "Hashing.%s(Key[algorithm=%s, format=%s])"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5()Lcom/google/common/hash/HashFunction;
    .registers 1

    .prologue
    .line 183
    sget-object v0, Lcom/google/common/hash/Hashing$Md5Holder;->MD5:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128()Lcom/google/common/hash/HashFunction;
    .registers 1

    .prologue
    .line 139
    sget-object v0, Lcom/google/common/hash/Hashing$Murmur3_128Holder;->MURMUR3_128:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128(I)Lcom/google/common/hash/HashFunction;
    .registers 2
    .param p0, "seed"    # I

    .prologue
    .line 128
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static murmur3_32()Lcom/google/common/hash/HashFunction;
    .registers 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/common/hash/Hashing$Murmur3_32Holder;->MURMUR3_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_32(I)Lcom/google/common/hash/HashFunction;
    .registers 2
    .param p0, "seed"    # I

    .prologue
    .line 99
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static sha1()Lcom/google/common/hash/HashFunction;
    .registers 1

    .prologue
    .line 199
    sget-object v0, Lcom/google/common/hash/Hashing$Sha1Holder;->SHA_1:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha256()Lcom/google/common/hash/HashFunction;
    .registers 1

    .prologue
    .line 211
    sget-object v0, Lcom/google/common/hash/Hashing$Sha256Holder;->SHA_256:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha384()Lcom/google/common/hash/HashFunction;
    .registers 1

    .prologue
    .line 226
    sget-object v0, Lcom/google/common/hash/Hashing$Sha384Holder;->SHA_384:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha512()Lcom/google/common/hash/HashFunction;
    .registers 1

    .prologue
    .line 239
    sget-object v0, Lcom/google/common/hash/Hashing$Sha512Holder;->SHA_512:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24()Lcom/google/common/hash/HashFunction;
    .registers 1

    .prologue
    .line 156
    sget-object v0, Lcom/google/common/hash/Hashing$SipHash24Holder;->SIP_HASH_24:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24(JJ)Lcom/google/common/hash/HashFunction;
    .registers 12
    .param p0, "k0"    # J
    .param p2, "k1"    # J

    .prologue
    .line 171
    new-instance v1, Lcom/google/common/hash/SipHashFunction;

    const/4 v2, 0x2

    const/4 v3, 0x4

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/common/hash/SipHashFunction;-><init>(IIJJ)V

    return-object v1
.end method
