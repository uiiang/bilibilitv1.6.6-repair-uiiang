.class Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;
.super Ljava/lang/Object;
.source "Aes128DataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cipherInputStream:Ljavax/crypto/CipherInputStream;

.field private final encryptionIv:[B

.field private final encryptionKey:[B

.field private final upstream:Lcom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)V
    .registers 4
    .param p1, "upstream"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "encryptionKey"    # [B
    .param p3, "encryptionIv"    # [B

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 69
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->encryptionKey:[B

    .line 70
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->encryptionIv:[B

    .line 71
    return-void
.end method


# virtual methods
.method public final addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 3
    .param p1, "transferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 75
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 77
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    if-eqz v0, :cond_c

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V

    .line 131
    :cond_c
    return-void
.end method

.method protected getCipherInstance()Ljavax/crypto/Cipher;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 134
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 8
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->getCipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_39
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_4} :catch_37

    .line 86
    .local v0, "cipher":Ljavax/crypto/Cipher;
    nop

    .line 88
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->encryptionKey:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 89
    .local v1, "cipherKey":Ljava/security/Key;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->encryptionIv:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 92
    .local v2, "cipherIV":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v3, 0x2

    :try_start_16
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_19
    .catch Ljava/security/InvalidKeyException; {:try_start_16 .. :try_end_19} :catch_30
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16 .. :try_end_19} :catch_2e

    .line 95
    nop

    .line 97
    new-instance v3, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-direct {v3, v4, p1}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 98
    .local v3, "inputStream":Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;
    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, v3, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 99
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->open()V

    .line 101
    const-wide/16 v4, -0x1

    return-wide v4

    .line 93
    .end local v3    # "inputStream":Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;
    :catch_2e
    move-exception v3

    goto :goto_31

    :catch_30
    move-exception v3

    .line 94
    .local v3, "e":Ljava/security/GeneralSecurityException;
    :goto_31
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 84
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "cipherKey":Ljava/security/Key;
    .end local v2    # "cipherIV":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catch_37
    move-exception v0

    goto :goto_3a

    :catch_39
    move-exception v0

    .line 85
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_3a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v0

    .line 108
    .local v0, "bytesRead":I
    if-gez v0, :cond_f

    .line 109
    const/4 v1, -0x1

    return v1

    .line 111
    :cond_f
    return v0
.end method
