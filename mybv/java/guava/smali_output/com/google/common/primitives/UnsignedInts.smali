.class public final Lcom/google/common/primitives/UnsignedInts;
.super Ljava/lang/Object;
.source "UnsignedInts.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;
    }
.end annotation


# static fields
.field static final INT_MASK:J = 0xffffffffL


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .registers 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)I
    .registers 6
    .param p0, "stringValue"    # Ljava/lang/String;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 216
    invoke-static {p0}, Lcom/google/common/primitives/ParseRequest;->fromString(Ljava/lang/String;)Lcom/google/common/primitives/ParseRequest;

    move-result-object v2

    .line 219
    .local v2, "request":Lcom/google/common/primitives/ParseRequest;
    :try_start_4
    iget-object v3, v2, Lcom/google/common/primitives/ParseRequest;->rawValue:Ljava/lang/String;

    iget v4, v2, Lcom/google/common/primitives/ParseRequest;->radix:I

    invoke-static {v3, v4}, Lcom/google/common/primitives/UnsignedInts;->parseUnsignedInt(Ljava/lang/String;I)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v3

    return v3

    .line 220
    :catch_d
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "decodeException":Ljava/lang/NumberFormatException;
    invoke-virtual {v0, v1}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 224
    throw v0
.end method

.method public static divide(II)I
    .registers 6
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .prologue
    .line 184
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static flip(I)I
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 55
    const/high16 v0, -0x80000000

    xor-int/2addr v0, p0

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [I

    .prologue
    .line 127
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    array-length v2, p1

    if-nez v2, :cond_9

    .line 129
    const-string v2, ""

    .line 138
    :goto_8
    return-object v2

    .line 133
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 134
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedInts;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1c
    array-length v2, p1

    if-ge v1, v2, :cond_2f

    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v1

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedInts;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 138
    :cond_2f
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
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 152
    sget-object v0, Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([I)I
    .registers 6
    .param p0, "array"    # [I

    .prologue
    const/4 v4, 0x0

    .line 107
    array-length v3, p0

    if-lez v3, :cond_1e

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 108
    aget v3, p0, v4

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v1

    .line 109
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_f
    array-length v3, p0

    if-ge v0, v3, :cond_20

    .line 110
    aget v3, p0, v0

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v2

    .line 111
    .local v2, "next":I
    if-le v2, v1, :cond_1b

    .line 112
    move v1, v2

    .line 109
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .end local v0    # "i":I
    .end local v1    # "max":I
    .end local v2    # "next":I
    :cond_1e
    move v3, v4

    .line 107
    goto :goto_5

    .line 115
    .restart local v0    # "i":I
    .restart local v1    # "max":I
    :cond_20
    invoke-static {v1}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v3

    return v3
.end method

.method public static varargs min([I)I
    .registers 6
    .param p0, "array"    # [I

    .prologue
    const/4 v4, 0x0

    .line 87
    array-length v3, p0

    if-lez v3, :cond_1e

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 88
    aget v3, p0, v4

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v1

    .line 89
    .local v1, "min":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_f
    array-length v3, p0

    if-ge v0, v3, :cond_20

    .line 90
    aget v3, p0, v0

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v2

    .line 91
    .local v2, "next":I
    if-ge v2, v1, :cond_1b

    .line 92
    move v1, v2

    .line 89
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .end local v0    # "i":I
    .end local v1    # "min":I
    .end local v2    # "next":I
    :cond_1e
    move v3, v4

    .line 87
    goto :goto_5

    .line 95
    .restart local v0    # "i":I
    .restart local v1    # "min":I
    :cond_20
    invoke-static {v1}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v3

    return v3
.end method

.method public static parseUnsignedInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 237
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedInts;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseUnsignedInt(Ljava/lang/String;I)I
    .registers 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 253
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 255
    .local v0, "result":J
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    cmp-long v2, v2, v0

    if-eqz v2, :cond_3a

    .line 256
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in base "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in the range of an unsigned integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_3a
    long-to-int v2, v0

    return v2
.end method

.method public static remainder(II)I
    .registers 6
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .prologue
    .line 196
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static toLong(I)J
    .registers 5
    .param p0, "value"    # I

    .prologue
    .line 75
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "x"    # I

    .prologue
    .line 266
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedInts;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(II)Ljava/lang/String;
    .registers 8
    .param p0, "x"    # I
    .param p1, "radix"    # I

    .prologue
    .line 279
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long v0, v2, v4

    .line 280
    .local v0, "asLong":J
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
