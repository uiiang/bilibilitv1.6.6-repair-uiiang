.class public final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CODEC_ID_AV01:Ljava/lang/String; = "av01"

.field private static final CODEC_ID_AVC1:Ljava/lang/String; = "avc1"

.field private static final CODEC_ID_AVC2:Ljava/lang/String; = "avc2"

.field private static final CODEC_ID_HEV1:Ljava/lang/String; = "hev1"

.field private static final CODEC_ID_HVC1:Ljava/lang/String; = "hvc1"

.field private static final CODEC_ID_MP4A:Ljava/lang/String; = "mp4a"

.field private static final CODEC_ID_VP09:Ljava/lang/String; = "vp09"

.field private static final PROFILE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MediaCodecUtil"

.field private static final decoderInfosCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static maxH264DecodableFrameSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    const-string v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    .line 94
    const/4 v0, -0x1

    sput v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V
    .registers 14
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    .line 643
    .local p1, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    const-string v0, "audio/raw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4b

    .line 644
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_43

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 645
    const-string v3, "R9"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 646
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_43

    .line 647
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v3, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 650
    const-string v3, "OMX.google.raw.decoder"

    const-string v4, "audio/raw"

    const-string v5, "audio/raw"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 651
    invoke-static/range {v3 .. v11}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 650
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_43
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 680
    :cond_4b
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_7f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_7f

    .line 681
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 682
    .local v0, "firstCodecName":Ljava/lang/String;
    const-string v3, "OMX.SEC.mp3.dec"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 683
    const-string v3, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 684
    const-string v3, "OMX.brcm.audio.mp3.decoder"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 689
    :cond_77
    new-instance v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 693
    .end local v0    # "firstCodecName":Ljava/lang/String;
    :cond_7f
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x20

    if-ge v0, v3, :cond_a4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_a4

    .line 694
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 697
    .restart local v0    # "firstCodecName":Ljava/lang/String;
    const-string v1, "OMX.qti.audio.decoder.flac"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 698
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    .end local v0    # "firstCodecName":Ljava/lang/String;
    :cond_a4
    return-void
.end method

.method private static av1LevelNumberToConst(I)I
    .registers 2
    .param p0, "levelNumber"    # I

    .line 1435
    packed-switch p0, :pswitch_data_4c

    .line 1485
    const/4 v0, -0x1

    return v0

    .line 1483
    :pswitch_5
    const/high16 v0, 0x800000

    return v0

    .line 1481
    :pswitch_8
    const/high16 v0, 0x400000

    return v0

    .line 1479
    :pswitch_b
    const/high16 v0, 0x200000

    return v0

    .line 1477
    :pswitch_e
    const/high16 v0, 0x100000

    return v0

    .line 1475
    :pswitch_11
    const/high16 v0, 0x80000

    return v0

    .line 1473
    :pswitch_14
    const/high16 v0, 0x40000

    return v0

    .line 1471
    :pswitch_17
    const/high16 v0, 0x20000

    return v0

    .line 1469
    :pswitch_1a
    const/high16 v0, 0x10000

    return v0

    .line 1467
    :pswitch_1d
    const v0, 0x8000

    return v0

    .line 1465
    :pswitch_21
    const/16 v0, 0x4000

    return v0

    .line 1463
    :pswitch_24
    const/16 v0, 0x2000

    return v0

    .line 1461
    :pswitch_27
    const/16 v0, 0x1000

    return v0

    .line 1459
    :pswitch_2a
    const/16 v0, 0x800

    return v0

    .line 1457
    :pswitch_2d
    const/16 v0, 0x400

    return v0

    .line 1455
    :pswitch_30
    const/16 v0, 0x200

    return v0

    .line 1453
    :pswitch_33
    const/16 v0, 0x100

    return v0

    .line 1451
    :pswitch_36
    const/16 v0, 0x80

    return v0

    .line 1449
    :pswitch_39
    const/16 v0, 0x40

    return v0

    .line 1447
    :pswitch_3c
    const/16 v0, 0x20

    return v0

    .line 1445
    :pswitch_3f
    const/16 v0, 0x10

    return v0

    .line 1443
    :pswitch_42
    const/16 v0, 0x8

    return v0

    .line 1441
    :pswitch_45
    const/4 v0, 0x4

    return v0

    .line 1439
    :pswitch_47
    const/4 v0, 0x2

    return v0

    .line 1437
    :pswitch_49
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_49
        :pswitch_47
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static avcLevelNumberToConst(I)I
    .registers 2
    .param p0, "levelNumber"    # I

    .line 1214
    sparse-switch p0, :sswitch_data_34

    .line 1248
    const/4 v0, -0x1

    return v0

    .line 1246
    :sswitch_5
    const/high16 v0, 0x10000

    return v0

    .line 1244
    :sswitch_8
    const v0, 0x8000

    return v0

    .line 1242
    :sswitch_c
    const/16 v0, 0x4000

    return v0

    .line 1240
    :sswitch_f
    const/16 v0, 0x2000

    return v0

    .line 1238
    :sswitch_12
    const/16 v0, 0x1000

    return v0

    .line 1236
    :sswitch_15
    const/16 v0, 0x800

    return v0

    .line 1234
    :sswitch_18
    const/16 v0, 0x400

    return v0

    .line 1232
    :sswitch_1b
    const/16 v0, 0x200

    return v0

    .line 1230
    :sswitch_1e
    const/16 v0, 0x100

    return v0

    .line 1228
    :sswitch_21
    const/16 v0, 0x80

    return v0

    .line 1226
    :sswitch_24
    const/16 v0, 0x40

    return v0

    .line 1224
    :sswitch_27
    const/16 v0, 0x20

    return v0

    .line 1222
    :sswitch_2a
    const/16 v0, 0x10

    return v0

    .line 1220
    :sswitch_2d
    const/16 v0, 0x8

    return v0

    .line 1218
    :sswitch_30
    const/4 v0, 0x4

    return v0

    .line 1216
    :sswitch_32
    const/4 v0, 0x1

    return v0

    :sswitch_data_34
    .sparse-switch
        0xa -> :sswitch_32
        0xb -> :sswitch_30
        0xc -> :sswitch_2d
        0xd -> :sswitch_2a
        0x14 -> :sswitch_27
        0x15 -> :sswitch_24
        0x16 -> :sswitch_21
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1b
        0x20 -> :sswitch_18
        0x28 -> :sswitch_15
        0x29 -> :sswitch_12
        0x2a -> :sswitch_f
        0x32 -> :sswitch_c
        0x33 -> :sswitch_8
        0x34 -> :sswitch_5
    .end sparse-switch
.end method

.method private static avcLevelToMaxFrameSize(I)I
    .registers 2
    .param p0, "avcLevel"    # I

    .line 976
    sparse-switch p0, :sswitch_data_2c

    .line 1008
    const/4 v0, -0x1

    return v0

    .line 1006
    :sswitch_5
    const/high16 v0, 0x2200000

    return v0

    .line 1002
    :sswitch_8
    const/high16 v0, 0x900000

    return v0

    .line 999
    :sswitch_b
    const v0, 0x564000

    return v0

    .line 997
    :sswitch_f
    const/high16 v0, 0x220000

    return v0

    .line 995
    :sswitch_12
    const/high16 v0, 0x200000

    return v0

    .line 992
    :sswitch_15
    const/high16 v0, 0x140000

    return v0

    .line 990
    :sswitch_18
    const v0, 0xe1000

    return v0

    .line 988
    :sswitch_1c
    const v0, 0x65400

    return v0

    .line 985
    :sswitch_20
    const v0, 0x31800

    return v0

    .line 983
    :sswitch_24
    const v0, 0x18c00

    return v0

    .line 979
    :sswitch_28
    const/16 v0, 0x6300

    return v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_28
        0x8 -> :sswitch_24
        0x10 -> :sswitch_24
        0x20 -> :sswitch_24
        0x40 -> :sswitch_20
        0x80 -> :sswitch_1c
        0x100 -> :sswitch_1c
        0x200 -> :sswitch_18
        0x400 -> :sswitch_15
        0x800 -> :sswitch_12
        0x1000 -> :sswitch_12
        0x2000 -> :sswitch_f
        0x4000 -> :sswitch_b
        0x8000 -> :sswitch_8
        0x10000 -> :sswitch_8
        0x20000 -> :sswitch_5
        0x40000 -> :sswitch_5
        0x80000 -> :sswitch_5
    .end sparse-switch
.end method

.method private static avcProfileNumberToConst(I)I
    .registers 2
    .param p0, "profileNumber"    # I

    .line 1192
    sparse-switch p0, :sswitch_data_18

    .line 1208
    const/4 v0, -0x1

    return v0

    .line 1206
    :sswitch_5
    const/16 v0, 0x40

    return v0

    .line 1204
    :sswitch_8
    const/16 v0, 0x20

    return v0

    .line 1202
    :sswitch_b
    const/16 v0, 0x10

    return v0

    .line 1200
    :sswitch_e
    const/16 v0, 0x8

    return v0

    .line 1198
    :sswitch_11
    const/4 v0, 0x4

    return v0

    .line 1196
    :sswitch_13
    const/4 v0, 0x2

    return v0

    .line 1194
    :sswitch_15
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_18
    .sparse-switch
        0x42 -> :sswitch_15
        0x4d -> :sswitch_13
        0x58 -> :sswitch_11
        0x64 -> :sswitch_e
        0x6e -> :sswitch_b
        0x7a -> :sswitch_8
        0xf4 -> :sswitch_5
    .end sparse-switch
.end method

.method public static declared-synchronized clearDecoderInfoCache()V
    .registers 2

    const-class v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 122
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 123
    monitor-exit v0

    return-void

    .line 121
    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static dolbyVisionStringToLevel(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7
    .param p0, "levelString"    # Ljava/lang/String;

    .line 1396
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1397
    return-object v0

    .line 1400
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_f4

    :cond_10
    goto/16 :goto_9c

    :sswitch_12
    const-string v1, "13"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xc

    goto/16 :goto_9d

    :sswitch_1e
    const-string v1, "12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xb

    goto/16 :goto_9d

    :sswitch_2a
    const-string v1, "11"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xa

    goto/16 :goto_9d

    :sswitch_36
    const-string v1, "10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x9

    goto :goto_9d

    :sswitch_41
    const-string v1, "09"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x8

    goto :goto_9d

    :sswitch_4c
    const-string v1, "08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x7

    goto :goto_9d

    :sswitch_56
    const-string v1, "07"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x6

    goto :goto_9d

    :sswitch_60
    const-string v1, "06"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x5

    goto :goto_9d

    :sswitch_6a
    const-string v1, "05"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x4

    goto :goto_9d

    :sswitch_74
    const-string v1, "04"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x3

    goto :goto_9d

    :sswitch_7e
    const-string v1, "03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x2

    goto :goto_9d

    :sswitch_88
    const-string v1, "02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_9d

    :sswitch_92
    const-string v1, "01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_9d

    :goto_9c
    const/4 v1, -0x1

    :goto_9d
    packed-switch v1, :pswitch_data_12a

    .line 1428
    return-object v0

    .line 1426
    :pswitch_a1
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1424
    :pswitch_a8
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1422
    :pswitch_af
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1420
    :pswitch_b6
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1418
    :pswitch_bd
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1416
    :pswitch_c4
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1414
    :pswitch_cb
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1412
    :pswitch_d2
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1410
    :pswitch_d9
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1408
    :pswitch_e0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1406
    :pswitch_e5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1404
    :pswitch_ea
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1402
    :pswitch_ef
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_data_f4
    .sparse-switch
        0x601 -> :sswitch_92
        0x602 -> :sswitch_88
        0x603 -> :sswitch_7e
        0x604 -> :sswitch_74
        0x605 -> :sswitch_6a
        0x606 -> :sswitch_60
        0x607 -> :sswitch_56
        0x608 -> :sswitch_4c
        0x609 -> :sswitch_41
        0x61f -> :sswitch_36
        0x620 -> :sswitch_2a
        0x621 -> :sswitch_1e
        0x622 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_ea
        :pswitch_e5
        :pswitch_e0
        :pswitch_d9
        :pswitch_d2
        :pswitch_cb
        :pswitch_c4
        :pswitch_bd
        :pswitch_b6
        :pswitch_af
        :pswitch_a8
        :pswitch_a1
    .end packed-switch
.end method

.method private static dolbyVisionStringToProfile(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7
    .param p0, "profileString"    # Ljava/lang/String;

    .line 1365
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1366
    return-object v0

    .line 1368
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_bc

    :cond_10
    goto/16 :goto_78

    :pswitch_12
    const-string v1, "09"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x9

    goto :goto_79

    :pswitch_1d
    const-string v1, "08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x8

    goto :goto_79

    :pswitch_28
    const-string v1, "07"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x7

    goto :goto_79

    :pswitch_32
    const-string v1, "06"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x6

    goto :goto_79

    :pswitch_3c
    const-string v1, "05"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x5

    goto :goto_79

    :pswitch_46
    const-string v1, "04"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x4

    goto :goto_79

    :pswitch_50
    const-string v1, "03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x3

    goto :goto_79

    :pswitch_5a
    const-string v1, "02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x2

    goto :goto_79

    :pswitch_64
    const-string v1, "01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_79

    :pswitch_6e
    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_79

    :goto_78
    const/4 v1, -0x1

    :goto_79
    packed-switch v1, :pswitch_data_d4

    .line 1390
    return-object v0

    .line 1388
    :pswitch_7d
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1386
    :pswitch_84
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1384
    :pswitch_8b
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1382
    :pswitch_92
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1380
    :pswitch_99
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1378
    :pswitch_a0
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1376
    :pswitch_a7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1374
    :pswitch_ac
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1372
    :pswitch_b1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1370
    :pswitch_b6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_bc
    .packed-switch 0x600
        :pswitch_6e
        :pswitch_64
        :pswitch_5a
        :pswitch_50
        :pswitch_46
        :pswitch_3c
        :pswitch_32
        :pswitch_28
        :pswitch_1d
        :pswitch_12
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a0
        :pswitch_99
        :pswitch_92
        :pswitch_8b
        :pswitch_84
        :pswitch_7d
    .end packed-switch
.end method

.method private static getAacCodecProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 12
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1014
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "Ignoring malformed MP4A codec string: "

    const-string v4, "MediaCodecUtil"

    if-eq v0, v1, :cond_1e

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-object v2

    .line 1020
    :cond_1e
    const/4 v0, 0x1

    :try_start_1f
    aget-object v0, p1, v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1021
    .local v0, "objectTypeIndication":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, "mimeType":Ljava/lang/String;
    const-string v5, "audio/mp4a-latm"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1024
    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1025
    .local v5, "audioObjectTypeIndication":I
    invoke-static {v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->mp4aAudioObjectTypeToProfile(I)I

    move-result v6

    .line 1026
    .local v6, "profile":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_50

    .line 1028
    new-instance v7, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_4f} :catch_51

    return-object v7

    .line 1033
    .end local v0    # "objectTypeIndication":I
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v5    # "audioObjectTypeIndication":I
    .end local v6    # "profile":I
    :cond_50
    goto :goto_66

    .line 1031
    :catch_51
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_66
    return-object v2
.end method

.method public static getAlternativeCodecMimeType(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 4
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 354
    const-string v0, "audio/eac3-joc"

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 356
    const-string v0, "audio/eac3"

    return-object v0

    .line 358
    :cond_d
    const-string v0, "video/dolby-vision"

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 363
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v0

    .line 364
    .local v0, "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_38

    .line 365
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 366
    .local v1, "profile":I
    const/16 v2, 0x10

    if-eq v1, v2, :cond_35

    const/16 v2, 0x100

    if-ne v1, v2, :cond_2e

    goto :goto_35

    .line 369
    :cond_2e
    const/16 v2, 0x200

    if-ne v1, v2, :cond_38

    .line 370
    const-string v2, "video/avc"

    return-object v2

    .line 368
    :cond_35
    :goto_35
    const-string v2, "video/hevc"

    return-object v2

    .line 374
    .end local v0    # "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1    # "profile":I
    :cond_38
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAlternativeDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;
    .registers 6
    .param p0, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "requiresSecureDecoder"    # Z
    .param p3, "requiresTunnelingDecoder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 262
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "alternativeMimeType":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 264
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 266
    :cond_b
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getAv1ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/exoplayer2/video/ColorInfo;)Landroid/util/Pair;
    .registers 12
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .param p2, "colorInfo"    # Lcom/google/android/exoplayer2/video/ColorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 924
    array-length v0, p1

    const/4 v1, 0x4

    const-string v2, "Ignoring malformed AV1 codec string: "

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v1, :cond_1e

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    return-object v3

    .line 932
    :cond_1e
    const/4 v0, 0x1

    :try_start_1f
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 933
    .local v0, "profileInteger":I
    const/4 v1, 0x2

    aget-object v5, p1, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 934
    .local v1, "levelInteger":I
    const/4 v5, 0x3

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_38} :catch_b5

    .line 938
    .local v2, "bitDepthInteger":I
    nop

    .line 940
    if-eqz v0, :cond_52

    .line 941
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown AV1 profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    return-object v3

    .line 944
    :cond_52
    const/16 v5, 0x8

    if-eq v2, v5, :cond_71

    const/16 v6, 0xa

    if-eq v2, v6, :cond_71

    .line 945
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown AV1 bit depth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    return-object v3

    .line 949
    :cond_71
    if-ne v2, v5, :cond_75

    .line 950
    const/4 v5, 0x1

    .local v5, "profile":I
    goto :goto_89

    .line 951
    .end local v5    # "profile":I
    :cond_75
    if-eqz p2, :cond_88

    iget-object v5, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-nez v5, :cond_85

    iget v5, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_85

    iget v5, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_88

    .line 955
    :cond_85
    const/16 v5, 0x1000

    .restart local v5    # "profile":I
    goto :goto_89

    .line 957
    .end local v5    # "profile":I
    :cond_88
    const/4 v5, 0x2

    .line 960
    .restart local v5    # "profile":I
    :goto_89
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->av1LevelNumberToConst(I)I

    move-result v6

    .line 961
    .local v6, "level":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_a7

    .line 962
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown AV1 level: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    return-object v3

    .line 965
    :cond_a7
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 935
    .end local v0    # "profileInteger":I
    .end local v1    # "levelInteger":I
    .end local v2    # "bitDepthInteger":I
    .end local v5    # "profile":I
    .end local v6    # "level":I
    :catch_b5
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    return-object v3
.end method

.method private static getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 10
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 853
    array-length v0, p1

    const-string v1, "Ignoring malformed AVC codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x2

    if-ge v0, v4, :cond_1e

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    return-object v2

    .line 861
    :cond_1e
    const/4 v0, 0x1

    :try_start_1f
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_41

    .line 863
    aget-object v5, p1, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 864
    .local v4, "profileInteger":I
    aget-object v0, p1, v0

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "levelInteger":I
    goto :goto_53

    .line 865
    .end local v0    # "levelInteger":I
    .end local v4    # "profileInteger":I
    :cond_41
    array-length v5, p1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_9d

    .line 867
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 868
    .local v0, "profileInteger":I
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_51} :catch_b2

    move v4, v0

    move v0, v1

    .line 877
    .local v0, "levelInteger":I
    .restart local v4    # "profileInteger":I
    :goto_53
    nop

    .line 879
    invoke-static {v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->avcProfileNumberToConst(I)I

    move-result v1

    .line 880
    .local v1, "profile":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_72

    .line 881
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown AVC profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return-object v2

    .line 884
    :cond_72
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->avcLevelNumberToConst(I)I

    move-result v6

    .line 885
    .local v6, "level":I
    if-ne v6, v5, :cond_8f

    .line 886
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown AVC level: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    return-object v2

    .line 889
    :cond_8f
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 871
    .end local v0    # "levelInteger":I
    .end local v1    # "profile":I
    .end local v4    # "profileInteger":I
    .end local v6    # "level":I
    :cond_9d
    :try_start_9d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_9d .. :try_end_b1} :catch_b2

    .line 872
    return-object v2

    .line 874
    :catch_b2
    move-exception v0

    .line 875
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    return-object v2
.end method

.method private static getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "info"    # Landroid/media/MediaCodecInfo;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 496
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "supportedTypes":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 498
    .local v3, "supportedType":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 499
    return-object v3

    .line 497
    .end local v3    # "supportedType":Ljava/lang/String;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 503
    :cond_14
    const-string v1, "video/dolby-vision"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 506
    const-string v1, "OMX.MS.HEVCDV.Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 507
    const-string v1, "video/hevcdv"

    return-object v1

    .line 508
    :cond_27
    const-string v1, "OMX.RTK.video.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 509
    const-string v1, "OMX.realtek.video.decoder.tunneled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 510
    :cond_37
    const-string v1, "video/dv_hevc"

    return-object v1

    .line 512
    :cond_3a
    const-string v1, "audio/alac"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "OMX.lge.alac.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 513
    const-string v1, "audio/x-lg-alac"

    return-object v1

    .line 514
    :cond_4d
    const-string v1, "audio/flac"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "OMX.lge.flac.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 515
    const-string v1, "audio/x-lg-flac"

    return-object v1

    .line 516
    :cond_60
    const-string v1, "audio/ac3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, "OMX.lge.ac3.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 517
    const-string v1, "audio/lg-ac3"

    return-object v1

    .line 520
    :cond_73
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;
    .registers 6
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 318
    return-object v1

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "parts":[Ljava/lang/String;
    const-string v2, "video/dolby-vision"

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 323
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 325
    :cond_1f
    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_9c

    :cond_29
    goto :goto_6f

    :sswitch_2a
    const-string v2, "vp09"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x2

    goto :goto_70

    :sswitch_34
    const-string v2, "mp4a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x6

    goto :goto_70

    :sswitch_3e
    const-string v2, "hvc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x4

    goto :goto_70

    :sswitch_48
    const-string v2, "hev1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x3

    goto :goto_70

    :sswitch_52
    const-string v2, "avc2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    goto :goto_70

    :sswitch_5c
    const-string v4, "avc1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_70

    :sswitch_65
    const-string v2, "av01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x5

    goto :goto_70

    :goto_6f
    const/4 v2, -0x1

    :goto_70
    packed-switch v2, :pswitch_data_ba

    .line 339
    return-object v1

    .line 337
    :pswitch_74
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAacCodecProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 335
    :pswitch_7b
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAv1ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/exoplayer2/video/ColorInfo;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 333
    :pswitch_84
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/exoplayer2/video/ColorInfo;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 330
    :pswitch_8d
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 328
    :pswitch_94
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_9c
    .sparse-switch
        0x2dd8f6 -> :sswitch_65
        0x2ddf23 -> :sswitch_5c
        0x2ddf24 -> :sswitch_52
        0x30d038 -> :sswitch_48
        0x310dbc -> :sswitch_3e
        0x333790 -> :sswitch_34
        0x374e43 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_94
        :pswitch_94
        :pswitch_8d
        :pswitch_84
        :pswitch_84
        :pswitch_7b
        :pswitch_74
    .end packed-switch
.end method

.method public static getDecoderInfo(Ljava/lang/String;ZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "tunneling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 150
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_13

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    :goto_13
    return-object v1
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 12
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "tunneling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-class v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 169
    :try_start_3
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    .line 170
    .local v1, "key":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_85

    .line 171
    .local v3, "cachedDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    if-eqz v3, :cond_14

    .line 172
    monitor-exit v0

    return-object v3

    .line 175
    :cond_14
    :try_start_14
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v5, 0x0

    const/16 v6, 0x15

    if-lt v4, v6, :cond_21

    .line 176
    new-instance v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v4, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;-><init>(ZZ)V

    goto :goto_26

    .line 177
    :cond_21
    new-instance v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    :goto_26
    nop

    .line 178
    .local v4, "mediaCodecList":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object v7

    .line 179
    .local v7, "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    if-eqz p1, :cond_79

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_79

    sget v8, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-gt v6, v8, :cond_79

    sget v6, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v8, 0x17

    if-gt v6, v8, :cond_79

    .line 182
    new-instance v6, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    invoke-direct {v6, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    move-object v4, v6

    .line 183
    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v7, v5

    .line 184
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_79

    .line 185
    const-string v5, "MediaCodecUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ". Assuming: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 190
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v8, v8, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 185
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_79
    invoke-static {p0, v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V

    .line 194
    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 195
    .local v5, "immutableDecoderInfos":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catchall {:try_start_14 .. :try_end_83} :catchall_85

    .line 196
    monitor-exit v0

    return-object v5

    .line 168
    .end local v1    # "key":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;
    .end local v3    # "cachedDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .end local v4    # "mediaCodecList":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    .end local v5    # "immutableDecoderInfos":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .end local v7    # "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .end local p0    # "mimeType":Ljava/lang/String;
    .end local p1    # "secure":Z
    .end local p2    # "tunneling":Z
    :catchall_85
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getDecoderInfosInternal(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;
    .registers 33
    .param p0, "key"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;
    .param p1, "mediaCodecList"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 391
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 392
    .local v5, "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    move-object v15, v0

    .line 393
    .local v15, "mimeType":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v0

    move v14, v0

    .line 394
    .local v14, "numberOfCodecs":I
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v0

    move v13, v0

    .line 396
    .local v13, "secureDecodersExplicit":Z
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_1d
    if-ge v9, v14, :cond_1b6

    .line 397
    invoke-interface {v2, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    move-object v8, v0

    .line 398
    .local v8, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v8}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isAlias(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 401
    move/from16 v28, v9

    move/from16 v29, v13

    move v2, v14

    move-object v6, v15

    goto/16 :goto_182

    .line 403
    :cond_32
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 404
    .local v7, "name":Ljava/lang/String;
    invoke-static {v8, v7, v13, v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 405
    move/from16 v28, v9

    move/from16 v29, v13

    move v2, v14

    move-object v6, v15

    goto/16 :goto_182

    .line 407
    :cond_45
    invoke-static {v8, v7, v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_49} :catch_1b7

    move-object v6, v0

    .line 408
    .local v6, "codecMimeType":Ljava/lang/String;
    if-nez v6, :cond_54

    .line 409
    move/from16 v28, v9

    move/from16 v29, v13

    move v2, v14

    move-object v6, v15

    goto/16 :goto_182

    .line 412
    :cond_54
    :try_start_54
    invoke-virtual {v8, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 413
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    nop

    .line 414
    invoke-interface {v2, v4, v6, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v10

    move/from16 v22, v10

    .line 416
    .local v22, "tunnelingSupported":Z
    nop

    .line 417
    invoke-interface {v2, v4, v6, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v10

    move/from16 v23, v10

    .line 419
    .local v23, "tunnelingRequired":Z
    iget-boolean v10, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-nez v10, :cond_6c

    if-nez v23, :cond_72

    :cond_6c
    iget-boolean v10, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-eqz v10, :cond_7a

    if-nez v22, :cond_7a

    .line 420
    :cond_72
    move/from16 v28, v9

    move/from16 v29, v13

    move v2, v14

    move-object v6, v15

    goto/16 :goto_182

    .line 422
    :cond_7a
    nop

    .line 423
    invoke-interface {v2, v3, v6, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v10

    move v12, v10

    .line 425
    .local v12, "secureSupported":Z
    nop

    .line 426
    invoke-interface {v2, v3, v6, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v10

    move/from16 v24, v10

    .line 428
    .local v24, "secureRequired":Z
    iget-boolean v10, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-nez v10, :cond_8d

    if-nez v24, :cond_93

    :cond_8d
    iget-boolean v10, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v10, :cond_9b

    if-nez v12, :cond_9b

    .line 429
    :cond_93
    move/from16 v28, v9

    move/from16 v29, v13

    move v2, v14

    move-object v6, v15

    goto/16 :goto_182

    .line 431
    :cond_9b
    invoke-static {v8, v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v10

    .line 432
    .local v10, "hardwareAccelerated":Z
    invoke-static {v8, v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v11

    .line 433
    .local v11, "softwareOnly":Z
    invoke-static {v8}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isVendor(Landroid/media/MediaCodecInfo;)Z

    move-result v16
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_a7} :catch_14d

    move/from16 v17, v14

    move v14, v12

    .end local v12    # "secureSupported":Z
    .local v14, "secureSupported":Z
    .local v17, "numberOfCodecs":I
    move/from16 v12, v16

    .line 434
    .local v12, "vendor":Z
    if-eqz v13, :cond_c1

    :try_start_ae
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b0} :catch_b3

    if-eq v2, v14, :cond_c7

    goto :goto_c1

    .line 462
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "hardwareAccelerated":Z
    .end local v11    # "softwareOnly":Z
    .end local v12    # "vendor":Z
    .end local v14    # "secureSupported":Z
    .end local v22    # "tunnelingSupported":Z
    .end local v23    # "tunnelingRequired":Z
    .end local v24    # "secureRequired":Z
    :catch_b3
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v13

    move-object v6, v15

    move/from16 v2, v17

    goto/16 :goto_158

    .line 434
    .restart local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v10    # "hardwareAccelerated":Z
    .restart local v11    # "softwareOnly":Z
    .restart local v12    # "vendor":Z
    .restart local v14    # "secureSupported":Z
    .restart local v22    # "tunnelingSupported":Z
    .restart local v23    # "tunnelingRequired":Z
    .restart local v24    # "secureRequired":Z
    :cond_c1
    :goto_c1
    if-nez v13, :cond_100

    :try_start_c3
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c5} :catch_f2

    if-nez v2, :cond_100

    .line 436
    :cond_c7
    const/4 v2, 0x0

    const/16 v16, 0x0

    .line 437
    move-object/from16 v25, v6

    .end local v6    # "codecMimeType":Ljava/lang/String;
    .local v25, "codecMimeType":Ljava/lang/String;
    move-object v6, v7

    move-object/from16 v26, v7

    .end local v7    # "name":Ljava/lang/String;
    .local v26, "name":Ljava/lang/String;
    move-object v7, v15

    move-object/from16 v27, v8

    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .local v27, "codecInfo":Landroid/media/MediaCodecInfo;
    move-object/from16 v8, v25

    move/from16 v28, v9

    .end local v9    # "i":I
    .local v28, "i":I
    move-object v9, v0

    move/from16 v29, v13

    .end local v13    # "secureDecodersExplicit":Z
    .local v29, "secureDecodersExplicit":Z
    move v13, v2

    move/from16 v30, v14

    move/from16 v2, v17

    .end local v14    # "secureSupported":Z
    .end local v17    # "numberOfCodecs":I
    .local v2, "numberOfCodecs":I
    .local v30, "secureSupported":Z
    move/from16 v14, v16

    :try_start_e0
    invoke-static/range {v6 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v6

    .line 436
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e7} :catch_ec

    move-object v6, v15

    move-object/from16 v7, v26

    goto/16 :goto_14c

    .line 462
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "hardwareAccelerated":Z
    .end local v11    # "softwareOnly":Z
    .end local v12    # "vendor":Z
    .end local v22    # "tunnelingSupported":Z
    .end local v23    # "tunnelingRequired":Z
    .end local v24    # "secureRequired":Z
    .end local v30    # "secureSupported":Z
    :catch_ec
    move-exception v0

    move-object v6, v15

    move-object/from16 v7, v26

    goto/16 :goto_158

    .end local v2    # "numberOfCodecs":I
    .end local v25    # "codecMimeType":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .end local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "i":I
    .end local v29    # "secureDecodersExplicit":Z
    .restart local v6    # "codecMimeType":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v9    # "i":I
    .restart local v13    # "secureDecodersExplicit":Z
    .restart local v17    # "numberOfCodecs":I
    :catch_f2
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v13

    move/from16 v2, v17

    move-object v6, v15

    .end local v6    # "codecMimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v9    # "i":I
    .end local v13    # "secureDecodersExplicit":Z
    .end local v17    # "numberOfCodecs":I
    .restart local v2    # "numberOfCodecs":I
    .restart local v25    # "codecMimeType":Ljava/lang/String;
    .restart local v26    # "name":Ljava/lang/String;
    .restart local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v28    # "i":I
    .restart local v29    # "secureDecodersExplicit":Z
    goto/16 :goto_158

    .line 434
    .end local v2    # "numberOfCodecs":I
    .end local v25    # "codecMimeType":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .end local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "i":I
    .end local v29    # "secureDecodersExplicit":Z
    .restart local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v6    # "codecMimeType":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v9    # "i":I
    .restart local v10    # "hardwareAccelerated":Z
    .restart local v11    # "softwareOnly":Z
    .restart local v12    # "vendor":Z
    .restart local v13    # "secureDecodersExplicit":Z
    .restart local v14    # "secureSupported":Z
    .restart local v17    # "numberOfCodecs":I
    .restart local v22    # "tunnelingSupported":Z
    .restart local v23    # "tunnelingRequired":Z
    .restart local v24    # "secureRequired":Z
    :cond_100
    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v13

    move/from16 v30, v14

    move/from16 v2, v17

    .line 447
    .end local v6    # "codecMimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v9    # "i":I
    .end local v13    # "secureDecodersExplicit":Z
    .end local v14    # "secureSupported":Z
    .end local v17    # "numberOfCodecs":I
    .restart local v2    # "numberOfCodecs":I
    .restart local v25    # "codecMimeType":Ljava/lang/String;
    .restart local v26    # "name":Ljava/lang/String;
    .restart local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v28    # "i":I
    .restart local v29    # "secureDecodersExplicit":Z
    .restart local v30    # "secureSupported":Z
    if-nez v29, :cond_149

    if-eqz v30, :cond_149

    .line 448
    :try_start_112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_117} :catch_144

    move-object/from16 v7, v26

    .end local v26    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :try_start_119
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".secure"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_127} :catch_141

    const/16 v20, 0x0

    const/16 v21, 0x1

    .line 449
    move-object v14, v15

    move-object v6, v15

    .end local v15    # "mimeType":Ljava/lang/String;
    .local v6, "mimeType":Ljava/lang/String;
    move-object/from16 v15, v25

    move-object/from16 v16, v0

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v12

    :try_start_137
    invoke-static/range {v13 .. v21}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v8

    .line 448
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13e} :catch_13f

    .line 460
    return-object v5

    .line 462
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "hardwareAccelerated":Z
    .end local v11    # "softwareOnly":Z
    .end local v12    # "vendor":Z
    .end local v22    # "tunnelingSupported":Z
    .end local v23    # "tunnelingRequired":Z
    .end local v24    # "secureRequired":Z
    .end local v30    # "secureSupported":Z
    :catch_13f
    move-exception v0

    goto :goto_158

    .end local v6    # "mimeType":Ljava/lang/String;
    .restart local v15    # "mimeType":Ljava/lang/String;
    :catch_141
    move-exception v0

    move-object v6, v15

    .end local v15    # "mimeType":Ljava/lang/String;
    .restart local v6    # "mimeType":Ljava/lang/String;
    goto :goto_158

    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .restart local v15    # "mimeType":Ljava/lang/String;
    .restart local v26    # "name":Ljava/lang/String;
    :catch_144
    move-exception v0

    move-object v6, v15

    move-object/from16 v7, v26

    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .restart local v6    # "mimeType":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    goto :goto_158

    .line 447
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .restart local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v10    # "hardwareAccelerated":Z
    .restart local v11    # "softwareOnly":Z
    .restart local v12    # "vendor":Z
    .restart local v15    # "mimeType":Ljava/lang/String;
    .restart local v22    # "tunnelingSupported":Z
    .restart local v23    # "tunnelingRequired":Z
    .restart local v24    # "secureRequired":Z
    .restart local v26    # "name":Ljava/lang/String;
    .restart local v30    # "secureSupported":Z
    :cond_149
    move-object v6, v15

    move-object/from16 v7, v26

    .line 472
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "hardwareAccelerated":Z
    .end local v11    # "softwareOnly":Z
    .end local v12    # "vendor":Z
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v22    # "tunnelingSupported":Z
    .end local v23    # "tunnelingRequired":Z
    .end local v24    # "secureRequired":Z
    .end local v26    # "name":Ljava/lang/String;
    .end local v30    # "secureSupported":Z
    .restart local v6    # "mimeType":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :goto_14c
    goto :goto_182

    .line 462
    .end local v2    # "numberOfCodecs":I
    .end local v25    # "codecMimeType":Ljava/lang/String;
    .end local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "i":I
    .end local v29    # "secureDecodersExplicit":Z
    .local v6, "codecMimeType":Ljava/lang/String;
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v9    # "i":I
    .restart local v13    # "secureDecodersExplicit":Z
    .local v14, "numberOfCodecs":I
    .restart local v15    # "mimeType":Ljava/lang/String;
    :catch_14d
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v13

    move v2, v14

    move-object v6, v15

    .line 463
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v9    # "i":I
    .end local v13    # "secureDecodersExplicit":Z
    .end local v14    # "numberOfCodecs":I
    .end local v15    # "mimeType":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "numberOfCodecs":I
    .local v6, "mimeType":Ljava/lang/String;
    .restart local v25    # "codecMimeType":Ljava/lang/String;
    .restart local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v28    # "i":I
    .restart local v29    # "secureDecodersExplicit":Z
    :goto_158
    :try_start_158
    sget v8, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_15a} :catch_1b7

    const/16 v9, 0x17

    const-string v10, "MediaCodecUtil"

    if-gt v8, v9, :cond_18c

    :try_start_160
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_18c

    .line 465
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping codec "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (failed to query capabilities)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "name":Ljava/lang/String;
    .end local v25    # "codecMimeType":Ljava/lang/String;
    .end local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    :goto_182
    add-int/lit8 v9, v28, 0x1

    move v14, v2

    move-object v15, v6

    move/from16 v13, v29

    move-object/from16 v2, p1

    .end local v28    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_1d

    .line 469
    .end local v9    # "i":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v25    # "codecMimeType":Ljava/lang/String;
    .restart local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v28    # "i":I
    :cond_18c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query codec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v25

    .end local v25    # "codecMimeType":Ljava/lang/String;
    .local v4, "codecMimeType":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    nop

    .end local p0    # "key":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;
    .end local p1    # "mediaCodecList":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    throw v0
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_1b6} :catch_1b7

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "numberOfCodecs":I
    .end local v4    # "codecMimeType":Ljava/lang/String;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v27    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "i":I
    .end local v29    # "secureDecodersExplicit":Z
    .restart local v13    # "secureDecodersExplicit":Z
    .restart local v14    # "numberOfCodecs":I
    .restart local v15    # "mimeType":Ljava/lang/String;
    .restart local p0    # "key":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;
    .restart local p1    # "mediaCodecList":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    :cond_1b6
    return-object v5

    .line 475
    .end local v5    # "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .end local v13    # "secureDecodersExplicit":Z
    .end local v14    # "numberOfCodecs":I
    .end local v15    # "mimeType":Ljava/lang/String;
    :catch_1b7
    move-exception v0

    .line 478
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    goto :goto_1c0

    :goto_1bf
    throw v2

    :goto_1c0
    goto :goto_1bf
.end method

.method public static getDecoderInfosSoftMatch(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;
    .registers 7
    .param p0, "mediaCodecSelector"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "requiresSecureDecoder"    # Z
    .param p3, "requiresTunnelingDecoder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.sampleMimeType"
        }
    .end annotation

    .line 226
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 227
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 229
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    nop

    .line 230
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAlternativeDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v1

    .line 232
    .local v1, "alternativeDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 233
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 234
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 232
    return-object v2
.end method

.method public static getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 277
    .local p0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    .line 278
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/Format;)V

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 280
    return-object p0
.end method

.method public static getDecryptOnlyDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 133
    const-string v0, "audio/raw"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 11
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 784
    array-length v0, p1

    const/4 v1, 0x3

    const-string v2, "Ignoring malformed Dolby Vision codec string: "

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v1, :cond_1e

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-object v3

    .line 790
    :cond_1e
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    aget-object v5, p1, v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 791
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_42

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    return-object v3

    .line 795
    :cond_42
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "profileString":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->dolbyVisionStringToProfile(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 797
    .local v2, "profile":Ljava/lang/Integer;
    if-nez v2, :cond_63

    .line 798
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown Dolby Vision profile string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return-object v3

    .line 801
    :cond_63
    const/4 v5, 0x2

    aget-object v5, p1, v5

    .line 802
    .local v5, "levelString":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->dolbyVisionStringToLevel(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 803
    .local v6, "level":Ljava/lang/Integer;
    if-nez v6, :cond_83

    .line 804
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown Dolby Vision level string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    return-object v3

    .line 807
    :cond_83
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private static getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/exoplayer2/video/ColorInfo;)Landroid/util/Pair;
    .registers 12
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .param p2, "colorInfo"    # Lcom/google/android/exoplayer2/video/ColorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 813
    array-length v0, p1

    const/4 v1, 0x4

    const-string v2, "Ignoring malformed HEVC codec string: "

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v1, :cond_1e

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    return-object v3

    .line 819
    :cond_1e
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    aget-object v5, p1, v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 820
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_42

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    return-object v3

    .line 824
    :cond_42
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 826
    .local v1, "profileString":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 827
    const/4 v2, 0x1

    .local v2, "profile":I
    goto :goto_63

    .line 828
    .end local v2    # "profile":I
    :cond_50
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 829
    if-eqz p2, :cond_62

    iget v2, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v5, 0x6

    if-ne v2, v5, :cond_62

    .line 830
    const/16 v2, 0x1000

    .restart local v2    # "profile":I
    goto :goto_63

    .line 836
    .end local v2    # "profile":I
    :cond_62
    const/4 v2, 0x2

    .line 842
    .restart local v2    # "profile":I
    :goto_63
    const/4 v5, 0x3

    aget-object v5, p1, v5

    .line 843
    .local v5, "levelString":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->hevcCodecStringToProfileLevel(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 844
    .local v6, "level":Ljava/lang/Integer;
    if-nez v6, :cond_83

    .line 845
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown HEVC level string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    return-object v3

    .line 848
    :cond_83
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 839
    .end local v2    # "profile":I
    .end local v5    # "levelString":Ljava/lang/String;
    .end local v6    # "level":Ljava/lang/Integer;
    :cond_8d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown HEVC profile string: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    return-object v3
.end method

.method private static getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 10
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 894
    array-length v0, p1

    const/4 v1, 0x3

    const-string v2, "Ignoring malformed VP9 codec string: "

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v1, :cond_1e

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    return-object v3

    .line 901
    :cond_1e
    const/4 v0, 0x1

    :try_start_1f
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 902
    .local v0, "profileInteger":I
    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_2c} :catch_76

    .line 906
    .local v1, "levelInteger":I
    nop

    .line 908
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->vp9ProfileNumberToConst(I)I

    move-result v2

    .line 909
    .local v2, "profile":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_4b

    .line 910
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown VP9 profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    return-object v3

    .line 913
    :cond_4b
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->vp9LevelNumberToConst(I)I

    move-result v6

    .line 914
    .local v6, "level":I
    if-ne v6, v5, :cond_68

    .line 915
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown VP9 level: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    return-object v3

    .line 918
    :cond_68
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 903
    .end local v0    # "profileInteger":I
    .end local v1    # "levelInteger":I
    .end local v2    # "profile":I
    .end local v6    # "level":I
    :catch_76
    move-exception v0

    .line 904
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    return-object v3
.end method

.method private static hevcCodecStringToProfileLevel(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8
    .param p0, "codecString"    # Ljava/lang/String;

    .line 1302
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1303
    return-object v0

    .line 1305
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/16 v4, 0x10

    const/4 v5, 0x4

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_1ec

    :cond_12
    goto/16 :goto_13a

    :sswitch_14
    const-string v1, "L186"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0xc

    goto/16 :goto_13b

    :sswitch_20
    const-string v1, "L183"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0xb

    goto/16 :goto_13b

    :sswitch_2c
    const-string v1, "L180"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0xa

    goto/16 :goto_13b

    :sswitch_38
    const-string v1, "L156"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x9

    goto/16 :goto_13b

    :sswitch_44
    const-string v1, "L153"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x8

    goto/16 :goto_13b

    :sswitch_50
    const-string v1, "L150"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x7

    goto/16 :goto_13b

    :sswitch_5b
    const-string v1, "L123"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x6

    goto/16 :goto_13b

    :sswitch_66
    const-string v1, "L120"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x5

    goto/16 :goto_13b

    :sswitch_71
    const-string v1, "H186"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x19

    goto/16 :goto_13b

    :sswitch_7d
    const-string v1, "H183"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x18

    goto/16 :goto_13b

    :sswitch_89
    const-string v1, "H180"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x17

    goto/16 :goto_13b

    :sswitch_95
    const-string v1, "H156"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x16

    goto/16 :goto_13b

    :sswitch_a1
    const-string v1, "H153"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x15

    goto/16 :goto_13b

    :sswitch_ad
    const-string v1, "H150"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x14

    goto/16 :goto_13b

    :sswitch_b9
    const-string v1, "H123"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x13

    goto/16 :goto_13b

    :sswitch_c5
    const-string v1, "H120"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x12

    goto/16 :goto_13b

    :sswitch_d1
    const-string v1, "L93"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x4

    goto :goto_13b

    :sswitch_db
    const-string v1, "L90"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x3

    goto :goto_13b

    :sswitch_e5
    const-string v1, "L63"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x2

    goto :goto_13b

    :sswitch_ef
    const-string v1, "L60"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13b

    :sswitch_f9
    const-string v1, "L30"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    goto :goto_13b

    :sswitch_103
    const-string v1, "H93"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x11

    goto :goto_13b

    :sswitch_10e
    const-string v1, "H90"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x10

    goto :goto_13b

    :sswitch_119
    const-string v1, "H63"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0xf

    goto :goto_13b

    :sswitch_124
    const-string v1, "H60"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0xe

    goto :goto_13b

    :sswitch_12f
    const-string v1, "H30"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0xd

    goto :goto_13b

    :goto_13a
    const/4 v1, -0x1

    :goto_13b
    packed-switch v1, :pswitch_data_256

    .line 1359
    return-object v0

    .line 1357
    :pswitch_13f
    const/high16 v0, 0x2000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1355
    :pswitch_146
    const/high16 v0, 0x800000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1353
    :pswitch_14d
    const/high16 v0, 0x200000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1351
    :pswitch_154
    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1349
    :pswitch_15b
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1347
    :pswitch_162
    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1345
    :pswitch_16a
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1343
    :pswitch_171
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1341
    :pswitch_178
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1339
    :pswitch_17f
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1337
    :pswitch_186
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1335
    :pswitch_18d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1333
    :pswitch_192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1331
    :pswitch_197
    const/high16 v0, 0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1329
    :pswitch_19e
    const/high16 v0, 0x400000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1327
    :pswitch_1a5
    const/high16 v0, 0x100000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1325
    :pswitch_1ac
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1323
    :pswitch_1b3
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1321
    :pswitch_1ba
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1319
    :pswitch_1c1
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1317
    :pswitch_1c8
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1315
    :pswitch_1cf
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1313
    :pswitch_1d6
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1311
    :pswitch_1dd
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1309
    :pswitch_1e2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1307
    :pswitch_1e7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_data_1ec
    .sparse-switch
        0x114a5 -> :sswitch_12f
        0x11502 -> :sswitch_124
        0x11505 -> :sswitch_119
        0x1155f -> :sswitch_10e
        0x11562 -> :sswitch_103
        0x123a9 -> :sswitch_f9
        0x12406 -> :sswitch_ef
        0x12409 -> :sswitch_e5
        0x12463 -> :sswitch_db
        0x12466 -> :sswitch_d1
        0x2178e7 -> :sswitch_c5
        0x2178ea -> :sswitch_b9
        0x217944 -> :sswitch_ad
        0x217947 -> :sswitch_a1
        0x21794a -> :sswitch_95
        0x2179a1 -> :sswitch_89
        0x2179a4 -> :sswitch_7d
        0x2179a7 -> :sswitch_71
        0x234a63 -> :sswitch_66
        0x234a66 -> :sswitch_5b
        0x234ac0 -> :sswitch_50
        0x234ac3 -> :sswitch_44
        0x234ac6 -> :sswitch_38
        0x234b1d -> :sswitch_2c
        0x234b20 -> :sswitch_20
        0x234b23 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_256
    .packed-switch 0x0
        :pswitch_1e7
        :pswitch_1e2
        :pswitch_1dd
        :pswitch_1d6
        :pswitch_1cf
        :pswitch_1c8
        :pswitch_1c1
        :pswitch_1ba
        :pswitch_1b3
        :pswitch_1ac
        :pswitch_1a5
        :pswitch_19e
        :pswitch_197
        :pswitch_192
        :pswitch_18d
        :pswitch_186
        :pswitch_17f
        :pswitch_178
        :pswitch_171
        :pswitch_16a
        :pswitch_162
        :pswitch_15b
        :pswitch_154
        :pswitch_14d
        :pswitch_146
        :pswitch_13f
    .end packed-switch
.end method

.method private static isAlias(Landroid/media/MediaCodecInfo;)Z
    .registers 3
    .param p0, "info"    # Landroid/media/MediaCodecInfo;

    .line 704
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isAliasV29(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isAliasV29(Landroid/media/MediaCodecInfo;)Z
    .registers 2
    .param p0, "info"    # Landroid/media/MediaCodecInfo;

    .line 709
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v0

    return v0
.end method

.method private static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 9
    .param p0, "info"    # Landroid/media/MediaCodecInfo;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "secureDecodersExplicit"    # Z
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 537
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_21b

    if-nez p2, :cond_13

    const-string v0, ".secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_21b

    .line 542
    :cond_13
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_4a

    .line 543
    const-string v0, "CIPAACDecoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 544
    const-string v0, "CIPMP3Decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 545
    const-string v0, "CIPVorbisDecoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 546
    const-string v0, "CIPAMRNBDecoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 547
    const-string v0, "AACDecoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 548
    const-string v0, "MP3Decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 549
    :cond_49
    return v1

    .line 554
    :cond_4a
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_77

    .line 555
    const-string v0, "OMX.MTK.AUDIO.DECODER.AAC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 556
    const-string v2, "a70"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 557
    const-string v2, "Xiaomi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "HM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 558
    :cond_76
    return v1

    .line 563
    :cond_77
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_fe

    .line 564
    const-string v0, "OMX.qcom.audio.decoder.mp3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 565
    const-string v3, "dlxu"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 566
    const-string v3, "protou"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 567
    const-string v3, "ville"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 568
    const-string v3, "villeplus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 569
    const-string v3, "villec2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 570
    const-string v3, "gee"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fd

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 571
    const-string v3, "C6602"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 572
    const-string v3, "C6603"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 573
    const-string v3, "C6606"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 574
    const-string v3, "C6616"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 575
    const-string v3, "L36h"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 576
    const-string v3, "SO-02E"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 577
    :cond_fd
    return v1

    .line 581
    :cond_fe
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ne v0, v2, :cond_133

    .line 582
    const-string v0, "OMX.qcom.audio.decoder.aac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 583
    const-string v2, "C1504"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 584
    const-string v2, "C1505"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 585
    const-string v2, "C1604"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 586
    const-string v2, "C1605"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 587
    :cond_132
    return v1

    .line 591
    :cond_133
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "samsung"

    if-ge v0, v2, :cond_1a4

    .line 592
    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b

    const-string v0, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    :cond_14b
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 593
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 594
    const-string v2, "zeroflte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a3

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 595
    const-string v2, "zerolte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a3

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 596
    const-string v2, "zenlte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a3

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 597
    const-string v2, "SC-05G"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a3

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 598
    const-string v2, "marinelteatt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a3

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 599
    const-string v2, "404SC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a3

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 600
    const-string v2, "SC-04G"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a3

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 601
    const-string v2, "SCV31"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 602
    :cond_1a3
    return v1

    .line 607
    :cond_1a4
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const-string v2, "jflte"

    const/16 v4, 0x13

    if-gt v0, v4, :cond_1ed

    .line 608
    const-string v0, "OMX.SEC.vp8.dec"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ed

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 609
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ed

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 610
    const-string v3, "d2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ec

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 611
    const-string v3, "serrano"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ec

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 612
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ec

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 613
    const-string v3, "santos"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ec

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 614
    const-string v3, "t0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ed

    .line 615
    :cond_1ec
    return v1

    .line 619
    :cond_1ed
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-gt v0, v4, :cond_202

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 620
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_202

    .line 621
    const-string v0, "OMX.qcom.video.decoder.vp8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_202

    .line 622
    return v1

    .line 626
    :cond_202
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v0, v2, :cond_219

    .line 627
    const-string v0, "audio/eac3-joc"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_219

    .line 628
    const-string v0, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_219

    .line 629
    return v1

    .line 632
    :cond_219
    const/4 v0, 0x1

    return v0

    .line 538
    :cond_21b
    :goto_21b
    return v1
.end method

.method private static isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .registers 4
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 718
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 719
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    return v0

    .line 723
    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z
    .registers 2
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;

    .line 728
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method private static isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .registers 6
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 736
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 737
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    return v0

    .line 739
    :cond_b
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 741
    return v1

    .line 743
    :cond_13
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "codecName":Ljava/lang/String;
    const-string v2, "arc."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_25

    .line 746
    return v3

    .line 748
    :cond_25
    const-string v2, "omx.google."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 749
    const-string v2, "omx.ffmpeg."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 750
    const-string v2, "omx.sec."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, ".sw."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 751
    :cond_45
    const-string v2, "omx.qcom.video.decoder.hevcswvdec"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 752
    const-string v2, "c2.android."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 753
    const-string v2, "c2.google."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 754
    const-string v2, "omx."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "c2."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    goto :goto_70

    :cond_6e
    const/4 v1, 0x0

    goto :goto_71

    :cond_70
    :goto_70
    nop

    .line 748
    :goto_71
    return v1
.end method

.method private static isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z
    .registers 2
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;

    .line 759
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result v0

    return v0
.end method

.method private static isVendor(Landroid/media/MediaCodecInfo;)Z
    .registers 3
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;

    .line 767
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 768
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isVendorV29(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    return v0

    .line 770
    :cond_b
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "codecName":Ljava/lang/String;
    const-string v1, "omx.google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 772
    const-string v1, "c2.android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 773
    const-string v1, "c2.google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 771
    :goto_2e
    return v1
.end method

.method private static isVendorV29(Landroid/media/MediaCodecInfo;)Z
    .registers 2
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;

    .line 778
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$applyWorkarounds$1(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .registers 4
    .param p0, "decoderInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 666
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 667
    .local v0, "name":Ljava/lang/String;
    const-string v1, "OMX.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "c2.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_25

    .line 671
    :cond_13
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_23

    const-string v1, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 674
    const/4 v1, -0x1

    return v1

    .line 676
    :cond_23
    const/4 v1, 0x0

    return v1

    .line 669
    :cond_25
    :goto_25
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$applyWorkarounds$2(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .registers 3
    .param p0, "decoderInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 689
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v1, "OMX.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getDecoderInfosSortedByFormatSupport$0(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .registers 3
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "decoderInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 279
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatFunctionallySupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sortByScore$3(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p0, "scoreProvider"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 1039
    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static maxH264DecodableFrameSize()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 289
    sget v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_39

    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "result":I
    nop

    .line 293
    const-string v1, "video/avc"

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v1

    .line 294
    .local v1, "decoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    if-eqz v1, :cond_37

    .line 295
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    array-length v4, v3

    :goto_15
    if-ge v2, v4, :cond_26

    aget-object v5, v3, v2

    .line 296
    .local v5, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v6, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 295
    .end local v5    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 300
    :cond_26
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_30

    const v2, 0x54600

    goto :goto_33

    :cond_30
    const v2, 0x2a300

    :goto_33
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 302
    :cond_37
    sput v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    .line 304
    .end local v0    # "result":I
    .end local v1    # "decoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    :cond_39
    sget v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return v0
.end method

.method private static mp4aAudioObjectTypeToProfile(I)I
    .registers 2
    .param p0, "profileNumber"    # I

    .line 1490
    sparse-switch p0, :sswitch_data_24

    .line 1516
    const/4 v0, -0x1

    return v0

    .line 1514
    :sswitch_5
    const/16 v0, 0x2a

    return v0

    .line 1512
    :sswitch_8
    const/16 v0, 0x27

    return v0

    .line 1510
    :sswitch_b
    const/16 v0, 0x1d

    return v0

    .line 1508
    :sswitch_e
    const/16 v0, 0x17

    return v0

    .line 1506
    :sswitch_11
    const/16 v0, 0x14

    return v0

    .line 1504
    :sswitch_14
    const/16 v0, 0x11

    return v0

    .line 1502
    :sswitch_17
    const/4 v0, 0x6

    return v0

    .line 1500
    :sswitch_19
    const/4 v0, 0x5

    return v0

    .line 1498
    :sswitch_1b
    const/4 v0, 0x4

    return v0

    .line 1496
    :sswitch_1d
    const/4 v0, 0x3

    return v0

    .line 1494
    :sswitch_1f
    const/4 v0, 0x2

    return v0

    .line 1492
    :sswitch_21
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_21
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_1d
        0x4 -> :sswitch_1b
        0x5 -> :sswitch_19
        0x6 -> :sswitch_17
        0x11 -> :sswitch_14
        0x14 -> :sswitch_11
        0x17 -> :sswitch_e
        0x1d -> :sswitch_b
        0x27 -> :sswitch_8
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method private static sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider<",
            "TT;>;)V"
        }
    .end annotation

    .line 1039
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "scoreProvider":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;, "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider<TT;>;"
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1040
    return-void
.end method

.method private static vp9LevelNumberToConst(I)I
    .registers 2
    .param p0, "levelNumber"    # I

    .line 1268
    sparse-switch p0, :sswitch_data_2a

    .line 1296
    const/4 v0, -0x1

    return v0

    .line 1294
    :sswitch_5
    const/16 v0, 0x2000

    return v0

    .line 1292
    :sswitch_8
    const/16 v0, 0x1000

    return v0

    .line 1290
    :sswitch_b
    const/16 v0, 0x800

    return v0

    .line 1288
    :sswitch_e
    const/16 v0, 0x200

    return v0

    .line 1286
    :sswitch_11
    const/16 v0, 0x100

    return v0

    .line 1284
    :sswitch_14
    const/16 v0, 0x80

    return v0

    .line 1282
    :sswitch_17
    const/16 v0, 0x40

    return v0

    .line 1280
    :sswitch_1a
    const/16 v0, 0x20

    return v0

    .line 1278
    :sswitch_1d
    const/16 v0, 0x10

    return v0

    .line 1276
    :sswitch_20
    const/16 v0, 0x8

    return v0

    .line 1274
    :sswitch_23
    const/4 v0, 0x4

    return v0

    .line 1272
    :sswitch_25
    const/4 v0, 0x2

    return v0

    .line 1270
    :sswitch_27
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_2a
    .sparse-switch
        0xa -> :sswitch_27
        0xb -> :sswitch_25
        0x14 -> :sswitch_23
        0x15 -> :sswitch_20
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1a
        0x28 -> :sswitch_17
        0x29 -> :sswitch_14
        0x32 -> :sswitch_11
        0x33 -> :sswitch_e
        0x3c -> :sswitch_b
        0x3d -> :sswitch_8
        0x3e -> :sswitch_5
    .end sparse-switch
.end method

.method private static vp9ProfileNumberToConst(I)I
    .registers 2
    .param p0, "profileNumber"    # I

    .line 1253
    packed-switch p0, :pswitch_data_e

    .line 1263
    const/4 v0, -0x1

    return v0

    .line 1261
    :pswitch_5
    const/16 v0, 0x8

    return v0

    .line 1259
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 1257
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 1255
    :pswitch_c
    const/4 v0, 0x1

    return v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static warmDecoderInfoCache(Ljava/lang/String;ZZ)V
    .registers 6
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "tunneling"    # Z

    .line 112
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    :try_end_3
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_3} :catch_4

    .line 116
    goto :goto_c

    .line 113
    :catch_4
    move-exception v0

    .line 115
    .local v0, "e":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    const-string v1, "MediaCodecUtil"

    const-string v2, "Codec warming failed"

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v0    # "e":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    :goto_c
    return-void
.end method
