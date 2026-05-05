.class final Lcom/google/common/hash/MessageDigestHashFunction;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "MessageDigestHashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/MessageDigestHashFunction$1;,
        Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;,
        Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;
    }
.end annotation


# instance fields
.field private final bytes:I

.field private final prototype:Ljava/security/MessageDigest;

.field private final supportsClone:Z

.field private final toString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "bytes"    # I
    .param p3, "toString"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 47
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->toString:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/google/common/hash/MessageDigestHashFunction;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    .line 49
    iget-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    .line 50
    .local v0, "maxLength":I
    const/4 v1, 0x4

    if-lt p2, v1, :cond_2d

    if-gt p2, v0, :cond_2d

    const/4 v1, 0x1

    :goto_1d
    const-string v2, "bytes (%s) must be >= 4 and < %s"

    invoke-static {v1, v2, p2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 52
    iput p2, p0, Lcom/google/common/hash/MessageDigestHashFunction;->bytes:I

    .line 53
    iget-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    invoke-static {v1}, Lcom/google/common/hash/MessageDigestHashFunction;->supportsClone(Ljava/security/MessageDigest;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->supportsClone:Z

    .line 54
    return-void

    .line 50
    :cond_2d
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "toString"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/google/common/hash/MessageDigestHashFunction;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    .line 41
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->bytes:I

    .line 42
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->toString:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    invoke-static {v0}, Lcom/google/common/hash/MessageDigestHashFunction;->supportsClone(Ljava/security/MessageDigest;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->supportsClone:Z

    .line 44
    return-void
.end method

.method private static getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 3
    .param p0, "algorithmName"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 78
    :catch_5
    move-exception v0

    .line 79
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static supportsClone(Ljava/security/MessageDigest;)Z
    .registers 3
    .param p0, "digest"    # Ljava/security/MessageDigest;

    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    .line 59
    const/4 v1, 0x1

    .line 61
    :goto_4
    return v1

    .line 60
    :catch_5
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_4
.end method


# virtual methods
.method public bits()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->bytes:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-boolean v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->supportsClone:Z

    if-eqz v0, :cond_18

    .line 87
    :try_start_5
    new-instance v1, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;

    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    iget v2, p0, Lcom/google/common/hash/MessageDigestHashFunction;->bytes:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;-><init>(Ljava/security/MessageDigest;ILcom/google/common/hash/MessageDigestHashFunction$1;)V
    :try_end_15
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_15} :catch_17

    move-object v0, v1

    .line 92
    :goto_16
    return-object v0

    .line 88
    :catch_17
    move-exception v0

    .line 92
    :cond_18
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;

    iget-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/hash/MessageDigestHashFunction;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget v2, p0, Lcom/google/common/hash/MessageDigestHashFunction;->bytes:I

    invoke-direct {v0, v1, v2, v4}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;-><init>(Ljava/security/MessageDigest;ILcom/google/common/hash/MessageDigestHashFunction$1;)V

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->toString:Ljava/lang/String;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 114
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;

    iget-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/common/hash/MessageDigestHashFunction;->bytes:I

    iget-object v3, p0, Lcom/google/common/hash/MessageDigestHashFunction;->toString:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/common/hash/MessageDigestHashFunction$1;)V

    return-object v0
.end method
