.class final Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;
.super Ljava/lang/Object;
.source "SceneRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;
.implements Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneRenderer"


# instance fields
.field private volatile defaultStereoMode:I

.field private final frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

.field private lastProjectionData:[B

.field private lastStereoMode:I

.field private final projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection;",
            ">;"
        }
    .end annotation
.end field

.field private final projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

.field private final resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final rotationMatrix:[F

.field private final sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final tempMatrix:[F

.field private textureId:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 77
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->rotationMatrix:[F

    .line 78
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->tempMatrix:[F

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->defaultStereoMode:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastStereoMode:I

    .line 81
    return-void
.end method

.method private setProjection([BIJ)V
    .registers 10
    .param p1, "projectionData"    # [B
    .param p2, "stereoMode"    # I
    .param p3, "timeNs"    # J

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastProjectionData:[B

    .line 199
    .local v0, "oldProjectionData":[B
    iget v1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastStereoMode:I

    .line 200
    .local v1, "oldStereoMode":I
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastProjectionData:[B

    .line 201
    const/4 v2, -0x1

    if-ne p2, v2, :cond_c

    iget v2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->defaultStereoMode:I

    goto :goto_d

    :cond_c
    move v2, p2

    :goto_d
    iput v2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastStereoMode:I

    .line 202
    if-ne v1, v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastProjectionData:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 203
    return-void

    .line 206
    :cond_1a
    const/4 v2, 0x0

    .line 207
    .local v2, "projectionFromData":Lcom/google/android/exoplayer2/video/spherical/Projection;
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastProjectionData:[B

    if-eqz v3, :cond_25

    .line 208
    iget v4, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastStereoMode:I

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->decode([BI)Lcom/google/android/exoplayer2/video/spherical/Projection;

    move-result-object v2

    .line 211
    :cond_25
    if-eqz v2, :cond_2f

    invoke-static {v2}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 212
    move-object v3, v2

    goto :goto_35

    .line 213
    :cond_2f
    iget v3, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastStereoMode:I

    invoke-static {v3}, Lcom/google/android/exoplayer2/video/spherical/Projection;->createEquirectangular(I)Lcom/google/android/exoplayer2/video/spherical/Projection;

    move-result-object v3

    :goto_35
    nop

    .line 214
    .local v3, "projection":Lcom/google/android/exoplayer2/video/spherical/Projection;
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v4, p3, p4, v3}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 215
    return-void
.end method


# virtual methods
.method public drawFrame([FZ)V
    .registers 14
    .param p1, "viewProjectionMatrix"    # [F
    .param p2, "rightEye"    # Z

    .line 125
    const-string v0, "Failed to draw a frame"

    const-string v1, "SceneRenderer"

    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 127
    :try_start_9
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_c
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_9 .. :try_end_c} :catch_d

    .line 130
    goto :goto_11

    .line 128
    :catch_d
    move-exception v2

    .line 129
    .local v2, "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .end local v2    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :goto_11
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 133
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 135
    :try_start_26
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_29
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 138
    goto :goto_2e

    .line 136
    :catch_2a
    move-exception v2

    .line 137
    .restart local v2    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .end local v2    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :goto_2e
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->setToIdentity([F)V

    .line 142
    :cond_3b
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 143
    .local v0, "lastFrameTimestampNs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->poll(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 144
    .local v2, "sampleTimestampUs":Ljava/lang/Long;
    if-eqz v2, :cond_56

    .line 145
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->pollRotationMatrix([FJ)Z

    .line 147
    :cond_56
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/video/spherical/Projection;

    .line 148
    .local v3, "projection":Lcom/google/android/exoplayer2/video/spherical/Projection;
    if-eqz v3, :cond_65

    .line 149
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->setProjection(Lcom/google/android/exoplayer2/video/spherical/Projection;)V

    .line 152
    .end local v0    # "lastFrameTimestampNs":J
    .end local v2    # "sampleTimestampUs":Ljava/lang/Long;
    .end local v3    # "projection":Lcom/google/android/exoplayer2/video/spherical/Projection;
    :cond_65
    iget-object v5, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->tempMatrix:[F

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->rotationMatrix:[F

    const/4 v10, 0x0

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    iget v1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->textureId:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->tempMatrix:[F

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->draw(I[FZ)V

    .line 154
    return-void
.end method

.method public init()Landroid/graphics/SurfaceTexture;
    .registers 4

    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    :try_start_4
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 101
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->init()V

    .line 104
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 106
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->createExternalTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->textureId:I
    :try_end_18
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_4 .. :try_end_18} :catch_19

    .line 109
    goto :goto_21

    .line 107
    :catch_19
    move-exception v0

    .line 108
    .local v0, "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    const-string v1, "SceneRenderer"

    const-string v2, "Failed to initialize the renderer"

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v0    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :goto_21
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->textureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 111
    new-instance v1, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method synthetic lambda$init$0$com-google-android-exoplayer2-video-spherical-SceneRenderer(Landroid/graphics/SurfaceTexture;)V
    .registers 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onCameraMotion(J[F)V
    .registers 5
    .param p1, "timeUs"    # J
    .param p3, "rotation"    # [F

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->setRotation(J[F)V

    .line 180
    return-void
.end method

.method public onCameraMotionReset()V
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->reset()V

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .registers 9
    .param p1, "presentationTimeUs"    # J
    .param p3, "releaseTimeNs"    # J
    .param p5, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p6, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, p4, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 172
    iget-object v0, p5, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iget v1, p5, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->setProjection([BIJ)V

    .line 173
    return-void
.end method

.method public setDefaultStereoMode(I)V
    .registers 2
    .param p1, "stereoMode"    # I

    .line 90
    iput p1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->defaultStereoMode:I

    .line 91
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->shutdown()V

    .line 159
    return-void
.end method
