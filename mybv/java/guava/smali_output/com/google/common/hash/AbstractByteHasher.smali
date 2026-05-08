.class abstract Lcom/google/common/hash/AbstractByteHasher;
.super Lcom/google/common/hash/AbstractHasher;
.source "AbstractByteHasher.java"


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation


# instance fields
.field private final scratch:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHasher;-><init>()V

    .line 36
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private update(I)Lcom/google/common/hash/Hasher;
    .registers 4
    .param p1, "bytes"    # I

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/common/hash/AbstractByteHasher;->update([BII)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_10

    .line 86
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 88
    return-object p0

    .line 86
    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw v0
.end method


# virtual methods
.method public putByte(B)Lcom/google/common/hash/Hasher;
    .registers 2
    .param p1, "b"    # B

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->update(B)V

    .line 62
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # B

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putBytes([B)Lcom/google/common/hash/Hasher;
    .registers 2
    .param p1, "bytes"    # [B

    .prologue
    .line 67
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->update([B)V

    .line 69
    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 74
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractByteHasher;->update([BII)V

    .line 76
    return-object p0
.end method

.method public bridge synthetic putBytes([B)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # [B

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .registers 5
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractByteHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 112
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractByteHasher;->update(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # C

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 100
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractByteHasher;->update(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .registers 4
    .param p1, "l"    # J

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 106
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractByteHasher;->update(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .registers 4
    .param p1, "x0"    # J

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractByteHasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;)",
            "Lcom/google/common/hash/Hasher;"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-interface {p2, p1, p0}, Lcom/google/common/hash/Funnel;->funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V

    .line 118
    return-object p0
.end method

.method public putShort(S)Lcom/google/common/hash/Hasher;
    .registers 3
    .param p1, "s"    # S

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 94
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractByteHasher;->update(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # S

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method protected abstract update(B)V
.end method

.method protected update([B)V
    .registers 4
    .param p1, "b"    # [B

    .prologue
    .line 47
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/hash/AbstractByteHasher;->update([BII)V

    .line 48
    return-void
.end method

.method protected update([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 54
    move v0, p2

    .local v0, "i":I
    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_d

    .line 55
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/hash/AbstractByteHasher;->update(B)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_d
    return-void
.end method
