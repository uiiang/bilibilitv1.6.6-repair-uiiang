.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "Floats.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Floats$FloatArrayAsList;,
        Lcom/google/common/primitives/Floats$LexicographicalComparator;,
        Lcom/google/common/primitives/Floats$FloatConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([FFII)I
    .registers 5
    .param p0, "x0"    # [F
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([FFII)I
    .registers 5
    .param p0, "x0"    # [F
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([F)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    array-length v0, p0

    if-nez v0, :cond_8

    .line 427
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 429
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;-><init>([F)V

    goto :goto_7
.end method

.method public static compare(FF)I
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 90
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[F)[F
    .registers 10
    .param p0, "arrays"    # [[F

    .prologue
    .line 247
    const/4 v4, 0x0

    .line 248
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[F
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 249
    .local v1, "array":[F
    array-length v7, v1

    add-int/2addr v4, v7

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 251
    .end local v1    # "array":[F
    :cond_d
    new-array v6, v4, [F

    .line 252
    .local v6, "result":[F
    const/4 v5, 0x0

    .line 253
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 254
    .restart local v1    # "array":[F
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    array-length v7, v1

    add-int/2addr v5, v7

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 257
    .end local v1    # "array":[F
    :cond_21
    return-object v6
.end method

.method public static contains([FF)Z
    .registers 7
    .param p0, "array"    # [F
    .param p1, "target"    # F

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "arr$":[F
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_10

    aget v3, v0, v1

    .line 117
    .local v3, "value":F
    cmpl-float v4, v3, p1

    if-nez v4, :cond_d

    .line 118
    const/4 v4, 0x1

    .line 121
    .end local v3    # "value":F
    :goto_c
    return v4

    .line 116
    .restart local v3    # "value":F
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 121
    .end local v3    # "value":F
    :cond_10
    const/4 v4, 0x0

    goto :goto_c
.end method

.method public static ensureCapacity([FII)[F
    .registers 7
    .param p0, "array"    # [F
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 311
    if-ltz p1, :cond_1b

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 312
    if-ltz p2, :cond_1d

    :goto_c
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 313
    array-length v0, p0

    if-ge v0, p1, :cond_1a

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    .end local p0    # "array":[F
    :cond_1a
    return-object p0

    .restart local p0    # "array":[F
    :cond_1b
    move v0, v2

    .line 311
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 312
    goto :goto_c
.end method

.method public static hashCode(F)I
    .registers 2
    .param p0, "value"    # F

    .prologue
    .line 73
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([FF)I
    .registers 4
    .param p0, "array"    # [F
    .param p1, "target"    # F

    .prologue
    .line 134
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static indexOf([FFII)I
    .registers 6
    .param p0, "array"    # [F
    .param p1, "target"    # F
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 139
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_d

    .line 140
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_a

    .line 144
    .end local v0    # "i":I
    :goto_9
    return v0

    .line 139
    .restart local v0    # "i":I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 144
    :cond_d
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static indexOf([F[F)I
    .registers 6
    .param p0, "array"    # [F
    .param p1, "target"    # [F

    .prologue
    .line 161
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    array-length v2, p1

    if-nez v2, :cond_f

    .line 164
    const/4 v0, 0x0

    .line 176
    :cond_e
    :goto_e
    return v0

    .line 168
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2b

    .line 169
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_e

    .line 170
    add-int v2, v0, v1

    aget v2, p0, v2

    aget v3, p1, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_28

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 169
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 176
    .end local v1    # "j":I
    :cond_2b
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static isFinite(F)Z
    .registers 5
    .param p0, "value"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    cmpg-float v2, v2, p0

    if-gez v2, :cond_11

    move v2, v0

    :goto_9
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v3, p0, v3

    if-gez v3, :cond_13

    :goto_f
    and-int/2addr v0, v2

    return v0

    :cond_11
    move v2, v1

    goto :goto_9

    :cond_13
    move v0, v1

    goto :goto_f
.end method

.method public static varargs join(Ljava/lang/String;[F)Ljava/lang/String;
    .registers 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [F

    .prologue
    .line 330
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    array-length v2, p1

    if-nez v2, :cond_9

    .line 332
    const-string v2, ""

    .line 341
    :goto_8
    return-object v2

    .line 336
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 337
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 338
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 339
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 341
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static lastIndexOf([FF)I
    .registers 4
    .param p0, "array"    # [F
    .param p1, "target"    # F

    .prologue
    .line 189
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([FFII)I
    .registers 6
    .param p0, "array"    # [F
    .param p1, "target"    # F
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 194
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_e

    .line 195
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_b

    .line 199
    .end local v0    # "i":I
    :goto_a
    return v0

    .line 194
    .restart local v0    # "i":I
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 199
    :cond_e
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[F>;"
        }
    .end annotation

    .prologue
    .line 358
    sget-object v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Floats$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([F)F
    .registers 5
    .param p0, "array"    # [F

    .prologue
    const/4 v3, 0x0

    .line 230
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 231
    aget v1, p0, v3

    .line 232
    .local v1, "max":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 233
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "max":F
    :cond_17
    move v2, v3

    .line 230
    goto :goto_5

    .line 235
    .restart local v0    # "i":I
    .restart local v1    # "max":F
    :cond_19
    return v1
.end method

.method public static varargs min([F)F
    .registers 5
    .param p0, "array"    # [F

    .prologue
    const/4 v3, 0x0

    .line 212
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 213
    aget v1, p0, v3

    .line 214
    .local v1, "min":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 215
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "min":F
    :cond_17
    move v2, v3

    .line 212
    goto :goto_5

    .line 217
    .restart local v0    # "i":I
    .restart local v1    # "min":F
    :cond_19
    return v1
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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    sget-object v0, Lcom/google/common/primitives/Floats$FloatConverter;->INSTANCE:Lcom/google/common/primitives/Floats$FloatConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[F
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[F"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    if-eqz v4, :cond_b

    .line 397
    check-cast p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->toFloatArray()[F

    move-result-object v0

    .line 407
    .local v0, "array":[F
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_a
    return-object v0

    .line 400
    .end local v0    # "array":[F
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 401
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 402
    .restart local v3    # "len":I
    new-array v0, v3, [F

    .line 403
    .restart local v0    # "array":[F
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_13
    if-ge v2, v3, :cond_a

    .line 405
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    aput v4, v0, v2

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 586
    sget-object v0, Lcom/google/common/primitives/Doubles;->FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 590
    :try_start_c
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_13} :catch_15

    move-result-object v0

    .line 596
    :goto_14
    return-object v0

    .line 591
    :catch_15
    move-exception v0

    .line 596
    :cond_16
    const/4 v0, 0x0

    goto :goto_14
.end method
