.class public final Lcom/google/android/exoplayer2/audio/WavUtil;
.super Ljava/lang/Object;
.source "WavUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DATA_FOURCC:I = 0x64617461

.field public static final DS64_FOURCC:I = 0x64733634

.field public static final FMT_FOURCC:I = 0x666d7420

.field public static final RF64_FOURCC:I = 0x52463634

.field public static final RIFF_FOURCC:I = 0x52494646

.field public static final TYPE_ALAW:I = 0x6

.field public static final TYPE_FLOAT:I = 0x3

.field public static final TYPE_IMA_ADPCM:I = 0x11

.field public static final TYPE_MLAW:I = 0x7

.field public static final TYPE_PCM:I = 0x1

.field public static final TYPE_WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field public static final WAVE_FOURCC:I = 0x57415645


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static getPcmEncodingForType(II)I
    .registers 4
    .param p0, "type"    # I
    .param p1, "bitsPerSample"    # I

    .line 89
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_10

    .line 96
    return v0

    .line 94
    :sswitch_5
    const/16 v1, 0x20

    if-ne p1, v1, :cond_a

    const/4 v0, 0x4

    :cond_a
    return v0

    .line 92
    :sswitch_b
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v0

    return v0

    :sswitch_data_10
    .sparse-switch
        0x1 -> :sswitch_b
        0x3 -> :sswitch_5
        0xfffe -> :sswitch_b
    .end sparse-switch
.end method

.method public static getTypeForPcmEncoding(I)I
    .registers 2
    .param p0, "pcmEncoding"    # I

    .line 68
    sparse-switch p0, :sswitch_data_e

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :sswitch_9
    const/4 v0, 0x3

    return v0

    .line 73
    :sswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        0x2 -> :sswitch_b
        0x3 -> :sswitch_b
        0x4 -> :sswitch_9
        0x20000000 -> :sswitch_b
        0x30000000 -> :sswitch_b
    .end sparse-switch
.end method
