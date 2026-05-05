.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$LongArrayAsList;,
        Lcom/google/common/primitives/Longs$LexicographicalComparator;,
        Lcom/google/common/primitives/Longs$LongConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_POWER_OF_TWO:J = 0x4000000000000000L

.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 304
    invoke-static {}, Lcom/google/common/primitives/Longs;->createAsciiDigits()[B

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/Longs;->asciiDigits:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([JJII)I
    .registers 6
    .param p0, "x0"    # [J
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([JJII)I
    .registers 6
    .param p0, "x0"    # [J
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([J)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    array-length v0, p0

    if-nez v0, :cond_8

    .line 573
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 575
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([J)V

    goto :goto_7
.end method

.method public static compare(JJ)I
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 94
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static varargs concat([[J)[J
    .registers 10
    .param p0, "arrays"    # [[J

    .prologue
    .line 235
    const/4 v4, 0x0

    .line 236
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[J
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 237
    .local v1, "array":[J
    array-length v7, v1

    add-int/2addr v4, v7

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 239
    .end local v1    # "array":[J
    :cond_d
    new-array v6, v4, [J

    .line 240
    .local v6, "result":[J
    const/4 v5, 0x0

    .line 241
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 242
    .restart local v1    # "array":[J
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    array-length v7, v1

    add-int/2addr v5, v7

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 245
    .end local v1    # "array":[J
    :cond_21
    return-object v6
.end method

.method public static contains([JJ)Z
    .registers 10
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_10

    aget-wide v4, v0, v1

    .line 107
    .local v4, "value":J
    cmp-long v3, v4, p1

    if-nez v3, :cond_d

    .line 108
    const/4 v3, 0x1

    .line 111
    .end local v4    # "value":J
    :goto_c
    return v3

    .line 106
    .restart local v4    # "value":J
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 111
    .end local v4    # "value":J
    :cond_10
    const/4 v3, 0x0

    goto :goto_c
.end method

.method private static createAsciiDigits()[B
    .registers 4

    .prologue
    .line 307
    const/16 v2, 0x80

    new-array v1, v2, [B

    .line 308
    .local v1, "result":[B
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    const/16 v2, 0x9

    if-gt v0, v2, :cond_15

    .line 310
    add-int/lit8 v2, v0, 0x30

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 312
    :cond_15
    const/4 v0, 0x0

    :goto_16
    const/16 v2, 0x1a

    if-gt v0, v2, :cond_2b

    .line 313
    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 314
    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 316
    :cond_2b
    return-object v1
.end method

.method private static digit(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 320
    const/16 v0, 0x80

    if-ge p0, v0, :cond_9

    sget-object v0, Lcom/google/common/primitives/Longs;->asciiDigits:[B

    aget-byte v0, v0, p0

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static ensureCapacity([JII)[J
    .registers 7
    .param p0, "array"    # [J
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 465
    if-ltz p1, :cond_1b

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 466
    if-ltz p2, :cond_1d

    :goto_c
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 467
    array-length v0, p0

    if-ge v0, p1, :cond_1a

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    .end local p0    # "array":[J
    :cond_1a
    return-object p0

    .restart local p0    # "array":[J
    :cond_1b
    move v0, v2

    .line 465
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 466
    goto :goto_c
.end method

.method public static fromByteArray([B)J
    .registers 9
    .param p0, "bytes"    # [B

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    array-length v0, p0

    if-lt v0, v5, :cond_29

    move v0, v1

    :goto_8
    const-string v3, "array too small: %s < %s"

    array-length v4, p0

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 282
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    const/4 v6, 0x6

    aget-byte v6, p0, v6

    const/4 v7, 0x7

    aget-byte v7, p0, v7

    invoke-static/range {v0 .. v7}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0

    :cond_29
    move v0, v2

    .line 281
    goto :goto_8
.end method

.method public static fromBytes(BBBBBBBB)J
    .registers 16
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B
    .param p4, "b5"    # B
    .param p5, "b6"    # B
    .param p6, "b7"    # B
    .param p7, "b8"    # B

    .prologue
    const-wide/16 v6, 0xff

    .line 294
    int-to-long v0, p0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p1

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p3

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p4

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p5

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p6

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p7

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static hashCode(J)I
    .registers 4
    .param p0, "value"    # J

    .prologue
    .line 78
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static indexOf([JJ)I
    .registers 6
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .prologue
    .line 123
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static indexOf([JJII)I
    .registers 10
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 128
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_d

    .line 129
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_a

    .line 133
    .end local v0    # "i":I
    :goto_9
    return v0

    .line 128
    .restart local v0    # "i":I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_d
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static indexOf([J[J)I
    .registers 8
    .param p0, "array"    # [J
    .param p1, "target"    # [J

    .prologue
    .line 148
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    array-length v2, p1

    if-nez v2, :cond_f

    .line 151
    const/4 v0, 0x0

    .line 163
    :cond_e
    :goto_e
    return v0

    .line 155
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2b

    .line 156
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_e

    .line 157
    add-int v2, v0, v1

    aget-wide v2, p0, v2

    aget-wide v4, p1, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_28

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 156
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 163
    .end local v1    # "j":I
    :cond_2b
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .registers 8
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [J

    .prologue
    .line 479
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    array-length v2, p1

    if-nez v2, :cond_9

    .line 481
    const-string v2, ""

    .line 490
    :goto_8
    return-object v2

    .line 485
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 486
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 487
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 488
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 490
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static lastIndexOf([JJ)I
    .registers 6
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .prologue
    .line 175
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([JJII)I
    .registers 10
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 180
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p3, :cond_e

    .line 181
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_b

    .line 185
    .end local v0    # "i":I
    :goto_a
    return v0

    .line 180
    .restart local v0    # "i":I
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 185
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
            "<[J>;"
        }
    .end annotation

    .prologue
    .line 507
    sget-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .registers 7
    .param p0, "array"    # [J

    .prologue
    const/4 v4, 0x0

    .line 216
    array-length v1, p0

    if-lez v1, :cond_19

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 217
    aget-wide v2, p0, v4

    .line 218
    .local v2, "max":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_1b

    .line 219
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_16

    .line 220
    aget-wide v2, p0, v0

    .line 218
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v2    # "max":J
    :cond_19
    move v1, v4

    .line 216
    goto :goto_5

    .line 223
    .restart local v0    # "i":I
    .restart local v2    # "max":J
    :cond_1b
    return-wide v2
.end method

.method public static varargs min([J)J
    .registers 7
    .param p0, "array"    # [J

    .prologue
    const/4 v4, 0x0

    .line 197
    array-length v1, p0

    if-lez v1, :cond_19

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 198
    aget-wide v2, p0, v4

    .line 199
    .local v2, "min":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_1b

    .line 200
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_16

    .line 201
    aget-wide v2, p0, v0

    .line 199
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v2    # "min":J
    :cond_19
    move v1, v4

    .line 197
    goto :goto_5

    .line 204
    .restart local v0    # "i":I
    .restart local v2    # "min":J
    :cond_1b
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    sget-object v0, Lcom/google/common/primitives/Longs$LongConverter;->INSTANCE:Lcom/google/common/primitives/Longs$LongConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v4, :cond_b

    .line 546
    check-cast p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->toLongArray()[J

    move-result-object v0

    .line 556
    .local v0, "array":[J
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_a
    return-object v0

    .line 549
    .end local v0    # "array":[J
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 550
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 551
    .restart local v3    # "len":I
    new-array v0, v3, [J

    .line 552
    .restart local v0    # "array":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_13
    if-ge v2, v3, :cond_a

    .line 554
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public static toByteArray(J)[B
    .registers 8
    .param p0, "value"    # J

    .prologue
    const/16 v4, 0x8

    .line 261
    new-array v1, v4, [B

    .line 262
    .local v1, "result":[B
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_12

    .line 263
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 264
    shr-long/2addr p0, v4

    .line 262
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 266
    :cond_12
    return-object v1
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 343
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/Longs;->tryParse(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 16
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v12, -0x8000000000000000L

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 369
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_13

    move-object v8, v10

    .line 406
    :goto_12
    return-object v8

    .line 372
    :cond_13
    const/4 v8, 0x2

    if-lt p1, v8, :cond_1a

    const/16 v8, 0x24

    if-le p1, v8, :cond_33

    .line 373
    :cond_1a
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "radix must be between MIN_RADIX and MAX_RADIX but was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 376
    :cond_33
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x2d

    if-ne v8, v11, :cond_46

    move v7, v5

    .line 377
    .local v7, "negative":Z
    :goto_3c
    if-eqz v7, :cond_48

    .line 378
    .local v5, "index":I
    :goto_3e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v5, v8, :cond_4a

    move-object v8, v10

    .line 379
    goto :goto_12

    .end local v5    # "index":I
    .end local v7    # "negative":Z
    :cond_46
    move v7, v9

    .line 376
    goto :goto_3c

    .restart local v7    # "negative":Z
    :cond_48
    move v5, v9

    .line 377
    goto :goto_3e

    .line 381
    .restart local v5    # "index":I
    :cond_4a
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/common/primitives/Longs;->digit(C)I

    move-result v4

    .line 382
    .local v4, "digit":I
    if-ltz v4, :cond_58

    if-lt v4, p1, :cond_5a

    :cond_58
    move-object v8, v10

    .line 383
    goto :goto_12

    .line 385
    :cond_5a
    neg-int v8, v4

    int-to-long v0, v8

    .line 387
    .local v0, "accum":J
    int-to-long v8, p1

    div-long v2, v12, v8

    .local v2, "cap":J
    move v5, v6

    .line 389
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :goto_60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_88

    .line 390
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/common/primitives/Longs;->digit(C)I

    move-result v4

    .line 391
    if-ltz v4, :cond_78

    if-ge v4, p1, :cond_78

    cmp-long v8, v0, v2

    if-gez v8, :cond_7a

    :cond_78
    move-object v8, v10

    .line 392
    goto :goto_12

    .line 394
    :cond_7a
    int-to-long v8, p1

    mul-long/2addr v0, v8

    .line 395
    int-to-long v8, v4

    add-long/2addr v8, v12

    cmp-long v8, v0, v8

    if-gez v8, :cond_84

    move-object v8, v10

    .line 396
    goto :goto_12

    .line 398
    :cond_84
    int-to-long v8, v4

    sub-long/2addr v0, v8

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_60

    .line 401
    :cond_88
    if-eqz v7, :cond_8f

    .line 402
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_12

    .line 403
    :cond_8f
    cmp-long v8, v0, v12

    if-nez v8, :cond_96

    move-object v8, v10

    .line 404
    goto/16 :goto_12

    .line 406
    :cond_96
    neg-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto/16 :goto_12
.end method
