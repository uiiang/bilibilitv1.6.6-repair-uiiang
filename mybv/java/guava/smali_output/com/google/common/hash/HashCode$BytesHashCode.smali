.class final Lcom/google/common/hash/HashCode$BytesHashCode;
.super Lcom/google/common/hash/HashCode;
.source "HashCode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BytesHashCode"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final bytes:[B


# direct methods
.method constructor <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    .line 263
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    .line 264
    return-void
.end method


# virtual methods
.method public asBytes()[B
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public asInt()I
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v0, v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_35

    move v0, v1

    :goto_9
    const-string v3, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes)."

    iget-object v4, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v4, v4

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 282
    iget-object v0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0

    :cond_35
    move v0, v2

    .line 278
    goto :goto_9
.end method

.method public asLong()J
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_8
    const-string v1, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes)."

    iget-object v2, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 294
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode$BytesHashCode;->padToLong()J

    move-result-wide v0

    return-wide v0

    .line 290
    :cond_15
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public bits()I
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method equalsSameBits(Lcom/google/common/hash/HashCode;)Z
    .registers 7
    .param p1, "that"    # Lcom/google/common/hash/HashCode;

    .prologue
    const/4 v3, 0x0

    .line 320
    iget-object v2, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v2, v2

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v4

    array-length v4, v4

    if-eq v2, v4, :cond_c

    .line 328
    :goto_b
    return v3

    .line 324
    :cond_c
    const/4 v0, 0x1

    .line 325
    .local v0, "areEqual":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v2, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v2, v2

    if-ge v1, v2, :cond_26

    .line 326
    iget-object v2, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    aget-byte v2, v2, v1

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v4

    aget-byte v4, v4, v1

    if-ne v2, v4, :cond_24

    const/4 v2, 0x1

    :goto_20
    and-int/2addr v0, v2

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_24
    move v2, v3

    .line 326
    goto :goto_20

    :cond_26
    move v3, v0

    .line 328
    goto :goto_b
.end method

.method getBytesInternal()[B
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    return-object v0
.end method

.method public padToLong()J
    .registers 9

    .prologue
    .line 299
    iget-object v1, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    const/4 v4, 0x0

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    .line 300
    .local v2, "retVal":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v1, v1

    const/16 v4, 0x8

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 301
    iget-object v1, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    aget-byte v1, v1, v0

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v1, v0, 0x8

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 303
    :cond_23
    return-wide v2
.end method

.method writeBytesToImpl([BII)V
    .registers 6
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    return-void
.end method
