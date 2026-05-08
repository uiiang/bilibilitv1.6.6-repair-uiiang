.class final Lcom/google/common/hash/Murmur3_32HashFunction;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "Murmur3_32HashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;
    }
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final serialVersionUID:J


# instance fields
.field private final seed:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "seed"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 52
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    .line 53
    return-void
.end method

.method static synthetic access$000(I)I
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(II)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(II)Lcom/google/common/hash/HashCode;
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method private static fmix(II)Lcom/google/common/hash/HashCode;
    .registers 3
    .param p0, "h1"    # I
    .param p1, "length"    # I

    .prologue
    .line 144
    xor-int/2addr p0, p1

    .line 145
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    .line 146
    const v0, -0x7a143595

    mul-int/2addr p0, v0

    .line 147
    ushr-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    .line 148
    const v0, -0x3d4d51cb

    mul-int/2addr p0, v0

    .line 149
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    .line 150
    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method private static mixH1(II)I
    .registers 4
    .param p0, "h1"    # I
    .param p1, "k1"    # I

    .prologue
    .line 136
    xor-int/2addr p0, p1

    .line 137
    const/16 v0, 0xd

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    .line 138
    mul-int/lit8 v0, p0, 0x5

    const v1, -0x19ab949c

    add-int p0, v0, v1

    .line 139
    return p0
.end method

.method private static mixK1(I)I
    .registers 2
    .param p0, "k1"    # I

    .prologue
    .line 129
    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr p0, v0

    .line 130
    const/16 v0, 0xf

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    .line 131
    const v0, 0x1b873593

    mul-int/2addr p0, v0

    .line 132
    return p0
.end method


# virtual methods
.method public bits()I
    .registers 2

    .prologue
    .line 57
    const/16 v0, 0x20

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 72
    instance-of v2, p1, Lcom/google/common/hash/Murmur3_32HashFunction;

    if-eqz v2, :cond_f

    move-object v0, p1

    .line 73
    check-cast v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    .line 74
    .local v0, "other":Lcom/google/common/hash/Murmur3_32HashFunction;
    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    iget v3, v0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    .line 76
    .end local v0    # "other":Lcom/google/common/hash/Murmur3_32HashFunction;
    :cond_f
    return v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public hashInt(I)Lcom/google/common/hash/HashCode;
    .registers 5
    .param p1, "input"    # I

    .prologue
    .line 86
    invoke-static {p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v1

    .line 87
    .local v1, "k1":I
    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {v2, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 89
    .local v0, "h1":I
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v2

    return-object v2
.end method

.method public hashLong(J)Lcom/google/common/hash/HashCode;
    .registers 10
    .param p1, "input"    # J

    .prologue
    .line 94
    long-to-int v3, p1

    .line 95
    .local v3, "low":I
    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v1, v4

    .line 97
    .local v1, "high":I
    invoke-static {v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v2

    .line 98
    .local v2, "k1":I
    iget v4, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {v4, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 100
    .local v0, "h1":I
    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v2

    .line 101
    invoke-static {v0, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 103
    const/16 v4, 0x8

    invoke-static {v0, v4}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v4

    return-object v4
.end method

.method public hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .registers 7
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    .line 112
    .local v0, "h1":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 113
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int v2, v3, v4

    .line 114
    .local v2, "k1":I
    invoke-static {v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v2

    .line 115
    invoke-static {v0, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 112
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 119
    .end local v2    # "k1":I
    :cond_22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    .line 120
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 121
    .restart local v2    # "k1":I
    invoke-static {v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v2

    .line 122
    xor-int/2addr v0, v2

    .line 125
    .end local v2    # "k1":I
    :cond_3a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v3

    return-object v3
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .registers 3

    .prologue
    .line 62
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hashing.murmur3_32("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
