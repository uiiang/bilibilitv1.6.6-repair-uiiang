.class public final Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/TrackOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoData"
.end annotation


# instance fields
.field public final clearBlocks:I

.field public final cryptoMode:I

.field public final encryptedBlocks:I

.field public final encryptionKey:[B


# direct methods
.method public constructor <init>(I[BII)V
    .registers 5
    .param p1, "cryptoMode"    # I
    .param p2, "encryptionKey"    # [B
    .param p3, "encryptedBlocks"    # I
    .param p4, "clearBlocks"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    .line 74
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    .line 75
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    .line 76
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    .line 77
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 82
    return v0

    .line 84
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 87
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 88
    .local v2, "other":Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v4, v2, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v4, v2, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    iget v4, v2, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    .line 91
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    .line 88
    :goto_33
    return v0

    .line 85
    .end local v2    # "other":Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    :cond_34
    :goto_34
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 96
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    .line 97
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 98
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    add-int/2addr v0, v2

    .line 99
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    add-int/2addr v1, v2

    .line 100
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
