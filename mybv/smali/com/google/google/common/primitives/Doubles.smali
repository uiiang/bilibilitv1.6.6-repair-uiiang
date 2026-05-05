.class public final Lcom/google/common/primitives/Doubles;
.super Ljava/lang/Object;
.source "Doubles.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Doubles$DoubleArrayAsList;,
        Lcom/google/common/primitives/Doubles$LexicographicalComparator;,
        Lcom/google/common/primitives/Doubles$DoubleConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field static final FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 574
    invoke-static {}, Lcom/google/common/primitives/Doubles;->fpPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/Doubles;->FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([DDII)I
    .registers 6
    .param p0, "x0"    # [D
    .param p1, "x1"    # D
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([DDII)I
    .registers 6
    .param p0, "x0"    # [D
    .param p1, "x1"    # D
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([D)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    array-length v0, p0

    if-nez v0, :cond_8

    .line 429
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 431
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([D)V

    goto :goto_7
.end method

.method public static compare(DD)I
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 94
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[D)[D
    .registers 10
    .param p0, "arrays"    # [[D

    .prologue
    .line 250
    const/4 v4, 0x0

    .line 251
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[D
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 252
    .local v1, "array":[D
    array-length v7, v1

    add-int/2addr v4, v7

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 254
    .end local v1    # "array":[D
    :cond_d
    new-array v6, v4, [D

    .line 255
    .local v6, "result":[D
    const/4 v5, 0x0

    .line 256
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 257
    .restart local v1    # "array":[D
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    array-length v7, v1

    add-int/2addr v5, v7

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 260
    .end local v1    # "array":[D
    :cond_21
    return-object v6
.end method

.method public static contains([DD)Z
    .registers 10
    .param p0, "array"    # [D
    .param p1, "target"    # D

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "arr$":[D
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_10

    aget-wide v4, v0, v1

    .line 120
    .local v4, "value":D
    cmpl-double v3, v4, p1

    if-nez v3, :cond_d

    .line 121
    const/4 v3, 0x1

    .line 124
    .end local v4    # "value":D
    :goto_c
    return v3

    .line 119
    .restart local v4    # "value":D
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 124
    .end local v4    # "value":D
    :cond_10
    const/4 v3, 0x0

    goto :goto_c
.end method

.method public static ensureCapacity([DII)[D
    .registers 7
    .param p0, "array"    # [D
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    if-ltz p1, :cond_1b

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 315
    if-ltz p2, :cond_1d

    :goto_c
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 316
    array-length v0, p0

    if-ge v0, p1, :cond_1a

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p0

    .end local p0    # "array":[D
    :cond_1a
    return-object p0

    .restart local p0    # "array":[D
    :cond_1b
    move v0, v2

    .line 314
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 315
    goto :goto_c
.end method

.method private static fpPattern()Ljava/util/regex/Pattern;
    .registers 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 578
    const-string v2, "(?:\\d++(?:\\.\\d*+)?|\\.\\d++)"

    .line 579
    .local v2, "decimal":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(?:[eE][+-]?\\d++)?[fFdD]?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "completeDec":Ljava/lang/String;
    const-string v4, "(?:\\p{XDigit}++(?:\\.\\p{XDigit}*+)?|\\.\\p{XDigit}++)"

    .line 581
    .local v4, "hex":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0[xX]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[pP][+-]?\\d++[fFdD]?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "completeHex":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[+-]?(?:NaN|Infinity|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, "fpPattern":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    return-object v5
.end method

.method public static hashCode(D)I
    .registers 4
    .param p0, "value"    # D

    .prologue
    .line 73
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([DD)I
    .registers 6
    .param p0, "array"    # [D
    .param p1, "target"    # D

    .prologue
    .line 137
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static indexOf([DDII)I
    .registers 10
    .param p0, "array"    # [D
    .param p1, "target"    # D
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 142
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_d

    .line 143
    aget-wide v2, p0, v0

    cmpl-double v1, v2, p1

    if-nez v1, :cond_a

    .line 147
    .end local v0    # "i":I
    :goto_9
    return v0

    .line 142
    .restart local v0    # "i":I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_d
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static indexOf([D[D)I
    .registers 8
    .param p0, "array"    # [D
    .param p1, "target"    # [D

    .prologue
    .line 164
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    array-length v2, p1

    if-nez v2, :cond_f

    .line 167
    const/4 v0, 0x0

    .line 179
    :cond_e
    :goto_e
    return v0

    .line 171
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2b

    .line 172
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_e

    .line 173
    add-int v2, v0, v1

    aget-wide v2, p0, v2

    aget-wide v4, p1, v1

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_28

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 172
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 179
    .end local v1    # "j":I
    :cond_2b
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static isFinite(D)Z
    .registers 8
    .param p0, "value"    # D

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpg-double v2, v2, p0

    if-gez v2, :cond_11

    move v2, v0

    :goto_9
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v3, p0, v4

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

.method public static varargs join(Ljava/lang/String;[D)Ljava/lang/String;
    .registers 8
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [D

    .prologue
    .line 332
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    array-length v2, p1

    if-nez v2, :cond_9

    .line 334
    const-string v2, ""

    .line 343
    :goto_8
    return-object v2

    .line 338
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 339
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 340
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 341
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 343
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static lastIndexOf([DD)I
    .registers 6
    .param p0, "array"    # [D
    .param p1, "target"    # D

    .prologue
    .line 192
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([DDII)I
    .registers 10
    .param p0, "array"    # [D
    .param p1, "target"    # D
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 197
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p3, :cond_e

    .line 198
    aget-wide v2, p0, v0

    cmpl-double v1, v2, p1

    if-nez v1, :cond_b

    .line 202
    .end local v0    # "i":I
    :goto_a
    return v0

    .line 197
    .restart local v0    # "i":I
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 202
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
            "<[D>;"
        }
    .end annotation

    .prologue
    .line 360
    sget-object v0, Lcom/google/common/primitives/Doubles$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([D)D
    .registers 7
    .param p0, "array"    # [D

    .prologue
    const/4 v4, 0x0

    .line 233
    array-length v1, p0

    if-lez v1, :cond_17

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 234
    aget-wide v2, p0, v4

    .line 235
    .local v2, "max":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_19

    .line 236
    aget-wide v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v2    # "max":D
    :cond_17
    move v1, v4

    .line 233
    goto :goto_5

    .line 238
    .restart local v0    # "i":I
    .restart local v2    # "max":D
    :cond_19
    return-wide v2
.end method

.method public static varargs min([D)D
    .registers 7
    .param p0, "array"    # [D

    .prologue
    const/4 v4, 0x0

    .line 215
    array-length v1, p0

    if-lez v1, :cond_17

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 216
    aget-wide v2, p0, v4

    .line 217
    .local v2, "min":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_19

    .line 218
    aget-wide v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v2    # "min":D
    :cond_17
    move v1, v4

    .line 215
    goto :goto_5

    .line 220
    .restart local v0    # "i":I
    .restart local v2    # "min":D
    :cond_19
    return-wide v2
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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    sget-object v0, Lcom/google/common/primitives/Doubles$DoubleConverter;->INSTANCE:Lcom/google/common/primitives/Doubles$DoubleConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[D
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[D"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    if-eqz v4, :cond_b

    .line 399
    check-cast p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->toDoubleArray()[D

    move-result-object v0

    .line 409
    .local v0, "array":[D
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_a
    return-object v0

    .line 402
    .end local v0    # "array":[D
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 403
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 404
    .restart local v3    # "len":I
    new-array v0, v3, [D

    .line 405
    .restart local v0    # "array":[D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_13
    if-ge v2, v3, :cond_a

    .line 407
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3
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
    .line 607
    sget-object v0, Lcom/google/common/primitives/Doubles;->FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 611
    :try_start_c
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_13} :catch_15

    move-result-object v0

    .line 617
    :goto_14
    return-object v0

    .line 612
    :catch_15
    move-exception v0

    .line 617
    :cond_16
    const/4 v0, 0x0

    goto :goto_14
.end method
