.class public final Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;
.super Ljava/lang/Object;
.source "AesFlushingCipher.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blockSize:I

.field private final cipher:Ljavax/crypto/Cipher;

.field private final flushedBlock:[B

.field private pendingXorBytes:I

.field private final zerosBlock:[B


# direct methods
.method public constructor <init>(I[BJJ)V
    .registers 15
    .param p1, "mode"    # I
    .param p2, "secretKey"    # [B
    .param p3, "nonce"    # J
    .param p5, "offset"    # J

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    :try_start_3
    const-string v0, "AES/CTR/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    .line 59
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    .line 60
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->zerosBlock:[B

    .line 61
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    .line 62
    int-to-long v2, v1

    div-long v2, p5, v2

    .line 63
    .local v2, "counter":J
    int-to-long v4, v1

    rem-long v4, p5, v4

    long-to-int v1, v4

    .line 64
    .local v1, "startPadding":I
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 66
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v4, p2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    .line 67
    invoke-direct {p0, p3, p4, v2, v3}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->getInitializationVector(JJ)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 64
    invoke-virtual {v0, p1, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 68
    if-eqz v1, :cond_45

    .line 69
    new-array v0, v1, [B

    invoke-virtual {p0, v0, v6, v1}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->updateInPlace([BII)V
    :try_end_45
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_45} :catch_4d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_45} :catch_4b
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_45} :catch_49
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_45} :catch_47

    .line 77
    .end local v1    # "startPadding":I
    .end local v2    # "counter":J
    :cond_45
    nop

    .line 78
    return-void

    .line 71
    :catch_47
    move-exception v0

    goto :goto_4e

    :catch_49
    move-exception v0

    goto :goto_4e

    :catch_4b
    move-exception v0

    goto :goto_4e

    :catch_4d
    move-exception v0

    .line 76
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_4e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(I[BLjava/lang/String;J)V
    .registers 13
    .param p1, "mode"    # I
    .param p2, "secretKey"    # [B
    .param p3, "nonce"    # Ljava/lang/String;
    .param p4, "offset"    # J

    .line 53
    invoke-static {p3}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->getFNV64Hash(Ljava/lang/String;)J

    move-result-wide v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;-><init>(I[BJJ)V

    .line 54
    return-void
.end method

.method private static getFNV64Hash(Ljava/lang/String;)J
    .registers 8
    .param p0, "input"    # Ljava/lang/String;

    .line 142
    if-nez p0, :cond_5

    .line 143
    const-wide/16 v0, 0x0

    return-wide v0

    .line 146
    :cond_5
    const-wide/16 v0, 0x0

    .line 147
    .local v0, "hash":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 148
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v0, v3

    .line 150
    const/4 v3, 0x1

    shl-long v3, v0, v3

    const/4 v5, 0x4

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/4 v5, 0x5

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/4 v5, 0x7

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/16 v5, 0x8

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    const/16 v5, 0x28

    shl-long v5, v0, v5

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 152
    .end local v2    # "i":I
    :cond_31
    return-wide v0
.end method

.method private getInitializationVector(JJ)[B
    .registers 6
    .param p1, "nonce"    # J
    .param p3, "counter"    # J

    .line 133
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private nonFlushingUpdate([BII[BI)I
    .registers 12
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "length"    # I
    .param p4, "out"    # [B
    .param p5, "outOffset"    # I

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0
    :try_end_b
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    .line 126
    :catch_c
    move-exception v0

    .line 128
    .local v0, "e":Ljavax/crypto/ShortBufferException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public update([BII[BI)V
    .registers 20
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "length"    # I
    .param p4, "out"    # [B
    .param p5, "outOffset"    # I

    .line 88
    move-object v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    .end local p2    # "inOffset":I
    .end local p3    # "length":I
    .end local p5    # "outOffset":I
    .local v7, "inOffset":I
    .local v8, "length":I
    .local v9, "outOffset":I
    :cond_7
    iget v0, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    if-lez v0, :cond_25

    .line 89
    aget-byte v1, p1, v7

    iget-object v2, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    iget v3, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    sub-int/2addr v3, v0

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v9

    .line 90
    add-int/lit8 v9, v9, 0x1

    .line 91
    add-int/lit8 v7, v7, 0x1

    .line 92
    add-int/lit8 v0, v0, -0x1

    iput v0, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    .line 93
    add-int/lit8 v8, v8, -0x1

    .line 94
    if-nez v8, :cond_7

    .line 95
    return-void

    .line 100
    :cond_25
    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v8

    move-object/from16 v4, p4

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->nonFlushingUpdate([BII[BI)I

    move-result v10

    .line 101
    .local v10, "written":I
    if-ne v8, v10, :cond_33

    .line 102
    return-void

    .line 110
    :cond_33
    sub-int v11, v8, v10

    .line 111
    .local v11, "bytesToFlush":I
    iget v0, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v11, v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 112
    add-int/2addr v9, v10

    .line 113
    iget v0, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    sub-int v3, v0, v11

    iput v3, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    .line 114
    iget-object v1, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->zerosBlock:[B

    const/4 v2, 0x0

    iget-object v4, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->nonFlushingUpdate([BII[BI)I

    move-result v0

    .line 115
    .end local v10    # "written":I
    .local v0, "written":I
    iget v1, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    if-ne v0, v1, :cond_58

    const/4 v12, 0x1

    :cond_58
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5c
    if-ge v1, v11, :cond_6a

    .line 119
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "outOffset":I
    .local v2, "outOffset":I
    iget-object v3, v6, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    aget-byte v3, v3, v1

    aput-byte v3, p4, v9

    .line 118
    add-int/lit8 v1, v1, 0x1

    move v9, v2

    goto :goto_5c

    .line 121
    .end local v1    # "i":I
    .end local v2    # "outOffset":I
    .restart local v9    # "outOffset":I
    :cond_6a
    return-void
.end method

.method public updateInPlace([BII)V
    .registers 10
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 81
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->update([BII[BI)V

    .line 82
    return-void
.end method
