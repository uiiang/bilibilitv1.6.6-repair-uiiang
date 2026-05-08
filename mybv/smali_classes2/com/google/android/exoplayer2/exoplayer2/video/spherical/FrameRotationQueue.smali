.class final Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;
.super Ljava/lang/Object;
.source "FrameRotationQueue.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final recenterMatrix:[F

.field private recenterMatrixComputed:Z

.field private final rotationMatrix:[F

.field private final rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    .line 45
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    .line 46
    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 47
    return-void
.end method

.method public static computeRecenterMatrix([F[F)V
    .registers 8
    .param p0, "recenterMatrix"    # [F
    .param p1, "rotationMatrix"    # [F

    .line 106
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/GlUtil;->setToIdentity([F)V

    .line 107
    const/16 v0, 0xa

    aget v1, p1, v0

    aget v2, p1, v0

    mul-float v1, v1, v2

    const/16 v2, 0x8

    aget v3, p1, v2

    aget v4, p1, v2

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    .line 109
    .local v1, "normRowSqr":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 110
    .local v3, "normRow":F
    aget v4, p1, v0

    div-float/2addr v4, v3

    const/4 v5, 0x0

    aput v4, p0, v5

    .line 111
    aget v4, p1, v2

    div-float/2addr v4, v3

    const/4 v5, 0x2

    aput v4, p0, v5

    .line 112
    aget v4, p1, v2

    neg-float v4, v4

    div-float/2addr v4, v3

    aput v4, p0, v2

    .line 113
    aget v2, p1, v0

    div-float/2addr v2, v3

    aput v2, p0, v0

    .line 114
    return-void
.end method

.method private static getRotationMatrixFromAngleAxis([F[F)V
    .registers 14
    .param p0, "matrix"    # [F
    .param p1, "angleAxis"    # [F

    .line 120
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 121
    .local v0, "x":F
    const/4 v1, 0x1

    aget v1, p1, v1

    neg-float v1, v1

    .line 122
    .local v1, "y":F
    const/4 v2, 0x2

    aget v2, p1, v2

    neg-float v2, v2

    .line 123
    .local v2, "z":F
    invoke-static {v0, v1, v2}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v3

    .line 124
    .local v3, "angleRad":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_27

    .line 125
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 126
    .local v4, "angleDeg":F
    const/4 v7, 0x0

    div-float v9, v0, v3

    div-float v10, v1, v3

    div-float v11, v2, v3

    move-object v6, p0

    move v8, v4

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 127
    .end local v4    # "angleDeg":F
    goto :goto_2a

    .line 128
    :cond_27
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/GlUtil;->setToIdentity([F)V

    .line 130
    :goto_2a
    return-void
.end method


# virtual methods
.method public pollRotationMatrix([FJ)Z
    .registers 14
    .param p1, "matrix"    # [F
    .param p2, "timestampUs"    # J

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 77
    .local v0, "rotation":[F
    if-nez v0, :cond_c

    .line 78
    const/4 v1, 0x0

    return v1

    .line 81
    :cond_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->getRotationMatrixFromAngleAxis([F[F)V

    .line 82
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1f

    .line 83
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->computeRecenterMatrix([F[F)V

    .line 84
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    .line 86
    :cond_1f
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 87
    return v2
.end method

.method public reset()V
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    .line 64
    return-void
.end method

.method public setRotation(J[F)V
    .registers 5
    .param p1, "timestampUs"    # J
    .param p3, "angleAxis"    # [F

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 58
    return-void
.end method
