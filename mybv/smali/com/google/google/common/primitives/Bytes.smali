.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([BBII)I
    .registers 5
    .param p0, "x0"    # [B
    .param p1, "x1"    # B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([BBII)I
    .registers 5
    .param p0, "x0"    # [B
    .param p1, "x1"    # B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([B)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    array-length v0, p0

    if-nez v0, :cond_8

    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 239
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([B)V

    goto :goto_7
.end method

.method public static varargs concat([[B)[B
    .registers 10
    .param p0, "arrays"    # [[B

    .prologue
    .line 163
    const/4 v4, 0x0

    .line 164
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 165
    .local v1, "array":[B
    array-length v7, v1

    add-int/2addr v4, v7

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 167
    .end local v1    # "array":[B
    :cond_d
    new-array v6, v4, [B

    .line 168
    .local v6, "result":[B
    const/4 v5, 0x0

    .line 169
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 170
    .restart local v1    # "array":[B
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    array-length v7, v1

    add-int/2addr v5, v7

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 173
    .end local v1    # "array":[B
    :cond_21
    return-object v6
.end method

.method public static contains([BB)Z
    .registers 7
    .param p0, "array"    # [B
    .param p1, "target"    # B

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_e

    aget-byte v3, v0, v1

    .line 73
    .local v3, "value":B
    if-ne v3, p1, :cond_b

    .line 74
    const/4 v4, 0x1

    .line 77
    .end local v3    # "value":B
    :goto_a
    return v4

    .line 72
    .restart local v3    # "value":B
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 77
    .end local v3    # "value":B
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method public static ensureCapacity([BII)[B
    .registers 7
    .param p0, "array"    # [B
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    if-ltz p1, :cond_1b

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 191
    if-ltz p2, :cond_1d

    :goto_c
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 192
    array-length v0, p0

    if-ge v0, p1, :cond_1a

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .end local p0    # "array":[B
    :cond_1a
    return-object p0

    .restart local p0    # "array":[B
    :cond_1b
    move v0, v2

    .line 190
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 191
    goto :goto_c
.end method

.method public static hashCode(B)I
    .registers 1
    .param p0, "value"    # B

    .prologue
    .line 60
    return p0
.end method

.method public static indexOf([BB)I
    .registers 4
    .param p0, "array"    # [B
    .param p1, "target"    # B

    .prologue
    .line 89
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static indexOf([BBII)I
    .registers 6
    .param p0, "array"    # [B
    .param p1, "target"    # B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 94
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 95
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 99
    .end local v0    # "i":I
    :goto_7
    return v0

    .line 94
    .restart local v0    # "i":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_b
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static indexOf([B[B)I
    .registers 6
    .param p0, "array"    # [B
    .param p1, "target"    # [B

    .prologue
    .line 114
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    array-length v2, p1

    if-nez v2, :cond_f

    .line 117
    const/4 v0, 0x0

    .line 129
    :cond_e
    :goto_e
    return v0

    .line 121
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_29

    .line 122
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_e

    .line 123
    add-int v2, v0, v1

    aget-byte v2, p0, v2

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_26

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 122
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 129
    .end local v1    # "j":I
    :cond_29
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static lastIndexOf([BB)I
    .registers 4
    .param p0, "array"    # [B
    .param p1, "target"    # B

    .prologue
    .line 141
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([BBII)I
    .registers 6
    .param p0, "array"    # [B
    .param p1, "target"    # B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 146
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 147
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 151
    .end local v0    # "i":I
    :goto_8
    return v0

    .line 146
    .restart local v0    # "i":I
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 151
    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static toArray(Ljava/util/Collection;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    if-eqz v4, :cond_b

    .line 210
    check-cast p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->toByteArray()[B

    move-result-object v0

    .line 220
    .local v0, "array":[B
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_a
    return-object v0

    .line 213
    .end local v0    # "array":[B
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 214
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 215
    .restart local v3    # "len":I
    new-array v0, v3, [B

    .line 216
    .restart local v0    # "array":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_13
    if-ge v2, v3, :cond_a

    .line 218
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    aput-byte v4, v0, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method
