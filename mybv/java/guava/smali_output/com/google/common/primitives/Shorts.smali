.class public final Lcom/google/common/primitives/Shorts;
.super Ljava/lang/Object;
.source "Shorts.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Shorts$ShortArrayAsList;,
        Lcom/google/common/primitives/Shorts$LexicographicalComparator;,
        Lcom/google/common/primitives/Shorts$ShortConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2

.field public static final MAX_POWER_OF_TWO:S = 0x4000s


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([SSII)I
    .registers 5
    .param p0, "x0"    # [S
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([SSII)I
    .registers 5
    .param p0, "x0"    # [S
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([S)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    array-length v0, p0

    if-nez v0, :cond_8

    .line 483
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 485
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([S)V

    goto :goto_7
.end method

.method public static checkedCast(J)S
    .registers 6
    .param p0, "value"    # J

    .prologue
    .line 85
    long-to-int v1, p0

    int-to-short v0, v1

    .line 86
    .local v0, "result":S
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-eqz v1, :cond_20

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_20
    return v0
.end method

.method public static compare(SS)I
    .registers 3
    .param p0, "a"    # S
    .param p1, "b"    # S

    .prologue
    .line 123
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[S)[S
    .registers 10
    .param p0, "arrays"    # [[S

    .prologue
    .line 264
    const/4 v4, 0x0

    .line 265
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[S
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 266
    .local v1, "array":[S
    array-length v7, v1

    add-int/2addr v4, v7

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 268
    .end local v1    # "array":[S
    :cond_d
    new-array v6, v4, [S

    .line 269
    .local v6, "result":[S
    const/4 v5, 0x0

    .line 270
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 271
    .restart local v1    # "array":[S
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    array-length v7, v1

    add-int/2addr v5, v7

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 274
    .end local v1    # "array":[S
    :cond_21
    return-object v6
.end method

.method public static contains([SS)Z
    .registers 7
    .param p0, "array"    # [S
    .param p1, "target"    # S

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "arr$":[S
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_e

    aget-short v3, v0, v1

    .line 136
    .local v3, "value":S
    if-ne v3, p1, :cond_b

    .line 137
    const/4 v4, 0x1

    .line 140
    .end local v3    # "value":S
    :goto_a
    return v4

    .line 135
    .restart local v3    # "value":S
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 140
    .end local v3    # "value":S
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method public static ensureCapacity([SII)[S
    .registers 7
    .param p0, "array"    # [S
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    if-ltz p1, :cond_1b

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 375
    if-ltz p2, :cond_1d

    :goto_c
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 376
    array-length v0, p0

    if-ge v0, p1, :cond_1a

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p0

    .end local p0    # "array":[S
    :cond_1a
    return-object p0

    .restart local p0    # "array":[S
    :cond_1b
    move v0, v2

    .line 374
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 375
    goto :goto_c
.end method

.method public static fromByteArray([B)S
    .registers 7
    .param p0, "bytes"    # [B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    array-length v0, p0

    if-lt v0, v5, :cond_16

    move v0, v1

    :goto_7
    const-string v3, "array too small: %s < %s"

    array-length v4, p0

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 304
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Shorts;->fromBytes(BB)S

    move-result v0

    return v0

    :cond_16
    move v0, v2

    .line 303
    goto :goto_7
.end method

.method public static fromBytes(BB)S
    .registers 4
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 315
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static hashCode(S)I
    .registers 1
    .param p0, "value"    # S

    .prologue
    .line 73
    return p0
.end method

.method public static indexOf([SS)I
    .registers 4
    .param p0, "array"    # [S
    .param p1, "target"    # S

    .prologue
    .line 152
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static indexOf([SSII)I
    .registers 6
    .param p0, "array"    # [S
    .param p1, "target"    # S
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 157
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 158
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 162
    .end local v0    # "i":I
    :goto_7
    return v0

    .line 157
    .restart local v0    # "i":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    :cond_b
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static indexOf([S[S)I
    .registers 6
    .param p0, "array"    # [S
    .param p1, "target"    # [S

    .prologue
    .line 177
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    array-length v2, p1

    if-nez v2, :cond_f

    .line 180
    const/4 v0, 0x0

    .line 192
    :cond_e
    :goto_e
    return v0

    .line 184
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_29

    .line 185
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_e

    .line 186
    add-int v2, v0, v1

    aget-short v2, p0, v2

    aget-short v3, p1, v1

    if-eq v2, v3, :cond_26

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 185
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 192
    .end local v1    # "j":I
    :cond_29
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static varargs join(Ljava/lang/String;[S)Ljava/lang/String;
    .registers 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [S

    .prologue
    .line 389
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    array-length v2, p1

    if-nez v2, :cond_9

    .line 391
    const-string v2, ""

    .line 400
    :goto_8
    return-object v2

    .line 395
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 396
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-short v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 398
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-short v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 400
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static lastIndexOf([SS)I
    .registers 4
    .param p0, "array"    # [S
    .param p1, "target"    # S

    .prologue
    .line 204
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([SSII)I
    .registers 6
    .param p0, "array"    # [S
    .param p1, "target"    # S
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 209
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 210
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 214
    .end local v0    # "i":I
    :goto_8
    return v0

    .line 209
    .restart local v0    # "i":I
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 214
    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[S>;"
        }
    .end annotation

    .prologue
    .line 417
    sget-object v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([S)S
    .registers 5
    .param p0, "array"    # [S

    .prologue
    const/4 v3, 0x0

    .line 245
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 246
    aget-short v1, p0, v3

    .line 247
    .local v1, "max":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 248
    aget-short v2, p0, v0

    if-le v2, v1, :cond_14

    .line 249
    aget-short v1, p0, v0

    .line 247
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "max":S
    :cond_17
    move v2, v3

    .line 245
    goto :goto_5

    .line 252
    .restart local v0    # "i":I
    .restart local v1    # "max":S
    :cond_19
    return v1
.end method

.method public static varargs min([S)S
    .registers 5
    .param p0, "array"    # [S

    .prologue
    const/4 v3, 0x0

    .line 226
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 227
    aget-short v1, p0, v3

    .line 228
    .local v1, "min":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 229
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_14

    .line 230
    aget-short v1, p0, v0

    .line 228
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "min":S
    :cond_17
    move v2, v3

    .line 226
    goto :goto_5

    .line 233
    .restart local v0    # "i":I
    .restart local v1    # "min":S
    :cond_19
    return v1
.end method

.method public static saturatedCast(J)S
    .registers 4
    .param p0, "value"    # J

    .prologue
    .line 101
    const-wide/16 v0, 0x7fff

    cmp-long v0, p0, v0

    if-lez v0, :cond_9

    .line 102
    const/16 v0, 0x7fff

    .line 107
    :goto_8
    return v0

    .line 104
    :cond_9
    const-wide/16 v0, -0x8000

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    .line 105
    const/16 v0, -0x8000

    goto :goto_8

    .line 107
    :cond_12
    long-to-int v0, p0

    int-to-short v0, v0

    goto :goto_8
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .registers 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    sget-object v0, Lcom/google/common/primitives/Shorts$ShortConverter;->INSTANCE:Lcom/google/common/primitives/Shorts$ShortConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[S
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[S"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    if-eqz v4, :cond_b

    .line 456
    check-cast p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->toShortArray()[S

    move-result-object v0

    .line 466
    .local v0, "array":[S
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_a
    return-object v0

    .line 459
    .end local v0    # "array":[S
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 460
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 461
    .restart local v3    # "len":I
    new-array v0, v3, [S

    .line 462
    .restart local v0    # "array":[S
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_13
    if-ge v2, v3, :cond_a

    .line 464
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    aput-short v4, v0, v2

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public static toByteArray(S)[B
    .registers 4
    .param p0, "value"    # S
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method
