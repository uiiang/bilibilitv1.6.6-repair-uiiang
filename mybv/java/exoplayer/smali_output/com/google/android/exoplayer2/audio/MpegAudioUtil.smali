.class public final Lcom/google/android/exoplayer2/audio/MpegAudioUtil;
.super Ljava/lang/Object;
.source "MpegAudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BITRATE_V1_L1:[I

.field private static final BITRATE_V1_L2:[I

.field private static final BITRATE_V1_L3:[I

.field private static final BITRATE_V2:[I

.field private static final BITRATE_V2_L1:[I

.field public static final MAX_FRAME_SIZE_BYTES:I = 0x1000

.field public static final MAX_RATE_BYTES_PER_SECOND:I = 0x9c40

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLES_PER_FRAME_L1:I = 0x180

.field private static final SAMPLES_PER_FRAME_L2:I = 0x480

.field private static final SAMPLES_PER_FRAME_L3_V1:I = 0x480

.field private static final SAMPLES_PER_FRAME_L3_V2:I = 0x240

.field private static final SAMPLING_RATE_V1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 226
    const-string v0, "audio/mpeg-L2"

    const-string v1, "audio/mpeg"

    const-string v2, "audio/mpeg-L1"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    .line 228
    const v0, 0xbb80

    const/16 v1, 0x7d00

    const v2, 0xac44

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    .line 229
    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_40

    sput-object v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L1:[I

    .line 233
    new-array v1, v0, [I

    fill-array-data v1, :array_60

    sput-object v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2_L1:[I

    .line 237
    new-array v1, v0, [I

    fill-array-data v1, :array_80

    sput-object v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L2:[I

    .line 241
    new-array v1, v0, [I

    fill-array-data v1, :array_a0

    sput-object v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L3:[I

    .line 245
    new-array v0, v0, [I

    fill-array-data v0, :array_c0

    sput-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2:[I

    return-void

    :array_40
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_60
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_80
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_a0
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_c0
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 31
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->isMagicPresent(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .line 31
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[I
    .registers 1

    .line 31
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    return-object v0
.end method

.method static synthetic access$300(II)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 31
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->getFrameSizeInSamples(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400()[I
    .registers 1

    .line 31
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L1:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .registers 1

    .line 31
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2_L1:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .registers 1

    .line 31
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L2:[I

    return-object v0
.end method

.method static synthetic access$700()[I
    .registers 1

    .line 31
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L3:[I

    return-object v0
.end method

.method static synthetic access$800()[I
    .registers 1

    .line 31
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2:[I

    return-object v0
.end method

.method public static getFrameSize(I)I
    .registers 11
    .param p0, "headerData"    # I

    .line 124
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->isMagicPresent(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 125
    return v1

    .line 128
    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    .line 129
    .local v0, "version":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    .line 130
    return v1

    .line 133
    :cond_10
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v2

    .line 134
    .local v4, "layer":I
    if-nez v4, :cond_16

    .line 135
    return v1

    .line 138
    :cond_16
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    .line 139
    .local v5, "bitrateIndex":I
    if-eqz v5, :cond_7a

    if-ne v5, v6, :cond_20

    goto :goto_7a

    .line 144
    :cond_20
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v2

    .line 145
    .local v6, "samplingRateIndex":I
    if-ne v6, v2, :cond_26

    .line 146
    return v1

    .line 149
    :cond_26
    sget-object v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    aget v1, v1, v6

    .line 150
    .local v1, "samplingRate":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_30

    .line 152
    div-int/lit8 v1, v1, 0x2

    goto :goto_34

    .line 153
    :cond_30
    if-nez v0, :cond_34

    .line 155
    div-int/lit8 v1, v1, 0x4

    .line 159
    :cond_34
    :goto_34
    ushr-int/lit8 v8, p0, 0x9

    and-int/2addr v8, v3

    .line 160
    .local v8, "padding":I
    if-ne v4, v2, :cond_4f

    .line 162
    if-ne v0, v2, :cond_42

    sget-object v2, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L1:[I

    add-int/lit8 v3, v5, -0x1

    aget v2, v2, v3

    goto :goto_48

    :cond_42
    sget-object v2, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2_L1:[I

    add-int/lit8 v3, v5, -0x1

    aget v2, v2, v3

    .line 163
    .local v2, "bitrate":I
    :goto_48
    mul-int/lit8 v3, v2, 0xc

    div-int/2addr v3, v1

    add-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x4

    return v3

    .line 166
    .end local v2    # "bitrate":I
    :cond_4f
    if-ne v0, v2, :cond_61

    .line 167
    if-ne v4, v7, :cond_5a

    sget-object v7, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L2:[I

    add-int/lit8 v9, v5, -0x1

    aget v7, v7, v9

    goto :goto_60

    :cond_5a
    sget-object v7, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L3:[I

    add-int/lit8 v9, v5, -0x1

    aget v7, v7, v9

    .local v7, "bitrate":I
    :goto_60
    goto :goto_67

    .line 170
    .end local v7    # "bitrate":I
    :cond_61
    sget-object v7, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2:[I

    add-int/lit8 v9, v5, -0x1

    aget v7, v7, v9

    .line 174
    .restart local v7    # "bitrate":I
    :goto_67
    if-ne v0, v2, :cond_6e

    .line 176
    mul-int/lit16 v2, v7, 0x90

    div-int/2addr v2, v1

    add-int/2addr v2, v8

    return v2

    .line 179
    :cond_6e
    if-ne v4, v3, :cond_73

    const/16 v2, 0x48

    goto :goto_75

    :cond_73
    const/16 v2, 0x90

    :goto_75
    mul-int v2, v2, v7

    div-int/2addr v2, v1

    add-int/2addr v2, v8

    return v2

    .line 141
    .end local v1    # "samplingRate":I
    .end local v6    # "samplingRateIndex":I
    .end local v7    # "bitrate":I
    .end local v8    # "padding":I
    :cond_7a
    :goto_7a
    return v1
.end method

.method private static getFrameSizeInSamples(II)I
    .registers 4
    .param p0, "version"    # I
    .param p1, "layer"    # I

    .line 262
    const/16 v0, 0x480

    packed-switch p1, :pswitch_data_16

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 268
    :pswitch_b
    const/16 v0, 0x180

    return v0

    .line 266
    :pswitch_e
    return v0

    .line 264
    :pswitch_f
    const/4 v1, 0x3

    if-ne p0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/16 v0, 0x240

    :goto_15
    return v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private static isMagicPresent(I)Z
    .registers 3
    .param p0, "headerData"    # I

    .line 258
    const/high16 v0, -0x200000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static parseMpegAudioFrameSampleCount(I)I
    .registers 8
    .param p0, "headerData"    # I

    .line 188
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->isMagicPresent(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 189
    return v1

    .line 192
    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    .line 193
    .local v0, "version":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    .line 194
    return v1

    .line 197
    :cond_10
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v2

    .line 198
    .local v3, "layer":I
    if-nez v3, :cond_16

    .line 199
    return v1

    .line 203
    :cond_16
    ushr-int/lit8 v4, p0, 0xc

    const/16 v5, 0xf

    and-int/2addr v4, v5

    .line 204
    .local v4, "bitrateIndex":I
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v2

    .line 205
    .local v6, "samplingRateIndex":I
    if-eqz v4, :cond_2a

    if-eq v4, v5, :cond_2a

    if-ne v6, v2, :cond_25

    goto :goto_2a

    .line 209
    :cond_25
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->getFrameSizeInSamples(II)I

    move-result v1

    return v1

    .line 206
    :cond_2a
    :goto_2a
    return v1
.end method
