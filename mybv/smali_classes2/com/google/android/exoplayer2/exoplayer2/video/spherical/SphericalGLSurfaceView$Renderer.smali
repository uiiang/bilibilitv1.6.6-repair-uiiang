.class final Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "SphericalGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/google/android/exoplayer2/video/spherical/TouchTracker$Listener;
.implements Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Renderer"
.end annotation


# instance fields
.field private final deviceOrientationMatrix:[F

.field private deviceRoll:F

.field private final projectionMatrix:[F

.field private final scene:Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;

.field private final tempMatrix:[F

.field final synthetic this$0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

.field private touchPitch:F

.field private final touchPitchMatrix:[F

.field private final touchYawMatrix:[F

.field private final viewMatrix:[F

.field private final viewProjectionMatrix:[F


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;)V
    .registers 8
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;
    .param p2, "scene"    # Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;

    .line 292
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    .line 275
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    .line 279
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    .line 283
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    .line 284
    new-array v3, v0, [F

    iput-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    .line 289
    new-array v4, v0, [F

    iput-object v4, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    .line 290
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    .line 293
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;

    .line 294
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/GlUtil;->setToIdentity([F)V

    .line 295
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/GlUtil;->setToIdentity([F)V

    .line 296
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/GlUtil;->setToIdentity([F)V

    .line 297
    const v0, 0x40490fdb    # (float)Math.PI

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    .line 298
    return-void
.end method

.method private calculateFieldOfViewInYDirection(F)F
    .registers 11
    .param p1, "aspect"    # F

    .line 369
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 370
    .local v0, "landscapeMode":Z
    :goto_9
    if-eqz v0, :cond_2b

    .line 371
    const-wide v1, 0x4046800000000000L    # 45.0

    .line 372
    .local v1, "halfFovX":D
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    .line 373
    .local v3, "tanY":D
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    .line 374
    .local v5, "halfFovY":D
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v5

    double-to-float v7, v7

    return v7

    .line 376
    .end local v1    # "halfFovX":D
    .end local v3    # "tanY":D
    .end local v5    # "halfFovY":D
    :cond_2b
    const/high16 v1, 0x42b40000    # 90.0f

    return v1
.end method

.method private updatePitchMatrix()V
    .registers 7

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitch:F

    neg-float v2, v2

    iget v3, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double v3, v3

    .line 349
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double v4, v4

    .line 350
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x0

    .line 345
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 352
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 14
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 318
    monitor-enter p0

    .line 319
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 320
    iget-object v6, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 321
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2f

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 324
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->drawFrame([FZ)V

    .line 325
    return-void

    .line 321
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public declared-synchronized onOrientationChange([FF)V
    .registers 6
    .param p1, "matrix"    # [F
    .param p2, "deviceRoll"    # F

    monitor-enter p0

    .line 331
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    neg-float v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    .line 333
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->updatePitchMatrix()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 334
    monitor-exit p0

    return-void

    .line 330
    .end local p0    # "this":Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;
    .end local p1    # "matrix":[F
    .end local p2    # "deviceRoll":F
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onScrollChange(Landroid/graphics/PointF;)V
    .registers 9
    .param p1, "scrollOffsetDegrees"    # Landroid/graphics/PointF;

    monitor-enter p0

    .line 357
    :try_start_1
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitch:F

    .line 358
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->updatePitchMatrix()V

    .line 359
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v2, 0x0

    iget v0, p1, Landroid/graphics/PointF;->x:F

    neg-float v3, v0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 360
    monitor-exit p0

    return-void

    .line 356
    .end local p0    # "this":Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;
    .end local p1    # "scrollOffsetDegrees":Landroid/graphics/PointF;
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->performClick()Z

    move-result v0

    return v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 307
    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 308
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 309
    .local v0, "aspect":F
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->calculateFieldOfViewInYDirection(F)F

    move-result v1

    .line 310
    .local v1, "fovY":F
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    const/4 v3, 0x0

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x42c80000    # 100.0f

    move v4, v1

    move v5, v0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 311
    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    monitor-enter p0

    .line 302
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->init()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    # invokes: Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->access$000(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 303
    monitor-exit p0

    return-void

    .line 301
    .end local p0    # "this":Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;
    .end local p1    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local p2    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
