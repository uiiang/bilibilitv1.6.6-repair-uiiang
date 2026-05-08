.class public final Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo$Api29;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COVERAGE_RESULT_NO:I = 0x1

.field private static final COVERAGE_RESULT_NO_EMPTY_LIST:I = 0x0

.field private static final COVERAGE_RESULT_YES:I = 0x2

.field public static final MAX_SUPPORTED_INSTANCES_UNKNOWN:I = -0x1

.field public static final TAG:Ljava/lang/String; = "MediaCodecInfo"


# instance fields
.field public final adaptive:Z

.field public final capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final codecMimeType:Ljava/lang/String;

.field public final hardwareAccelerated:Z

.field private final isVideo:Z

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final secure:Z

.field public final softwareOnly:Z

.field public final tunneling:Z

.field public final vendor:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "codecMimeType"    # Ljava/lang/String;
    .param p4, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;
    .param p5, "hardwareAccelerated"    # Z
    .param p6, "softwareOnly"    # Z
    .param p7, "vendor"    # Z
    .param p8, "adaptive"    # Z
    .param p9, "tunneling"    # Z
    .param p10, "secure"    # Z

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 212
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 213
    iput-object p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 214
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    .line 215
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->softwareOnly:Z

    .line 216
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->vendor:Z

    .line 217
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    .line 218
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->tunneling:Z

    .line 219
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    .line 220
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideo:Z

    .line 221
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 70
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->needsIgnorePerformancePointsWorkaround()Z

    move-result v0

    return v0
.end method

.method private static adjustMaxInputChannelCount(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "maxChannelCount"    # I

    .line 661
    const/4 v0, 0x1

    if-gt p2, v0, :cond_b1

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    if-lez p2, :cond_d

    goto/16 :goto_b1

    .line 665
    :cond_d
    const-string v0, "audio/mpeg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 666
    const-string v0, "audio/3gpp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 667
    const-string v0, "audio/amr-wb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 668
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 669
    const-string v0, "audio/vorbis"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 670
    const-string v0, "audio/opus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 671
    const-string v0, "audio/raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 672
    const-string v0, "audio/flac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 673
    const-string v0, "audio/g711-alaw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 674
    const-string v0, "audio/g711-mlaw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 675
    const-string v0, "audio/gsm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_b0

    .line 681
    :cond_66
    const-string v0, "audio/ac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 682
    const/4 v0, 0x6

    .local v0, "assumedMaxChannelCount":I
    goto :goto_7d

    .line 683
    .end local v0    # "assumedMaxChannelCount":I
    :cond_70
    const-string v0, "audio/eac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 684
    const/16 v0, 0x10

    .restart local v0    # "assumedMaxChannelCount":I
    goto :goto_7d

    .line 687
    .end local v0    # "assumedMaxChannelCount":I
    :cond_7b
    const/16 v0, 0x1e

    .line 689
    .restart local v0    # "assumedMaxChannelCount":I
    :goto_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AssumedMaxChannelAdjustment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaCodecInfo"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    return v0

    .line 677
    .end local v0    # "assumedMaxChannelCount":I
    :cond_b0
    :goto_b0
    return p2

    .line 663
    :cond_b1
    :goto_b1
    return p2
.end method

.method private static alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .registers 8
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$VideoCapabilities;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 751
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    .line 752
    .local v0, "widthAlignment":I
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v1

    .line 753
    .local v1, "heightAlignment":I
    new-instance v2, Landroid/graphics/Point;

    .line 754
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v3

    mul-int v3, v3, v0

    .line 755
    invoke-static {p2, v1}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v4

    mul-int v4, v4, v1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 753
    return-object v2
.end method

.method private static areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .registers 9
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$VideoCapabilities;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # D

    .line 732
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object v0

    .line 733
    .local v0, "alignedSize":Landroid/graphics/Point;
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 734
    iget p2, v0, Landroid/graphics/Point;->y:I

    .line 738
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p3, v1

    if-eqz v3, :cond_1e

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, p3, v1

    if-gez v3, :cond_15

    goto :goto_1e

    .line 744
    :cond_15
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    .line 745
    .local v1, "floorFrameRate":D
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v3

    return v3

    .line 739
    .end local v1    # "floorFrameRate":D
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v1

    return v1
.end method

.method private static estimateLegacyVp9ProfileLevels(Landroid/media/MediaCodecInfo$CodecCapabilities;)[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .registers 6
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, "maxBitrate":I
    if-eqz p0, :cond_17

    .line 777
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    .line 778
    .local v1, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-eqz v1, :cond_17

    .line 779
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 785
    .end local v1    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    :cond_17
    const v1, 0xaba9500

    if-lt v0, v1, :cond_1f

    .line 786
    const/16 v1, 0x400

    .local v1, "level":I
    goto :goto_66

    .line 787
    .end local v1    # "level":I
    :cond_1f
    const v1, 0x7270e00

    if-lt v0, v1, :cond_27

    .line 788
    const/16 v1, 0x200

    .restart local v1    # "level":I
    goto :goto_66

    .line 789
    .end local v1    # "level":I
    :cond_27
    const v1, 0x3938700

    if-lt v0, v1, :cond_2f

    .line 790
    const/16 v1, 0x100

    .restart local v1    # "level":I
    goto :goto_66

    .line 791
    .end local v1    # "level":I
    :cond_2f
    const v1, 0x1c9c380

    if-lt v0, v1, :cond_37

    .line 792
    const/16 v1, 0x80

    .restart local v1    # "level":I
    goto :goto_66

    .line 793
    .end local v1    # "level":I
    :cond_37
    const v1, 0x112a880

    if-lt v0, v1, :cond_3f

    .line 794
    const/16 v1, 0x40

    .restart local v1    # "level":I
    goto :goto_66

    .line 795
    .end local v1    # "level":I
    :cond_3f
    const v1, 0xb71b00

    if-lt v0, v1, :cond_47

    .line 796
    const/16 v1, 0x20

    .restart local v1    # "level":I
    goto :goto_66

    .line 797
    .end local v1    # "level":I
    :cond_47
    const v1, 0x6ddd00

    if-lt v0, v1, :cond_4f

    .line 798
    const/16 v1, 0x10

    .restart local v1    # "level":I
    goto :goto_66

    .line 799
    .end local v1    # "level":I
    :cond_4f
    const v1, 0x36ee80

    if-lt v0, v1, :cond_57

    .line 800
    const/16 v1, 0x8

    .restart local v1    # "level":I
    goto :goto_66

    .line 801
    .end local v1    # "level":I
    :cond_57
    const v1, 0x1b7740

    if-lt v0, v1, :cond_5e

    .line 802
    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_66

    .line 803
    .end local v1    # "level":I
    :cond_5e
    const v1, 0xc3500

    if-lt v0, v1, :cond_65

    .line 804
    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_66

    .line 806
    .end local v1    # "level":I
    :cond_65
    const/4 v1, 0x1

    .line 809
    .restart local v1    # "level":I
    :goto_66
    new-instance v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v2}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 811
    .local v2, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/4 v3, 0x1

    iput v3, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 812
    iput v1, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 814
    new-array v3, v3, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    return-object v3
.end method

.method private static getMaxSupportedInstancesV23(Landroid/media/MediaCodecInfo$CodecCapabilities;)I
    .registers 2
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 760
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMaxSupportedInstances()I

    move-result v0

    return v0
.end method

.method private static isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 3
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 702
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 2
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 707
    const-string v0, "adaptive-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isCodecProfileAndLevelSupported(Lcom/google/android/exoplayer2/Format;Z)Z
    .registers 13
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "checkPerformanceCapabilities"    # Z

    .line 311
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v0

    .line 312
    .local v0, "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 314
    return v1

    .line 316
    :cond_8
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 317
    .local v2, "profile":I
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 318
    .local v3, "level":I
    const-string v4, "video/dolby-vision"

    iget-object v5, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 322
    const-string v4, "video/avc"

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 323
    const/16 v2, 0x8

    .line 324
    const/4 v3, 0x0

    goto :goto_3c

    .line 325
    :cond_30
    const-string v4, "video/hevc"

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 326
    const/4 v2, 0x2

    .line 327
    const/4 v3, 0x0

    .line 331
    :cond_3c
    :goto_3c
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideo:Z

    if-nez v4, :cond_45

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_45

    .line 334
    return v1

    .line 337
    :cond_45
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v4

    .line 338
    .local v4, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v5, v6, :cond_62

    const-string v5, "video/x-vnd.on2.vp9"

    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    array-length v5, v4

    if-nez v5, :cond_62

    .line 341
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-static {v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->estimateLegacyVp9ProfileLevels(Landroid/media/MediaCodecInfo$CodecCapabilities;)[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v4

    .line 344
    :cond_62
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_65
    if-ge v7, v5, :cond_7f

    aget-object v8, v4, v7

    .line 345
    .local v8, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v9, v2, :cond_7c

    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ge v9, v3, :cond_73

    if-nez p2, :cond_7c

    :cond_73
    iget-object v9, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 347
    invoke-static {v9, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->needsProfileExcludedWorkaround(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_7c

    .line 348
    return v1

    .line 344
    .end local v8    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_7c
    add-int/lit8 v7, v7, 0x1

    goto :goto_65

    .line 351
    :cond_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "codec.profileLevel, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 352
    return v6
.end method

.method private isSampleMimeTypeSupported(Lcom/google/android/exoplayer2/Format;)Z
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 306
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 305
    :goto_1a
    return v0
.end method

.method private static isSecure(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 3
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 720
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSecureV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isSecureV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 2
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 725
    const-string v0, "secure-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isTunneling(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 3
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 711
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isTunnelingV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isTunnelingV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 2
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 716
    const-string v0, "tunneled-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private logAssumedSupport(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssumedSupport ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecInfo"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method private logNoSupport(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoSupport ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecInfo"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method private static needsAdaptationFlushWorkaround(Ljava/lang/String;)Z
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 854
    const-string v0, "audio/opus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static needsAdaptationReconfigureWorkaround(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 839
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-T230"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static needsDisableAdaptationWorkaround(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 825
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2c

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 826
    const-string v1, "ODROID-XU3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "Nexus 10"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 827
    :cond_1a
    const-string v0, "OMX.Exynos.AVC.Decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2a
    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 825
    :goto_2d
    return v0
.end method

.method private static needsIgnorePerformancePointsWorkaround()Z
    .registers 2

    .line 888
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "sabrina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 889
    const-string v1, "boreal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 891
    const-string v1, "Lenovo TB-X605"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 892
    const-string v1, "Lenovo TB-X606"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 893
    const-string v1, "Lenovo TB-X616"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x1

    .line 888
    :goto_36
    return v0
.end method

.method private static needsProfileExcludedWorkaround(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "profile"    # I

    .line 880
    const-string v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    if-ne v0, p1, :cond_21

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 882
    const-string v1, "sailfish"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "marlin"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 880
    :goto_22
    return v0
.end method

.method private static needsRotatedVerticalResolutionWorkaround(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 867
    const-string v0, "OMX.MTK.VIDEO.DECODER.HEVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "mcv5a"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 869
    const/4 v0, 0x0

    return v0

    .line 871
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .registers 21
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "codecMimeType"    # Ljava/lang/String;
    .param p3, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;
    .param p4, "hardwareAccelerated"    # Z
    .param p5, "softwareOnly"    # Z
    .param p6, "vendor"    # Z
    .param p7, "forceDisableAdaptive"    # Z
    .param p8, "forceSecure"    # Z

    .line 182
    new-instance v11, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p7, :cond_16

    if-eqz p3, :cond_16

    .line 192
    invoke-static {p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 193
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->needsDisableAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v8, 0x1

    goto :goto_17

    :cond_16
    const/4 v8, 0x0

    :goto_17
    if-eqz p3, :cond_21

    .line 194
    invoke-static {p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isTunneling(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v9, 0x1

    goto :goto_22

    :cond_21
    const/4 v9, 0x0

    :goto_22
    if-nez p8, :cond_2f

    if-eqz p3, :cond_2d

    .line 195
    invoke-static {p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSecure(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v10, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v10, 0x1

    :goto_30
    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    .line 182
    return-object v11
.end method


# virtual methods
.method public alignVideoSizeV21(II)Landroid/graphics/Point;
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 568
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 569
    return-object v1

    .line 571
    :cond_6
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 572
    .local v0, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-nez v0, :cond_d

    .line 573
    return-object v1

    .line 575
    :cond_d
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object v1

    return-object v1
.end method

.method public canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .registers 18
    .param p1, "oldFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "newFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 425
    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v1, 0x0

    .line 426
    .local v1, "discardReasons":I
    iget-object v2, v7, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 427
    or-int/lit8 v1, v1, 0x8

    .line 430
    :cond_12
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideo:Z

    if-eqz v2, :cond_6a

    .line 431
    iget v2, v7, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iget v3, v8, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    if-eq v2, v3, :cond_1e

    .line 432
    or-int/lit16 v1, v1, 0x400

    .line 434
    :cond_1e
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    if-nez v2, :cond_30

    iget v2, v7, Lcom/google/android/exoplayer2/Format;->width:I

    iget v3, v8, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v2, v3, :cond_2e

    iget v2, v7, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, v8, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v2, v3, :cond_30

    .line 436
    :cond_2e
    or-int/lit16 v1, v1, 0x200

    .line 438
    :cond_30
    iget-object v2, v7, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-object v3, v8, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 439
    or-int/lit16 v1, v1, 0x800

    .line 441
    :cond_3c
    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->needsAdaptationReconfigureWorkaround(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 442
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer2/Format;->initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 443
    or-int/lit8 v1, v1, 0x2

    move v9, v1

    goto :goto_4f

    .line 446
    :cond_4e
    move v9, v1

    .end local v1    # "discardReasons":I
    .local v9, "discardReasons":I
    :goto_4f
    if-nez v9, :cond_e8

    .line 447
    new-instance v10, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 451
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer2/Format;->initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 452
    const/4 v1, 0x3

    const/4 v5, 0x3

    goto :goto_60

    .line 453
    :cond_5e
    const/4 v1, 0x2

    const/4 v5, 0x2

    :goto_60
    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    .line 447
    return-object v10

    .line 457
    .end local v9    # "discardReasons":I
    .restart local v1    # "discardReasons":I
    :cond_6a
    iget v2, v7, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v3, v8, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v2, v3, :cond_72

    .line 458
    or-int/lit16 v1, v1, 0x1000

    .line 460
    :cond_72
    iget v2, v7, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v3, v8, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v2, v3, :cond_7a

    .line 461
    or-int/lit16 v1, v1, 0x2000

    .line 463
    :cond_7a
    iget v2, v7, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v3, v8, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    if-eq v2, v3, :cond_84

    .line 464
    or-int/lit16 v1, v1, 0x4000

    move v9, v1

    goto :goto_85

    .line 463
    :cond_84
    move v9, v1

    .line 469
    .end local v1    # "discardReasons":I
    .restart local v9    # "discardReasons":I
    :goto_85
    if-nez v9, :cond_c4

    const-string v1, "audio/mp4a-latm"

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 471
    nop

    .line 472
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v10

    .line 474
    .local v10, "oldCodecProfileLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 475
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v11

    .line 476
    .local v11, "newCodecProfileLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_c4

    if-eqz v11, :cond_c4

    .line 477
    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 478
    .local v12, "oldProfile":I
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 479
    .local v13, "newProfile":I
    const/16 v1, 0x2a

    if-ne v12, v1, :cond_c4

    if-ne v13, v1, :cond_c4

    .line 481
    new-instance v14, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v14

    .line 491
    .end local v10    # "oldCodecProfileLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v11    # "newCodecProfileLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v12    # "oldProfile":I
    .end local v13    # "newProfile":I
    :cond_c4
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer2/Format;->initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-nez v1, :cond_cc

    .line 492
    or-int/lit8 v9, v9, 0x20

    .line 494
    :cond_cc
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->needsAdaptationFlushWorkaround(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 495
    or-int/lit8 v1, v9, 0x2

    move v9, v1

    .line 498
    :cond_d7
    if-nez v9, :cond_e8

    .line 499
    new-instance v10, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v10

    .line 504
    :cond_e8
    new-instance v10, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, v10

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v10
.end method

.method public getMaxSupportedInstances()I
    .registers 3

    .line 247
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v0, :cond_b

    goto :goto_10

    .line 250
    :cond_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getMaxSupportedInstancesV23(Landroid/media/MediaCodecInfo$CodecCapabilities;)I

    move-result v0

    return v0

    .line 248
    :cond_10
    :goto_10
    const/4 v0, -0x1

    return v0
.end method

.method public getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_9

    goto :goto_e

    .line 236
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    goto :goto_11

    .line 235
    :cond_e
    :goto_e
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 234
    :goto_11
    return-object v0
.end method

.method public isAudioChannelCountSupportedV21(I)Z
    .registers 7
    .param p1, "channelCount"    # I

    .line 614
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 615
    const-string v0, "channelCount.caps"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 616
    return v1

    .line 618
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    .line 619
    .local v0, "audioCapabilities":Landroid/media/MediaCodecInfo$AudioCapabilities;
    if-nez v0, :cond_17

    .line 620
    const-string v2, "channelCount.aCaps"

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 621
    return v1

    .line 623
    :cond_17
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 624
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->adjustMaxInputChannelCount(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 625
    .local v2, "maxInputChannelCount":I
    if-ge v2, p1, :cond_3c

    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelCount.support, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 627
    return v1

    .line 629
    :cond_3c
    const/4 v1, 0x1

    return v1
.end method

.method public isAudioSampleRateSupportedV21(I)Z
    .registers 6
    .param p1, "sampleRate"    # I

    .line 588
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 589
    const-string v0, "sampleRate.caps"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 590
    return v1

    .line 592
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    .line 593
    .local v0, "audioCapabilities":Landroid/media/MediaCodecInfo$AudioCapabilities;
    if-nez v0, :cond_17

    .line 594
    const-string v2, "sampleRate.aCaps"

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 595
    return v1

    .line 597
    :cond_17
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v2

    if-nez v2, :cond_34

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sampleRate.support, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 599
    return v1

    .line 601
    :cond_34
    const/4 v1, 0x1

    return v1
.end method

.method public isFormatFunctionallySupported(Lcom/google/android/exoplayer2/Format;)Z
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 300
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSampleMimeTypeSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 301
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isCodecProfileAndLevelSupported(Lcom/google/android/exoplayer2/Format;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    nop

    .line 300
    :goto_10
    return v1
.end method

.method public isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z
    .registers 6
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSampleMimeTypeSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 263
    return v1

    .line 266
    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isCodecProfileAndLevelSupported(Lcom/google/android/exoplayer2/Format;Z)Z

    move-result v2

    if-nez v2, :cond_10

    .line 267
    return v1

    .line 270
    :cond_10
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideo:Z

    const/16 v3, 0x15

    if-eqz v2, :cond_65

    .line 271
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v2, :cond_64

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    if-gtz v2, :cond_1f

    goto :goto_64

    .line 274
    :cond_1f
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v2, v3, :cond_2f

    .line 275
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    float-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v0

    return v0

    .line 277
    :cond_2f
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int v2, v2, v3

    .line 278
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v3

    if-gt v2, v3, :cond_3c

    const/4 v1, 0x1

    :cond_3c
    move v0, v1

    .line 279
    .local v0, "isFormatSupported":Z
    if-nez v0, :cond_63

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyFrameSize, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 282
    :cond_63
    return v0

    .line 272
    .end local v0    # "isFormatSupported":Z
    :cond_64
    :goto_64
    return v0

    .line 285
    :cond_65
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v2, v3, :cond_84

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_76

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 287
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isAudioSampleRateSupportedV21(I)Z

    move-result v2

    if-eqz v2, :cond_83

    :cond_76
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v2, v3, :cond_84

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 289
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isAudioChannelCountSupportedV21(I)Z

    move-result v2

    if-eqz v2, :cond_83

    goto :goto_84

    :cond_83
    goto :goto_85

    :cond_84
    :goto_84
    const/4 v1, 0x1

    .line 285
    :goto_85
    return v1
.end method

.method public isHdr10PlusOutOfBandMetadataSupported()Z
    .registers 8

    .line 357
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_26

    const-string v0, "video/x-vnd.on2.vp9"

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 358
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_26

    aget-object v4, v0, v3

    .line 359
    .local v4, "capabilities":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v5, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v6, 0x4000

    if-ne v5, v6, :cond_23

    .line 360
    const/4 v0, 0x1

    return v0

    .line 358
    .end local v4    # "capabilities":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 364
    :cond_26
    return v2
.end method

.method public isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z
    .registers 5
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 379
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideo:Z

    if-eqz v0, :cond_7

    .line 380
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    return v0

    .line 382
    :cond_7
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v0

    .line 383
    .local v0, "profileLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1b

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method

.method public isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Z
    .registers 6
    .param p1, "oldFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "newFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "isNewFormatComplete"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 405
    if-nez p3, :cond_18

    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v0, :cond_18

    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-nez v0, :cond_18

    .line 406
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 408
    :cond_18
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    .line 409
    .local v0, "reuseResult":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    goto :goto_27

    :cond_25
    const/4 v1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v1, 0x1

    :goto_28
    return v1
.end method

.method public isVideoSizeAndRateSupportedV21(IID)Z
    .registers 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # D

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 519
    const-string v0, "sizeAndRate.caps"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 520
    return v1

    .line 522
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 523
    .local v0, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-nez v0, :cond_17

    .line 524
    const-string v2, "sizeAndRate.vCaps"

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 525
    return v1

    .line 528
    :cond_17
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x1d

    const-string v4, "@"

    const-string v5, "x"

    const/4 v6, 0x1

    if-lt v2, v3, :cond_54

    .line 530
    nop

    .line 531
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo$Api29;->areResolutionAndFrameRateCovered(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    move-result v2

    .line 532
    .local v2, "evaluation":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 533
    return v6

    .line 534
    :cond_2b
    if-ne v2, v6, :cond_54

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sizeAndRate.cover, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 536
    return v1

    .line 541
    .end local v2    # "evaluation":I
    :cond_54
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 542
    if-ge p1, p2, :cond_92

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 543
    invoke-static {v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->needsRotatedVerticalResolutionWorkaround(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 544
    invoke-static {v0, p2, p1, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_6b

    goto :goto_92

    .line 548
    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizeAndRate.rotated, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logAssumedSupport(Ljava/lang/String;)V

    goto :goto_b9

    .line 545
    :cond_92
    :goto_92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sizeAndRate.support, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 546
    return v1

    .line 550
    :cond_b9
    :goto_b9
    return v6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    return-object v0
.end method
