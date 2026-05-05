.class final Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;
.implements Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;
.implements Lcom/google/android/exoplayer2/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameMetadataListener"
.end annotation


# static fields
.field public static final MSG_SET_CAMERA_MOTION_LISTENER:I = 0x8

.field public static final MSG_SET_SPHERICAL_SURFACE_VIEW:I = 0x2710

.field public static final MSG_SET_VIDEO_FRAME_METADATA_LISTENER:I = 0x7


# instance fields
.field private cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

.field private internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

.field private internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl$1;

    .line 3174
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(ILjava/lang/Object;)V
    .registers 5
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;

    .line 3192
    sparse-switch p1, :sswitch_data_2a

    goto :goto_28

    .line 3200
    :sswitch_4
    move-object v0, p2

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 3201
    .local v0, "surfaceView":Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;
    if-nez v0, :cond_f

    .line 3202
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 3203
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    goto :goto_28

    .line 3205
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getVideoFrameMetadataListener()Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 3206
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getCameraMotionListener()Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    .line 3208
    goto :goto_28

    .line 3197
    .end local v0    # "surfaceView":Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;
    :sswitch_1c
    move-object v0, p2

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    .line 3198
    goto :goto_28

    .line 3194
    :sswitch_22
    move-object v0, p2

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 3195
    nop

    .line 3221
    :goto_28
    return-void

    nop

    :sswitch_data_2a
    .sparse-switch
        0x7 -> :sswitch_22
        0x8 -> :sswitch_1c
        0x2710 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCameraMotion(J[F)V
    .registers 5
    .param p1, "timeUs"    # J
    .param p3, "rotation"    # [F

    .line 3245
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_7

    .line 3246
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    .line 3248
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_e

    .line 3249
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    .line 3251
    :cond_e
    return-void
.end method

.method public onCameraMotionReset()V
    .registers 2

    .line 3255
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_7

    .line 3256
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    .line 3258
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_e

    .line 3259
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    .line 3261
    :cond_e
    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .registers 15
    .param p1, "presentationTimeUs"    # J
    .param p3, "releaseTimeNs"    # J
    .param p5, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p6, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 3231
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_b

    .line 3232
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 3235
    :cond_b
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v1, :cond_16

    .line 3236
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 3239
    :cond_16
    return-void
.end method
