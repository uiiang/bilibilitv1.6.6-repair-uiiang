.class public final Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;
.super Ljava/lang/Object;
.source "EGLSurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$TextureImageListener;,
        Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$SecureMode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EGL_CONFIG_ATTRIBUTES:[I

.field private static final EGL_PROTECTED_CONTENT_EXT:I = 0x32c0

.field private static final EGL_SURFACE_HEIGHT:I = 0x1

.field private static final EGL_SURFACE_WIDTH:I = 0x1

.field public static final SECURE_MODE_NONE:I = 0x0

.field public static final SECURE_MODE_PROTECTED_PBUFFER:I = 0x2

.field public static final SECURE_MODE_SURFACELESS_CONTEXT:I = 0x1


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$TextureImageListener;

.field private context:Landroid/opengl/EGLContext;

.field private display:Landroid/opengl/EGLDisplay;

.field private final handler:Landroid/os/Handler;

.field private surface:Landroid/opengl/EGLSurface;

.field private texture:Landroid/graphics/SurfaceTexture;

.field private final textureIdHolder:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    return-void

    :array_a
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$TextureImageListener;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$TextureImageListener;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$TextureImageListener;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    .line 119
    iput-object p2, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->callback:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$TextureImageListener;

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->textureIdHolder:[I

    .line 121
    return-void
.end method

.method private static chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .registers 12
    .param p0, "display"    # Landroid/opengl/EGLDisplay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    .line 222
    .local v9, "configs":[Landroid/opengl/EGLConfig;
    new-array v10, v0, [I

    .line 223
    .local v10, "numConfigs":[I
    sget-object v2, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 224
    move-object v1, p0

    move-object v4, v9

    move-object v7, v10

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v1

    .line 233
    .local v1, "success":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    aget v3, v10, v2

    if-lez v3, :cond_1f

    aget-object v3, v9, v2

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 237
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    aget v5, v10, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    aget-object v5, v9, v2

    aput-object v5, v4, v0

    .line 235
    const-string v0, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 239
    aget-object v0, v9, v2

    return-object v0
.end method

.method private static createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .registers 8
    .param p0, "display"    # Landroid/opengl/EGLDisplay;
    .param p1, "config"    # Landroid/opengl/EGLConfig;
    .param p2, "secureMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 245
    const/16 v0, 0x3038

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x3098

    if-nez p2, :cond_d

    .line 246
    filled-new-array {v3, v2, v0}, [I

    move-result-object v0

    .local v0, "glAttributes":[I
    goto :goto_13

    .line 248
    .end local v0    # "glAttributes":[I
    :cond_d
    const/16 v4, 0x32c0

    filled-new-array {v3, v2, v4, v1, v0}, [I

    move-result-object v0

    .line 257
    .restart local v0    # "glAttributes":[I
    :goto_13
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 258
    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v0, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    .line 260
    .local v2, "context":Landroid/opengl/EGLContext;
    if-eqz v2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    const-string v3, "eglCreateContext failed"

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 261
    return-object v2
.end method

.method private static createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;
    .registers 8
    .param p0, "display"    # Landroid/opengl/EGLDisplay;
    .param p1, "config"    # Landroid/opengl/EGLConfig;
    .param p2, "context"    # Landroid/opengl/EGLContext;
    .param p3, "secureMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 268
    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    .line 269
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .local v0, "surface":Landroid/opengl/EGLSurface;
    goto :goto_29

    .line 272
    .end local v0    # "surface":Landroid/opengl/EGLSurface;
    :cond_6
    const/4 v1, 0x2

    if-ne p3, v1, :cond_10

    .line 273
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_34

    .local v1, "pbufferAttributes":[I
    goto :goto_1a

    .line 284
    .end local v1    # "pbufferAttributes":[I
    :cond_10
    const/16 v1, 0x3056

    const/16 v2, 0x3038

    const/16 v3, 0x3057

    filled-new-array {v3, v0, v1, v0, v2}, [I

    move-result-object v1

    .line 293
    .restart local v1    # "pbufferAttributes":[I
    :goto_1a
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    .line 294
    .local v3, "surface":Landroid/opengl/EGLSurface;
    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    const-string v2, "eglCreatePbufferSurface failed"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    move-object v0, v3

    .line 297
    .end local v1    # "pbufferAttributes":[I
    .end local v3    # "surface":Landroid/opengl/EGLSurface;
    .restart local v0    # "surface":Landroid/opengl/EGLSurface;
    :goto_29
    nop

    .line 298
    invoke-static {p0, v0, v0, p2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    .line 299
    .local v1, "eglMadeCurrent":Z
    const-string v2, "eglMakeCurrent failed"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 300
    return-object v0

    :array_34
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data
.end method

.method private dispatchOnFrameAvailable()V
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->callback:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$TextureImageListener;

    if-eqz v0, :cond_7

    .line 205
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$TextureImageListener;->onFrameAvailable()V

    .line 207
    :cond_7
    return-void
.end method

.method private static generateTextureIds([I)V
    .registers 3
    .param p0, "textureIdHolder"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 304
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 305
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 306
    return-void
.end method

.method private static getDefaultDisplay()Landroid/opengl/EGLDisplay;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 211
    .local v1, "display":Landroid/opengl/EGLDisplay;
    const/4 v2, 0x1

    if-eqz v1, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    :goto_b
    const-string v4, "eglGetDisplay failed"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 213
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 214
    .local v3, "version":[I
    nop

    .line 215
    invoke-static {v1, v3, v0, v3, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    .line 216
    .local v0, "eglInitialized":Z
    const-string v2, "eglInitialize failed"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 217
    return-object v1
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public init(I)V
    .registers 6
    .param p1, "secureMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 129
    invoke-static {}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 130
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 131
    .local v0, "config":Landroid/opengl/EGLConfig;
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 132
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v0, v1, p1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 133
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->textureIdHolder:[I

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->generateTextureIds([I)V

    .line 134
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 135
    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 136
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method public release()V
    .registers 8

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    const/16 v0, 0x13

    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_16

    .line 144
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 145
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_6b

    .line 148
    :cond_16
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v2, :cond_2d

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 149
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 152
    :cond_2d
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_40

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 153
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 155
    :cond_40
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_49

    .line 156
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 159
    :cond_49
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v2, v0, :cond_50

    .line 160
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 162
    :cond_50
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_61

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 167
    :cond_61
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 168
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 169
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 170
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 171
    nop

    .line 172
    return-void

    .line 148
    :catchall_6b
    move-exception v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v3, :cond_83

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 149
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 152
    :cond_83
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v3, :cond_96

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    .line 153
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v3, v4}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 155
    :cond_96
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v3, :cond_9f

    .line 156
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 159
    :cond_9f
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v3, v0, :cond_a6

    .line 160
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 162
    :cond_a6
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_b7

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 167
    :cond_b7
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 168
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 169
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 170
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 171
    throw v2
.end method

.method public run()V
    .registers 2

    .line 193
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->dispatchOnFrameAvailable()V

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_c

    .line 196
    :try_start_7
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a} :catch_b

    .line 199
    goto :goto_c

    .line 197
    :catch_b
    move-exception v0

    .line 201
    :cond_c
    :goto_c
    return-void
.end method
