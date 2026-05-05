.class public final Lcom/google/android/exoplayer2/video/DolbyVisionConfig;
.super Ljava/lang/Object;
.source "DolbyVisionConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final codecs:Ljava/lang/String;

.field public final level:I

.field public final profile:I


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "profile"    # I
    .param p2, "level"    # I
    .param p3, "codecs"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->profile:I

    .line 69
    iput p2, p0, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->level:I

    .line 70
    iput-object p3, p0, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/DolbyVisionConfig;
    .registers 8
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 44
    .local v0, "profileData":I
    shr-int/lit8 v1, v0, 0x1

    .line 45
    .local v1, "dvProfile":I
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x5

    shl-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x1f

    or-int/2addr v2, v4

    .line 47
    .local v2, "dvLevel":I
    const/4 v4, 0x4

    if-eq v1, v4, :cond_30

    if-eq v1, v3, :cond_30

    const/4 v3, 0x7

    if-ne v1, v3, :cond_20

    goto :goto_30

    .line 49
    :cond_20
    const/16 v3, 0x8

    if-ne v1, v3, :cond_27

    .line 50
    const-string v3, "hev1"

    .local v3, "codecsPrefix":Ljava/lang/String;
    goto :goto_32

    .line 51
    .end local v3    # "codecsPrefix":Ljava/lang/String;
    :cond_27
    const/16 v3, 0x9

    if-ne v1, v3, :cond_2e

    .line 52
    const-string v3, "avc3"

    .restart local v3    # "codecsPrefix":Ljava/lang/String;
    goto :goto_32

    .line 54
    .end local v3    # "codecsPrefix":Ljava/lang/String;
    :cond_2e
    const/4 v3, 0x0

    return-object v3

    .line 48
    :cond_30
    :goto_30
    const-string v3, "dvhe"

    .line 56
    .restart local v3    # "codecsPrefix":Ljava/lang/String;
    :goto_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xa

    if-ge v2, v6, :cond_4a

    goto :goto_4c

    :cond_4a
    const-string v5, "."

    :goto_4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "codecs":Ljava/lang/String;
    new-instance v5, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;

    invoke-direct {v5, v1, v2, v4}, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;-><init>(IILjava/lang/String;)V

    return-object v5
.end method
