.class final Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;
.super Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;
.source "Murmur3_32HashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Murmur3_32HashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Murmur3_32Hasher"
.end annotation


# static fields
.field private static final CHUNK_SIZE:I = 0x4


# instance fields
.field private h1:I

.field private length:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "seed"    # I

    .prologue
    .line 159
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;-><init>(I)V

    .line 160
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    .line 162
    return-void
.end method


# virtual methods
.method public makeHash()Lcom/google/common/hash/HashCode;
    .registers 3

    .prologue
    .line 183
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    # invokes: Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;
    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$200(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method protected process(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    # invokes: Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I
    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$000(I)I

    move-result v0

    .line 167
    .local v0, "k1":I
    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    # invokes: Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I
    invoke-static {v1, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$100(II)I

    move-result v1

    iput v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 168
    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    .line 169
    return-void
.end method

.method protected processRemaining(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 173
    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "k1":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 176
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    shl-int/2addr v2, v0

    xor-int/2addr v1, v2

    .line 175
    add-int/lit8 v0, v0, 0x8

    goto :goto_b

    .line 178
    :cond_1e
    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    # invokes: Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I
    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$000(I)I

    move-result v3

    xor-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 179
    return-void
.end method
