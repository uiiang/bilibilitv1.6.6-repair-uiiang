.class public final Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;
.super Ljava/lang/Object;
.source "MpegAudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/MpegAudioUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setForHeaderData(I)Z
    .registers 13
    .param p1, "headerData"    # I

    .line 61
    # invokes: Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->isMagicPresent(I)Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$000(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 62
    return v1

    .line 65
    :cond_8
    ushr-int/lit8 v0, p1, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    .line 66
    .local v0, "version":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    .line 67
    return v1

    .line 70
    :cond_10
    ushr-int/lit8 v4, p1, 0x11

    and-int/2addr v4, v2

    .line 71
    .local v4, "layer":I
    if-nez v4, :cond_16

    .line 72
    return v1

    .line 75
    :cond_16
    ushr-int/lit8 v5, p1, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    .line 76
    .local v5, "bitrateIndex":I
    if-eqz v5, :cond_b4

    if-ne v5, v6, :cond_21

    goto/16 :goto_b4

    .line 81
    :cond_21
    ushr-int/lit8 v6, p1, 0xa

    and-int/2addr v6, v2

    .line 82
    .local v6, "samplingRateIndex":I
    if-ne v6, v2, :cond_27

    .line 83
    return v1

    .line 86
    :cond_27
    iput v0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->version:I

    .line 87
    # getter for: Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$100()[Ljava/lang/String;

    move-result-object v1

    rsub-int/lit8 v7, v4, 0x3

    aget-object v1, v1, v7

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 88
    # getter for: Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->SAMPLING_RATE_V1:[I
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$200()[I

    move-result-object v1

    aget v1, v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    .line 89
    const/4 v7, 0x2

    if-ne v0, v7, :cond_42

    .line 91
    div-int/2addr v1, v7

    iput v1, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    goto :goto_48

    .line 92
    :cond_42
    if-nez v0, :cond_48

    .line 94
    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    .line 96
    :cond_48
    :goto_48
    ushr-int/lit8 v1, p1, 0x9

    and-int/2addr v1, v3

    .line 97
    .local v1, "padding":I
    # invokes: Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->getFrameSizeInSamples(II)I
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$300(II)I

    move-result v8

    iput v8, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    .line 98
    if-ne v4, v2, :cond_73

    .line 100
    if-ne v0, v2, :cond_5e

    # getter for: Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L1:[I
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$400()[I

    move-result-object v8

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    goto :goto_66

    :cond_5e
    # getter for: Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2_L1:[I
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$500()[I

    move-result-object v8

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    :goto_66
    iput v8, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->bitrate:I

    .line 101
    mul-int/lit8 v8, v8, 0xc

    iget v9, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v8, v9

    add-int/2addr v8, v1

    mul-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    goto :goto_ab

    .line 104
    :cond_73
    const/16 v8, 0x90

    if-ne v0, v2, :cond_95

    .line 106
    if-ne v4, v7, :cond_82

    # getter for: Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L2:[I
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$600()[I

    move-result-object v9

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    goto :goto_8a

    :cond_82
    # getter for: Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L3:[I
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$700()[I

    move-result-object v9

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    :goto_8a
    iput v9, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->bitrate:I

    .line 107
    mul-int/lit16 v9, v9, 0x90

    iget v8, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v9, v8

    add-int/2addr v9, v1

    iput v9, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    goto :goto_ab

    .line 110
    :cond_95
    # getter for: Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2:[I
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$800()[I

    move-result-object v9

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    iput v9, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->bitrate:I

    .line 111
    if-ne v4, v3, :cond_a3

    const/16 v8, 0x48

    :cond_a3
    mul-int v8, v8, v9

    iget v9, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v8, v9

    add-int/2addr v8, v1

    iput v8, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    .line 114
    :goto_ab
    shr-int/lit8 v8, p1, 0x6

    and-int/2addr v8, v2

    if-ne v8, v2, :cond_b1

    const/4 v7, 0x1

    :cond_b1
    iput v7, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    .line 115
    return v3

    .line 78
    .end local v1    # "padding":I
    .end local v6    # "samplingRateIndex":I
    :cond_b4
    :goto_b4
    return v1
.end method
