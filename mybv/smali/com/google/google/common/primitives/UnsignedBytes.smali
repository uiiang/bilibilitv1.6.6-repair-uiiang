.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
    }
.end annotation


# static fields
.field public static final MAX_POWER_OF_TWO:B = -0x80t

.field public static final MAX_VALUE:B = -0x1t

.field private static final UNSIGNED_MASK:I = 0xff


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .registers 6
    .param p0, "value"    # J
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 84
    const/16 v0, 0x8

    shr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_23
    long-to-int v0, p0

    int-to-byte v0, v0

    return v0
.end method

.method public static compare(BB)I
    .registers 4
    .param p0, "a"    # B
    .param p1, "b"    # B

    .prologue
    .line 120
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [B

    .prologue
    .line 242
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    array-length v2, p1

    if-nez v2, :cond_9

    .line 244
    const-string v2, ""

    .line 253
    :goto_8
    return-object v2

    .line 248
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    mul-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 249
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_21
    array-length v2, p1

    if-ge v1, v2, :cond_34

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 253
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;->BEST_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static lexicographicalComparatorJavaImpl()Ljava/util/Comparator;
    .registers 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 276
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .registers 6
    .param p0, "array"    # [B

    .prologue
    const/4 v4, 0x0

    .line 152
    array-length v3, p0

    if-lez v3, :cond_1e

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 153
    aget-byte v3, p0, v4

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    .line 154
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_f
    array-length v3, p0

    if-ge v0, v3, :cond_20

    .line 155
    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 156
    .local v2, "next":I
    if-le v2, v1, :cond_1b

    .line 157
    move v1, v2

    .line 154
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .end local v0    # "i":I
    .end local v1    # "max":I
    .end local v2    # "next":I
    :cond_1e
    move v3, v4

    .line 152
    goto :goto_5

    .line 160
    .restart local v0    # "i":I
    .restart local v1    # "max":I
    :cond_20
    int-to-byte v3, v1

    return v3
.end method

.method public static varargs min([B)B
    .registers 6
    .param p0, "array"    # [B

    .prologue
    const/4 v4, 0x0

    .line 132
    array-length v3, p0

    if-lez v3, :cond_1e

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 133
    aget-byte v3, p0, v4

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    .line 134
    .local v1, "min":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_f
    array-length v3, p0

    if-ge v0, v3, :cond_20

    .line 135
    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 136
    .local v2, "next":I
    if-ge v2, v1, :cond_1b

    .line 137
    move v1, v2

    .line 134
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .end local v0    # "i":I
    .end local v1    # "min":I
    .end local v2    # "next":I
    :cond_1e
    move v3, v4

    .line 132
    goto :goto_5

    .line 140
    .restart local v0    # "i":I
    .restart local v1    # "min":I
    :cond_20
    int-to-byte v3, v1

    return v3
.end method

.method public static parseUnsignedByte(Ljava/lang/String;)B
    .registers 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 205
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedBytes;->parseUnsignedByte(Ljava/lang/String;I)B

    move-result v0

    return v0
.end method

.method public static parseUnsignedByte(Ljava/lang/String;I)B
    .registers 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 223
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 225
    .local v0, "parse":I
    shr-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_10

    .line 226
    int-to-byte v1, v0

    return v1

    .line 228
    :cond_10
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static saturatedCast(J)B
    .registers 6
    .param p0, "value"    # J

    .prologue
    const/4 v0, -0x1

    .line 100
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, p0, v2

    if-lez v1, :cond_b

    .line 106
    :goto_a
    return v0

    .line 103
    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 104
    const/4 v0, 0x0

    goto :goto_a

    .line 106
    :cond_13
    long-to-int v0, p0

    int-to-byte v0, v0

    goto :goto_a
.end method

.method public static toInt(B)I
    .registers 2
    .param p0, "value"    # B

    .prologue
    .line 71
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static toString(B)Ljava/lang/String;
    .registers 2
    .param p0, "x"    # B
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 170
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedBytes;->toString(BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(BI)Ljava/lang/String;
    .registers 4
    .param p0, "x"    # B
    .param p1, "radix"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x2

    if-lt p1, v0, :cond_16

    const/16 v0, 0x24

    if-gt p1, v0, :cond_16

    const/4 v0, 0x1

    :goto_8
    const-string v1, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 190
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_16
    const/4 v0, 0x0

    goto :goto_8
.end method
