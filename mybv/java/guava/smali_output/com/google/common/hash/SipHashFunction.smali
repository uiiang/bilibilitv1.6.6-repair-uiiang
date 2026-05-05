.class final Lcom/google/common/hash/SipHashFunction;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "SipHashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/SipHashFunction$SipHasher;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final c:I

.field private final d:I

.field private final k0:J

.field private final k1:J


# direct methods
.method constructor <init>(IIJJ)V
    .registers 12
    .param p1, "c"    # I
    .param p2, "d"    # I
    .param p3, "k0"    # J
    .param p5, "k1"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 52
    if-lez p1, :cond_1d

    move v0, v1

    :goto_8
    const-string v3, "The number of SipRound iterations (c=%s) during Compression must be positive."

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 54
    if-lez p2, :cond_1f

    :goto_f
    const-string v0, "The number of SipRound iterations (d=%s) during Finalization must be positive."

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 56
    iput p1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    .line 57
    iput p2, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    .line 58
    iput-wide p3, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    .line 59
    iput-wide p5, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    .line 60
    return-void

    :cond_1d
    move v0, v2

    .line 52
    goto :goto_8

    :cond_1f
    move v1, v2

    .line 54
    goto :goto_f
.end method


# virtual methods
.method public bits()I
    .registers 2

    .prologue
    .line 64
    const/16 v0, 0x40

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 81
    instance-of v2, p1, Lcom/google/common/hash/SipHashFunction;

    if-eqz v2, :cond_25

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/google/common/hash/SipHashFunction;

    .line 83
    .local v0, "other":Lcom/google/common/hash/SipHashFunction;
    iget v2, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    iget v3, v0, Lcom/google/common/hash/SipHashFunction;->c:I

    if-ne v2, v3, :cond_25

    iget v2, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    iget v3, v0, Lcom/google/common/hash/SipHashFunction;->d:I

    if-ne v2, v3, :cond_25

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    iget-wide v4, v0, Lcom/google/common/hash/SipHashFunction;->k0:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_25

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    iget-wide v4, v0, Lcom/google/common/hash/SipHashFunction;->k1:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_25

    const/4 v1, 0x1

    .line 88
    .end local v0    # "other":Lcom/google/common/hash/SipHashFunction;
    :cond_25
    return v1
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    xor-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .registers 9

    .prologue
    .line 69
    new-instance v1, Lcom/google/common/hash/SipHashFunction$SipHasher;

    iget v2, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    iget v3, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    iget-wide v4, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    iget-wide v6, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    invoke-direct/range {v1 .. v7}, Lcom/google/common/hash/SipHashFunction$SipHasher;-><init>(IIJJ)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hashing.sipHash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
