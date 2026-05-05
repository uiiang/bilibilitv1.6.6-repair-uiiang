.class final Lcom/google/common/hash/MacHashFunction;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "MacHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/MacHashFunction$1;,
        Lcom/google/common/hash/MacHashFunction$MacHasher;
    }
.end annotation


# instance fields
.field private final bits:I

.field private final key:Ljava/security/Key;

.field private final prototype:Ljavax/crypto/Mac;

.field private final supportsClone:Z

.field private final toString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V
    .registers 5
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "toString"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 38
    invoke-static {p1, p2}, Lcom/google/common/hash/MacHashFunction;->getMac(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    .line 39
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    iput-object v0, p0, Lcom/google/common/hash/MacHashFunction;->key:Ljava/security/Key;

    .line 40
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/hash/MacHashFunction;->toString:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/hash/MacHashFunction;->bits:I

    .line 42
    iget-object v0, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    invoke-static {v0}, Lcom/google/common/hash/MacHashFunction;->supportsClone(Ljavax/crypto/Mac;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/hash/MacHashFunction;->supportsClone:Z

    .line 43
    return-void
.end method

.method private static getMac(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;
    .registers 5
    .param p0, "algorithmName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 61
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 62
    .local v1, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_7} :catch_f

    .line 63
    return-object v1

    .line 64
    .end local v1    # "mac":Ljavax/crypto/Mac;
    :catch_8
    move-exception v0

    .line 65
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 66
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_f
    move-exception v0

    .line 67
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static supportsClone(Ljavax/crypto/Mac;)Z
    .registers 3
    .param p0, "mac"    # Ljavax/crypto/Mac;

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    .line 53
    const/4 v1, 0x1

    .line 55
    :goto_4
    return v1

    .line 54
    :catch_5
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_4
.end method


# virtual methods
.method public bits()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/google/common/hash/MacHashFunction;->bits:I

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/google/common/hash/MacHashFunction;->supportsClone:Z

    if-eqz v0, :cond_16

    .line 75
    :try_start_5
    new-instance v1, Lcom/google/common/hash/MacHashFunction$MacHasher;

    iget-object v0, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/common/hash/MacHashFunction$MacHasher;-><init>(Ljavax/crypto/Mac;Lcom/google/common/hash/MacHashFunction$1;)V
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_13} :catch_15

    move-object v0, v1

    .line 80
    :goto_14
    return-object v0

    .line 76
    :catch_15
    move-exception v0

    .line 80
    :cond_16
    new-instance v0, Lcom/google/common/hash/MacHashFunction$MacHasher;

    iget-object v1, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/hash/MacHashFunction;->key:Ljava/security/Key;

    invoke-static {v1, v2}, Lcom/google/common/hash/MacHashFunction;->getMac(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/common/hash/MacHashFunction$MacHasher;-><init>(Ljavax/crypto/Mac;Lcom/google/common/hash/MacHashFunction$1;)V

    goto :goto_14
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/common/hash/MacHashFunction;->toString:Ljava/lang/String;

    return-object v0
.end method
