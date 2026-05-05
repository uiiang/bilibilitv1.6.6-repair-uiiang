.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "Chars.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Chars$CharArrayAsList;,
        Lcom/google/common/primitives/Chars$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([CCII)I
    .registers 5
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([CCII)I
    .registers 5
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([C)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    array-length v0, p0

    if-nez v0, :cond_8

    .line 435
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 437
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([C)V

    goto :goto_7
.end method

.method public static checkedCast(J)C
    .registers 6
    .param p0, "value"    # J

    .prologue
    .line 80
    long-to-int v1, p0

    int-to-char v0, v1

    .line 81
    .local v0, "result":C
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-eqz v1, :cond_20

    .line 83
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

    .line 85
    :cond_20
    return v0
.end method

.method public static compare(CC)I
    .registers 3
    .param p0, "a"    # C
    .param p1, "b"    # C

    .prologue
    .line 119
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[C)[C
    .registers 10
    .param p0, "arrays"    # [[C

    .prologue
    .line 260
    const/4 v4, 0x0

    .line 261
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 262
    .local v1, "array":[C
    array-length v7, v1

    add-int/2addr v4, v7

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 264
    .end local v1    # "array":[C
    :cond_d
    new-array v6, v4, [C

    .line 265
    .local v6, "result":[C
    const/4 v5, 0x0

    .line 266
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 267
    .restart local v1    # "array":[C
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    array-length v7, v1

    add-int/2addr v5, v7

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 270
    .end local v1    # "array":[C
    :cond_21
    return-object v6
.end method

.method public static contains([CC)Z
    .registers 7
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "arr$":[C
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_e

    aget-char v3, v0, v1

    .line 132
    .local v3, "value":C
    if-ne v3, p1, :cond_b

    .line 133
    const/4 v4, 0x1

    .line 136
    .end local v3    # "value":C
    :goto_a
    return v4

    .line 131
    .restart local v3    # "value":C
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 136
    .end local v3    # "value":C
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method public static ensureCapacity([CII)[C
    .registers 7
    .param p0, "array"    # [C
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 328
    if-ltz p1, :cond_1b

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 329
    if-ltz p2, :cond_1d

    :goto_c
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 330
    array-length v0, p0

    if-ge v0, p1, :cond_1a

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p0

    .end local p0    # "array":[C
    :cond_1a
    return-object p0

    .restart local p0    # "array":[C
    :cond_1b
    move v0, v2

    .line 328
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 329
    goto :goto_c
.end method

.method public static fromByteArray([B)C
    .registers 7
    .param p0, "bytes"    # [B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 299
    array-length v0, p0

    if-lt v0, v5, :cond_16

    move v0, v1

    :goto_7
    const-string v3, "array too small: %s < %s"

    array-length v4, p0

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 300
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Chars;->fromBytes(BB)C

    move-result v0

    return v0

    :cond_16
    move v0, v2

    .line 299
    goto :goto_7
.end method

.method public static fromBytes(BB)C
    .registers 4
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 311
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static hashCode(C)I
    .registers 1
    .param p0, "value"    # C

    .prologue
    .line 68
    return p0
.end method

.method public static indexOf([CC)I
    .registers 4
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .prologue
    .line 148
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static indexOf([CCII)I
    .registers 6
    .param p0, "array"    # [C
    .param p1, "target"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 153
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 154
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 158
    .end local v0    # "i":I
    :goto_7
    return v0

    .line 153
    .restart local v0    # "i":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_b
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static indexOf([C[C)I
    .registers 6
    .param p0, "array"    # [C
    .param p1, "target"    # [C

    .prologue
    .line 173
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    array-length v2, p1

    if-nez v2, :cond_f

    .line 176
    const/4 v0, 0x0

    .line 188
    :cond_e
    :goto_e
    return v0

    .line 180
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_29

    .line 181
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_e

    .line 182
    add-int v2, v0, v1

    aget-char v2, p0, v2

    aget-char v3, p1, v1

    if-eq v2, v3, :cond_26

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 181
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 188
    .end local v1    # "j":I
    :cond_29
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static varargs join(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 7
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [C

    .prologue
    .line 342
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    array-length v2, p1

    .line 344
    .local v2, "len":I
    if-nez v2, :cond_9

    .line 345
    const-string v3, ""

    .line 353
    :goto_8
    return-object v3

    .line 348
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 349
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    aget-char v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1d
    if-ge v1, v2, :cond_2b

    .line 351
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 353
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public static lastIndexOf([CC)I
    .registers 4
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .prologue
    .line 200
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([CCII)I
    .registers 6
    .param p0, "array"    # [C
    .param p1, "target"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 205
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 206
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 210
    .end local v0    # "i":I
    :goto_8
    return v0

    .line 205
    .restart local v0    # "i":I
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 210
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
            "<[C>;"
        }
    .end annotation

    .prologue
    .line 370
    sget-object v0, Lcom/google/common/primitives/Chars$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Chars$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([C)C
    .registers 5
    .param p0, "array"    # [C

    .prologue
    const/4 v3, 0x0

    .line 241
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 242
    aget-char v1, p0, v3

    .line 243
    .local v1, "max":C
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 244
    aget-char v2, p0, v0

    if-le v2, v1, :cond_14

    .line 245
    aget-char v1, p0, v0

    .line 243
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "max":C
    :cond_17
    move v2, v3

    .line 241
    goto :goto_5

    .line 248
    .restart local v0    # "i":I
    .restart local v1    # "max":C
    :cond_19
    return v1
.end method

.method public static varargs min([C)C
    .registers 5
    .param p0, "array"    # [C

    .prologue
    const/4 v3, 0x0

    .line 222
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 223
    aget-char v1, p0, v3

    .line 224
    .local v1, "min":C
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 225
    aget-char v2, p0, v0

    if-ge v2, v1, :cond_14

    .line 226
    aget-char v1, p0, v0

    .line 224
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "min":C
    :cond_17
    move v2, v3

    .line 222
    goto :goto_5

    .line 229
    .restart local v0    # "i":I
    .restart local v1    # "min":C
    :cond_19
    return v1
.end method

.method public static saturatedCast(J)C
    .registers 4
    .param p0, "value"    # J

    .prologue
    .line 97
    const-wide/32 v0, 0xffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    .line 98
    const v0, 0xffff

    .line 103
    :goto_a
    return v0

    .line 100
    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 101
    const/4 v0, 0x0

    goto :goto_a

    .line 103
    :cond_13
    long-to-int v0, p0

    int-to-char v0, v0

    goto :goto_a
.end method

.method public static toArray(Ljava/util/Collection;)[C
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    if-eqz v4, :cond_b

    .line 408
    check-cast p0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->toCharArray()[C

    move-result-object v0

    .line 418
    .local v0, "array":[C
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    :cond_a
    return-object v0

    .line 411
    .end local v0    # "array":[C
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 412
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 413
    .restart local v3    # "len":I
    new-array v0, v3, [C

    .line 414
    .restart local v0    # "array":[C
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_13
    if-ge v2, v3, :cond_a

    .line 416
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v0, v2

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public static toByteArray(C)[B
    .registers 4
    .param p0, "value"    # C
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 284
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
