.class final Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo$Api29;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api29"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areResolutionAndFrameRateCovered(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I
    .registers 9
    .param p0, "videoCapabilities"    # Landroid/media/MediaCodecInfo$VideoCapabilities;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # D

    .line 918
    nop

    .line 919
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedPerformancePoints()Ljava/util/List;

    move-result-object v0

    .line 920
    .local v0, "performancePointList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;>;"
    if-eqz v0, :cond_34

    .line 921
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    .line 922
    # invokes: Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->needsIgnorePerformancePointsWorkaround()Z
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->access$000()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_34

    .line 929
    :cond_14
    new-instance v1, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    double-to-int v2, p3

    invoke-direct {v1, p1, p2, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(III)V

    .line 932
    .local v1, "targetPerformancePoint":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 933
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-virtual {v3, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 934
    const/4 v3, 0x2

    return v3

    .line 932
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 937
    .end local v2    # "i":I
    :cond_32
    const/4 v2, 0x1

    return v2

    .line 923
    .end local v1    # "targetPerformancePoint":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    :cond_34
    :goto_34
    const/4 v1, 0x0

    return v1
.end method
