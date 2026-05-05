.class public final Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
.super Ljava/lang/Object;
.source "TrackEncryptionBox.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrackEncryptionBox"


# instance fields
.field public final cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field public final defaultInitializationVector:[B

.field public final isEncrypted:Z

.field public final perSampleIvSize:I

.field public final schemeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;I[BII[B)V
    .registers 11
    .param p1, "isEncrypted"    # Z
    .param p2, "schemeType"    # Ljava/lang/String;
    .param p3, "perSampleIvSize"    # I
    .param p4, "keyId"    # [B
    .param p5, "defaultEncryptedBlocks"    # I
    .param p6, "defaultClearBlocks"    # I
    .param p7, "defaultInitializationVector"    # [B

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    if-nez p7, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 77
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    .line 78
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 79
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    .line 80
    iput-object p7, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->defaultInitializationVector:[B

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 83
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeToCryptoMode(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, p4, p5, p6}, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 84
    return-void
.end method

.method private static schemeToCryptoMode(Ljava/lang/String;)I
    .registers 4
    .param p0, "schemeType"    # Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 89
    return v0

    .line 91
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    sparse-switch v1, :sswitch_data_5a

    :cond_c
    goto :goto_35

    :sswitch_d
    const-string v1, "cens"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_36

    :sswitch_17
    const-string v1, "cenc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_36

    :sswitch_21
    const-string v1, "cbcs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x3

    goto :goto_36

    :sswitch_2b
    const-string v1, "cbc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    goto :goto_36

    :goto_35
    const/4 v1, -0x1

    :goto_36
    packed-switch v1, :pswitch_data_6c

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported protection scheme type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Assuming AES-CTR crypto mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrackEncryptionBox"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return v0

    .line 97
    :pswitch_58
    return v2

    .line 94
    :pswitch_59
    return v0

    :sswitch_data_5a
    .sparse-switch
        0x2e7ccd -> :sswitch_2b
        0x2e7d0f -> :sswitch_21
        0x2e8997 -> :sswitch_17
        0x2e89a7 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_59
        :pswitch_59
        :pswitch_58
        :pswitch_58
    .end packed-switch
.end method
