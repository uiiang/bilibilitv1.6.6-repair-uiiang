.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedHashFunction"
.end annotation


# instance fields
.field private final bits:I


# direct methods
.method private varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .registers 10
    .param p1, "functions"    # [Lcom/google/common/hash/HashFunction;

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    .line 644
    const/4 v1, 0x0

    .line 645
    .local v1, "bitSum":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/common/hash/HashFunction;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_7
    if-ge v3, v4, :cond_27

    aget-object v2, v0, v3

    .line 646
    .local v2, "function":Lcom/google/common/hash/HashFunction;
    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v5

    add-int/2addr v1, v5

    .line 647
    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_25

    const/4 v5, 0x1

    :goto_19
    const-string v6, "the number of bits (%s) in hashFunction (%s) must be divisible by 8"

    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v7

    invoke-static {v5, v6, v7, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;ILjava/lang/Object;)V

    .line 645
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 647
    :cond_25
    const/4 v5, 0x0

    goto :goto_19

    .line 653
    .end local v2    # "function":Lcom/google/common/hash/HashFunction;
    :cond_27
    iput v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 654
    return-void
.end method

.method synthetic constructor <init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V
    .registers 3
    .param p1, "x0"    # [Lcom/google/common/hash/HashFunction;
    .param p2, "x1"    # Lcom/google/common/hash/Hashing$1;

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    return-void
.end method


# virtual methods
.method public bits()I
    .registers 2

    .prologue
    .line 669
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 674
    instance-of v1, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 675
    check-cast v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 676
    .local v0, "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    iget-object v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    iget-object v2, v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 678
    .end local v0    # "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    add-int/2addr v0, v1

    return v0
.end method

.method makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .registers 10
    .param p1, "hashers"    # [Lcom/google/common/hash/Hasher;

    .prologue
    .line 658
    iget v7, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    div-int/lit8 v7, v7, 0x8

    new-array v1, v7, [B

    .line 659
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .line 660
    .local v3, "i":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/common/hash/Hasher;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_a
    if-ge v4, v5, :cond_20

    aget-object v2, v0, v4

    .line 661
    .local v2, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v2}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v6

    .line 662
    .local v6, "newHash":Lcom/google/common/hash/HashCode;
    invoke-virtual {v6}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v7

    div-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v1, v3, v7}, Lcom/google/common/hash/HashCode;->writeBytesTo([BII)I

    move-result v7

    add-int/2addr v3, v7

    .line 660
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 664
    .end local v2    # "hasher":Lcom/google/common/hash/Hasher;
    .end local v6    # "newHash":Lcom/google/common/hash/HashCode;
    :cond_20
    invoke-static {v1}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v7

    return-object v7
.end method
