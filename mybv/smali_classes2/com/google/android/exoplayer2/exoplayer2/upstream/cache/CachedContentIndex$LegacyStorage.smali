.class Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyStorage"
.end annotation


# static fields
.field private static final FLAG_ENCRYPTED_INDEX:I = 0x1

.field private static final VERSION:I = 0x2

.field private static final VERSION_METADATA_INTRODUCED:I = 0x2


# instance fields
.field private final atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

.field private bufferedOutputStream:Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;

.field private changed:Z

.field private final cipher:Ljavax/crypto/Cipher;

.field private final encrypt:Z

.field private final random:Ljava/security/SecureRandom;

.field private final secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/io/File;[BZ)V
    .registers 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "secretKey"    # [B
    .param p3, "encrypt"    # Z

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_c

    if-nez p3, :cond_a

    goto :goto_c

    :cond_a
    const/4 v2, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v2, 0x1

    :goto_d
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 529
    const/4 v2, 0x0

    .line 530
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x0

    .line 531
    .local v3, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    if-eqz p2, :cond_34

    .line 532
    array-length v4, p2

    const/16 v5, 0x10

    if-ne v4, v5, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 534
    :try_start_1d
    # invokes: Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getCipher()Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->access$000()Ljavax/crypto/Cipher;

    move-result-object v0

    move-object v2, v0

    .line 535
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_29} :catch_2d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1d .. :try_end_29} :catch_2b

    move-object v3, v0

    .line 538
    goto :goto_39

    .line 536
    :catch_2b
    move-exception v0

    goto :goto_2e

    :catch_2d
    move-exception v0

    .line 537
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_2e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 540
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_34
    xor-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 542
    :goto_39
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->encrypt:Z

    .line 543
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    .line 544
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 545
    if-eqz p3, :cond_47

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->random:Ljava/security/SecureRandom;

    .line 546
    new-instance v0, Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    .line 547
    return-void
.end method

.method private hashCachedContent(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;I)I
    .registers 9
    .param p1, "cachedContent"    # Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .param p2, "version"    # I

    .line 707
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    .line 708
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 709
    .end local v0    # "result":I
    .local v1, "result":I
    const/4 v0, 0x2

    if-ge p2, v0, :cond_20

    .line 710
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getMetadata()Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v2

    .line 711
    .local v2, "length":J
    mul-int/lit8 v0, v1, 0x1f

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v4, v2

    long-to-int v5, v4

    add-int/2addr v0, v5

    .line 712
    .end local v1    # "result":I
    .end local v2    # "length":J
    .restart local v0    # "result":I
    goto :goto_2b

    .line 713
    .end local v0    # "result":I
    .restart local v1    # "result":I
    :cond_20
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getMetadata()Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 715
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :goto_2b
    return v0
.end method

.method private readCachedContent(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .registers 9
    .param p1, "version"    # I
    .param p2, "input"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 727
    .local v0, "id":I
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x2

    if-ge p1, v2, :cond_1e

    .line 730
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 731
    .local v2, "length":J
    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;-><init>()V

    .line 732
    .local v4, "mutations":Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    invoke-static {v4, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->setContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;J)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 733
    sget-object v5, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->EMPTY:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->copyWithMutationsApplied(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object v2

    .line 734
    .end local v4    # "mutations":Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .local v2, "metadata":Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    goto :goto_22

    .line 735
    .end local v2    # "metadata":Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    :cond_1e
    # invokes: Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->readContentMetadata(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    invoke-static {p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->access$100(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object v2

    .line 737
    .restart local v2    # "metadata":Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    :goto_22
    new-instance v3, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;)V

    return-object v3
.end method

.method private readFile(Ljava/util/HashMap;Landroid/util/SparseArray;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 601
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .local p2, "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/AtomicFile;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 602
    return v1

    .line 605
    :cond_a
    const/4 v0, 0x0

    .line 607
    .local v0, "input":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    :try_start_c
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/AtomicFile;->openRead()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 608
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v4

    .line 609
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 610
    .local v4, "version":I
    if-ltz v4, :cond_af

    const/4 v5, 0x2

    if-le v4, v5, :cond_28

    goto/16 :goto_af

    .line 614
    :cond_28
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 615
    .local v6, "flags":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_6b

    .line 616
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_32} :catch_bc
    .catchall {:try_start_c .. :try_end_32} :catchall_b5

    if-nez v7, :cond_3a

    .line 617
    nop

    .line 648
    nop

    .line 649
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 617
    return v2

    .line 619
    :cond_3a
    const/16 v7, 0x10

    :try_start_3c
    new-array v7, v7, [B

    .line 620
    .local v7, "initializationVector":[B
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 621
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_46} :catch_bc
    .catchall {:try_start_3c .. :try_end_46} :catchall_b5

    .line 623
    .local v8, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_46
    iget-object v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/Key;

    invoke-virtual {v9, v5, v10, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_53
    .catch Ljava/security/InvalidKeyException; {:try_start_46 .. :try_end_53} :catch_64
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_46 .. :try_end_53} :catch_62
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_53} :catch_bc
    .catchall {:try_start_46 .. :try_end_53} :catchall_b5

    .line 626
    nop

    .line 627
    :try_start_54
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v9, Ljavax/crypto/CipherInputStream;

    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v9, v3, v10}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v5

    .line 628
    .end local v7    # "initializationVector":[B
    .end local v8    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :cond_61
    goto :goto_71

    .line 624
    .restart local v7    # "initializationVector":[B
    .restart local v8    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_62
    move-exception v1

    goto :goto_65

    :catch_64
    move-exception v1

    .line 625
    .local v1, "e":Ljava/security/GeneralSecurityException;
    :goto_65
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Ljava/io/DataInputStream;
    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .end local p2    # "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    throw v5

    .line 628
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .end local v7    # "initializationVector":[B
    .end local v8    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v0    # "input":Ljava/io/DataInputStream;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .restart local p2    # "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_6b
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->encrypt:Z

    if-eqz v5, :cond_61

    .line 629
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->changed:Z

    .line 632
    :goto_71
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 633
    .local v5, "count":I
    const/4 v7, 0x0

    .line 634
    .local v7, "hashCode":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_77
    if-ge v8, v5, :cond_91

    .line 635
    invoke-direct {p0, v4, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->readCachedContent(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v9

    .line 636
    .local v9, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    iget-object v10, v9, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget v10, v9, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    iget-object v11, v9, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p2, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    invoke-direct {p0, v9, v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->hashCachedContent(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;I)I

    move-result v10

    add-int/2addr v7, v10

    .line 634
    .end local v9    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    add-int/lit8 v8, v8, 0x1

    goto :goto_77

    .line 640
    .end local v8    # "i":I
    :cond_91
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 641
    .local v8, "fileHashCode":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v9
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_99} :catch_bc
    .catchall {:try_start_54 .. :try_end_99} :catchall_b5

    const/4 v10, -0x1

    if-ne v9, v10, :cond_9e

    const/4 v9, 0x1

    goto :goto_9f

    :cond_9e
    const/4 v9, 0x0

    .line 642
    .local v9, "isEOF":Z
    :goto_9f
    if-ne v8, v7, :cond_a9

    if-nez v9, :cond_a4

    goto :goto_a9

    .line 648
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "version":I
    .end local v5    # "count":I
    .end local v6    # "flags":I
    .end local v7    # "hashCode":I
    .end local v8    # "fileHashCode":I
    .end local v9    # "isEOF":Z
    :cond_a4
    nop

    .line 649
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 652
    return v1

    .line 643
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "version":I
    .restart local v5    # "count":I
    .restart local v6    # "flags":I
    .restart local v7    # "hashCode":I
    .restart local v8    # "fileHashCode":I
    .restart local v9    # "isEOF":Z
    :cond_a9
    :goto_a9
    nop

    .line 648
    nop

    .line 649
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 643
    return v2

    .line 611
    .end local v5    # "count":I
    .end local v6    # "flags":I
    .end local v7    # "hashCode":I
    .end local v8    # "fileHashCode":I
    .end local v9    # "isEOF":Z
    :cond_af
    :goto_af
    nop

    .line 648
    nop

    .line 649
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 611
    return v2

    .line 648
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "version":I
    :catchall_b5
    move-exception v1

    if-eqz v0, :cond_bb

    .line 649
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 651
    :cond_bb
    throw v1

    .line 645
    :catch_bc
    move-exception v1

    .line 646
    .local v1, "e":Ljava/io/IOException;
    nop

    .line 648
    if-eqz v0, :cond_c3

    .line 649
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 646
    :cond_c3
    return v2
.end method

.method private writeCachedContent(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;Ljava/io/DataOutputStream;)V
    .registers 4
    .param p1, "cachedContent"    # Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .param p2, "output"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 749
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getMetadata()Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object v0

    # invokes: Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->writeContentMetadata(Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->access$200(Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V

    .line 751
    return-void
.end method

.method private writeFile(Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 656
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    const/4 v0, 0x0

    .line 658
    .local v0, "output":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/AtomicFile;->startWrite()Ljava/io/OutputStream;

    move-result-object v1

    .line 659
    .local v1, "outputStream":Ljava/io/OutputStream;
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->bufferedOutputStream:Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;

    if-nez v2, :cond_13

    .line 660
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->bufferedOutputStream:Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;

    goto :goto_16

    .line 662
    :cond_13
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;->reset(Ljava/io/OutputStream;)V

    .line 664
    :goto_16
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->bufferedOutputStream:Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;

    .line 665
    .local v2, "bufferedOutputStream":Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v3

    .line 666
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 668
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->encrypt:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    const/4 v4, 0x0

    .line 669
    .local v4, "flags":I
    :goto_2a
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 671
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->encrypt:Z

    if-eqz v6, :cond_76

    .line 672
    const/16 v6, 0x10

    new-array v6, v6, [B

    .line 673
    .local v6, "initializationVector":[B
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->random:Ljava/security/SecureRandom;

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/SecureRandom;

    invoke-virtual {v7, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 674
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 675
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_a9

    .line 677
    .local v7, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_48
    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/crypto/Cipher;

    iget-object v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 678
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Key;

    invoke-virtual {v8, v5, v9, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_5b
    .catch Ljava/security/InvalidKeyException; {:try_start_48 .. :try_end_5b} :catch_6f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_48 .. :try_end_5b} :catch_6d
    .catchall {:try_start_48 .. :try_end_5b} :catchall_a9

    .line 681
    nop

    .line 682
    :try_start_5c
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 683
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v8, Ljavax/crypto/CipherOutputStream;

    iget-object v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v8, v2, v9}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v5, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v5

    goto :goto_76

    .line 679
    :catch_6d
    move-exception v3

    goto :goto_70

    :catch_6f
    move-exception v3

    .line 680
    .local v3, "e":Ljava/security/GeneralSecurityException;
    :goto_70
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "output":Ljava/io/DataOutputStream;
    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    throw v5

    .line 686
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .end local v6    # "initializationVector":[B
    .end local v7    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v0    # "output":Ljava/io/DataOutputStream;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    :cond_76
    :goto_76
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 687
    const/4 v5, 0x0

    .line 688
    .local v5, "hashCode":I
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_86
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 689
    .local v7, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    invoke-direct {p0, v7, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->writeCachedContent(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;Ljava/io/DataOutputStream;)V

    .line 690
    invoke-direct {p0, v7, v3}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->hashCachedContent(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;I)I

    move-result v8

    add-int/2addr v5, v8

    .line 691
    .end local v7    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    goto :goto_86

    .line 692
    :cond_9b
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 693
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/util/AtomicFile;->endWrite(Ljava/io/OutputStream;)V
    :try_end_a3
    .catchall {:try_start_5c .. :try_end_a3} :catchall_a9

    .line 696
    const/4 v0, 0x0

    .line 698
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .end local v2    # "bufferedOutputStream":Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;
    .end local v4    # "flags":I
    .end local v5    # "hashCode":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 699
    nop

    .line 700
    return-void

    .line 698
    :catchall_a9
    move-exception v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 699
    goto :goto_af

    :goto_ae
    throw v1

    :goto_af
    goto :goto_ae
.end method


# virtual methods
.method public delete()V
    .registers 2

    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/AtomicFile;->delete()V

    .line 562
    return-void
.end method

.method public exists()Z
    .registers 2

    .line 556
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/AtomicFile;->exists()Z

    move-result v0

    return v0
.end method

.method public initialize(J)V
    .registers 3
    .param p1, "uid"    # J

    .line 552
    return-void
.end method

.method public load(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 567
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .local p2, "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->changed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 568
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->readFile(Ljava/util/HashMap;Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 569
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 570
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/AtomicFile;->delete()V

    .line 573
    :cond_18
    return-void
.end method

.method public onRemove(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;Z)V
    .registers 4
    .param p1, "cachedContent"    # Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .param p2, "neverStored"    # Z

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->changed:Z

    .line 597
    return-void
.end method

.method public onUpdate(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V
    .registers 3
    .param p1, "cachedContent"    # Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->changed:Z

    .line 592
    return-void
.end method

.method public storeFully(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->writeFile(Ljava/util/HashMap;)V

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->changed:Z

    .line 579
    return-void
.end method

.method public storeIncremental(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->changed:Z

    if-nez v0, :cond_5

    .line 584
    return-void

    .line 586
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->storeFully(Ljava/util/HashMap;)V

    .line 587
    return-void
.end method
