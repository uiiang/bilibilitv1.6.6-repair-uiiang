.class public final Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "VideoDecoderGLSurfaceView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoDecoderGLSV"


# instance fields
.field private final renderer:Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->renderer:Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;

    .line 75
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 76
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setRenderMode(I)V

    .line 79
    return-void
.end method


# virtual methods
.method public getVideoDecoderOutputBufferRenderer()Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    return-object p0
.end method

.method public setOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;)V
    .registers 3
    .param p1, "outputBuffer"    # Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->renderer:Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->setOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;)V

    .line 84
    return-void
.end method
