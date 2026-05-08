.class public final Lcom/google/android/exoplayer2/util/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/GlUtil$GlException;,
        Lcom/google/android/exoplayer2/util/GlUtil$Api17;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

.field public static final EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

.field private static final EGL_GL_COLORSPACE_BT2020_PQ_EXT:I = 0x3340

.field private static final EGL_GL_COLORSPACE_KHR:I = 0x309d

.field private static final EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ:[I

.field private static final EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

.field private static final EXTENSION_COLORSPACE_BT2020_PQ:Ljava/lang/String; = "EGL_EXT_gl_colorspace_bt2020_pq"

.field private static final EXTENSION_PROTECTED_CONTENT:Ljava/lang/String; = "EGL_EXT_protected_content"

.field private static final EXTENSION_SURFACELESS_CONTEXT:Ljava/lang/String; = "EGL_KHR_surfaceless_context"

.field private static final EXTENSION_YUV_TARGET:Ljava/lang/String; = "GL_EXT_YUV_target"

.field public static final HOMOGENEOUS_COORDINATE_VECTOR_SIZE:I = 0x4

.field public static final LENGTH_NDC:F = 2.0f


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 71
    const/16 v0, 0xf

    new-array v1, v0, [I

    fill-array-data v1, :array_24

    sput-object v1, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    .line 82
    new-array v0, v0, [I

    fill-array-data v0, :array_46

    sput-object v0, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    .line 106
    const/16 v0, 0x309d

    const/16 v1, 0x3340

    const/16 v2, 0x3038

    filled-new-array {v0, v1, v2, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ:[I

    .line 110
    filled-new-array {v2}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    return-void

    nop

    :array_24
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
        0x3026
        0x0
        0x3038
    .end array-data

    :array_46
    .array-data 4
        0x3040
        0x4
        0x3024
        0xa
        0x3023
        0xa
        0x3022
        0xa
        0x3021
        0x2
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/GlUtil;->checkEglException(Ljava/lang/String;)V

    return-void
.end method

.method private static assertValidTextureSize(II)V
    .registers 7
    .param p0, "width"    # I
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 435
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 436
    .local v1, "maxTextureSizeBuffer":[I
    const/16 v2, 0xd33

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 437
    aget v2, v1, v3

    .line 438
    .local v2, "maxTextureSize":I
    if-lez v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-string v3, "Create a OpenGL context first or run the GL methods on an OpenGL thread."

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 442
    if-ltz p0, :cond_36

    if-ltz p1, :cond_36

    .line 445
    if-gt p0, v2, :cond_1d

    if-gt p1, v2, :cond_1d

    .line 449
    return-void

    .line 446
    :cond_1d
    new-instance v0, Lcom/google/android/exoplayer2/util/GlUtil$GlException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width or height is greater than GL_MAX_TEXTURE_SIZE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_36
    new-instance v0, Lcom/google/android/exoplayer2/util/GlUtil$GlException;

    const-string v3, "width or height is less than 0"

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bindTexture(II)V
    .registers 4
    .param p0, "textureTarget"    # I
    .param p1, "texId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 604
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 605
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 606
    const/16 v0, 0x2800

    const/16 v1, 0x2601

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 607
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 608
    const/16 v0, 0x2801

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 609
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 610
    const/16 v0, 0x2802

    const v1, 0x812f

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 611
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 612
    const/16 v0, 0x2803

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 613
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 614
    return-void
.end method

.method private static checkEglException(Ljava/lang/String;)V
    .registers 5
    .param p0, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 690
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 691
    .local v0, "error":I
    const/16 v1, 0x3000

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 692
    return-void
.end method

.method public static checkGlError()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .local v0, "errorMessageBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 410
    .local v1, "foundError":Z
    :goto_6
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    move v3, v2

    .local v3, "error":I
    if-eqz v2, :cond_23

    .line 411
    if-eqz v1, :cond_14

    .line 412
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    :cond_14
    const-string v2, "glError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const/4 v1, 0x1

    goto :goto_6

    .line 417
    :cond_23
    if-nez v1, :cond_26

    .line 420
    return-void

    .line 418
    :cond_26
    new-instance v2, Lcom/google/android/exoplayer2/util/GlUtil$GlException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :goto_30
    throw v2

    :goto_31
    goto :goto_30
.end method

.method public static checkGlException(ZLjava/lang/String;)V
    .registers 3
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 684
    if-eqz p0, :cond_3

    .line 687
    return-void

    .line 685
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/util/GlUtil$GlException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearOutputFrame()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 453
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 454
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 455
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 456
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 457
    return-void
.end method

.method public static create4x4IdentityMatrix()[F
    .registers 1

    .line 137
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 138
    .local v0, "matrix":[F
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->setToIdentity([F)V

    .line 139
    return-object v0
.end method

.method private static createBuffer(I)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "capacity"    # I

    .line 519
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 520
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static createBuffer([F)Ljava/nio/FloatBuffer;
    .registers 2
    .param p0, "data"    # [F

    .line 510
    array-length v0, p0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public static createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;
    .registers 7
    .param p0, "sharedContext"    # Landroid/opengl/EGLContext;
    .param p1, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p2, "openGlVersion"    # I
    .param p3, "configAttributes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    .line 281
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    .line 282
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 280
    :goto_16
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 283
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1f

    const/4 v0, 0x3

    if-ne p2, v0, :cond_20

    :cond_1f
    const/4 v1, 0x1

    :cond_20
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 284
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/GlUtil$Api17;->createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public static createEglContext(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLContext;
    .registers 4
    .param p0, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 259
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    invoke-static {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/util/GlUtil;->createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public static createEglDisplay()Landroid/opengl/EGLDisplay;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 246
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil$Api17;->createEglDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    return-object v0
.end method

.method public static createEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;IZ)Landroid/opengl/EGLSurface;
    .registers 7
    .param p0, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p1, "surface"    # Ljava/lang/Object;
    .param p2, "colorTransfer"    # I
    .param p3, "isEncoderInputSurface"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 308
    const/4 v0, 0x3

    if-eq p2, v0, :cond_3b

    const/16 v0, 0xa

    if-ne p2, v0, :cond_8

    goto :goto_3b

    .line 311
    :cond_8
    const/4 v0, 0x6

    if-ne p2, v0, :cond_15

    .line 312
    sget-object v0, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    .line 313
    .local v0, "configAttributes":[I
    if-eqz p3, :cond_12

    .line 318
    sget-object v1, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    .local v1, "windowAttributes":[I
    goto :goto_3f

    .line 321
    .end local v1    # "windowAttributes":[I
    :cond_12
    sget-object v1, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ:[I

    .restart local v1    # "windowAttributes":[I
    goto :goto_3f

    .line 323
    .end local v0    # "configAttributes":[I
    .end local v1    # "windowAttributes":[I
    :cond_15
    const/4 v0, 0x7

    if-ne p2, v0, :cond_22

    .line 324
    const-string v0, "Outputting HLG to the screen is not supported."

    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 325
    sget-object v0, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    .line 326
    .restart local v0    # "configAttributes":[I
    sget-object v1, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    .restart local v1    # "windowAttributes":[I
    goto :goto_3f

    .line 328
    .end local v0    # "configAttributes":[I
    .end local v1    # "windowAttributes":[I
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported color transfer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_3b
    :goto_3b
    sget-object v0, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    .line 310
    .restart local v0    # "configAttributes":[I
    sget-object v1, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    .line 330
    .restart local v1    # "windowAttributes":[I
    :goto_3f
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/util/GlUtil$Api17;->createEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;[I[I)Landroid/opengl/EGLSurface;

    move-result-object v2

    return-object v2
.end method

.method public static createExternalTexture()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 528
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->generateTexture()I

    move-result v0

    .line 529
    .local v0, "texId":I
    const v1, 0x8d65

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/GlUtil;->bindTexture(II)V

    .line 530
    return v0
.end method

.method public static createFboForTexture(I)I
    .registers 6
    .param p0, "texId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 623
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 622
    const-string v2, "No current context"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 625
    new-array v0, v1, [I

    .line 626
    .local v0, "fboId":[I
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 627
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 628
    aget v1, v0, v2

    const v3, 0x8d40

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 629
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 630
    const v1, 0x8ce0

    const/16 v4, 0xde1

    invoke-static {v3, v1, v4, p0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 632
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 633
    aget v1, v0, v2

    return v1
.end method

.method public static createFocusedPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLSurface;
    .registers 5
    .param p0, "eglContext"    # Landroid/opengl/EGLContext;
    .param p1, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p2, "configAttributes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 389
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->isSurfacelessContextExtensionSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 390
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_e

    .line 391
    :cond_a
    invoke-static {p1, v1, v1, p2}, Lcom/google/android/exoplayer2/util/GlUtil;->createPbufferSurface(Landroid/opengl/EGLDisplay;II[I)Landroid/opengl/EGLSurface;

    move-result-object v0

    :goto_e
    nop

    .line 393
    .local v0, "eglSurface":Landroid/opengl/EGLSurface;
    invoke-static {p1, p0, v0, v1, v1}, Lcom/google/android/exoplayer2/util/GlUtil;->focusEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;II)V

    .line 394
    return-object v0
.end method

.method private static createPbufferSurface(Landroid/opengl/EGLDisplay;II[I)Landroid/opengl/EGLSurface;
    .registers 7
    .param p0, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "configAttributes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 345
    const/16 v0, 0x3056

    const/16 v1, 0x3038

    const/16 v2, 0x3057

    filled-new-array {v2, p1, v0, p2, v1}, [I

    move-result-object v0

    .line 351
    .local v0, "pbufferAttributes":[I
    invoke-static {p0, p3, v0}, Lcom/google/android/exoplayer2/util/GlUtil$Api17;->createEglPbufferSurface(Landroid/opengl/EGLDisplay;[I[I)Landroid/opengl/EGLSurface;

    move-result-object v1

    return-object v1
.end method

.method private static createTexture(IIII)I
    .registers 15
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "internalFormat"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 565
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/GlUtil;->assertValidTextureSize(II)V

    .line 566
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->generateTexture()I

    move-result v0

    .line 567
    .local v0, "texId":I
    const/16 v1, 0xde1

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/GlUtil;->bindTexture(II)V

    .line 568
    mul-int v1, p0, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 569
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1908

    move v4, p2

    move v5, p0

    move v6, p1

    move v9, p3

    move-object v10, v1

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 579
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 580
    return v0
.end method

.method public static createTexture(IIZ)I
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "useHighPrecisionColorComponents"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 546
    if-eqz p2, :cond_1a

    .line 547
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "GLES30 extensions are not supported below API 18."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 548
    const v0, 0x881a

    const/16 v1, 0x140b

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/util/GlUtil;->createTexture(IIII)I

    move-result v0

    return v0

    .line 550
    :cond_1a
    const/16 v0, 0x1908

    const/16 v1, 0x1401

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/util/GlUtil;->createTexture(IIII)I

    move-result v0

    return v0
.end method

.method public static createVertexBuffer(Ljava/util/List;)[F
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)[F"
        }
    .end annotation

    .line 149
    .local p0, "vertexList":Ljava/util/List;, "Ljava/util/List<[F>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    .line 150
    .local v0, "vertexBuffer":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 151
    nop

    .line 152
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v4, v2, 0x4

    .line 151
    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 158
    .end local v2    # "i":I
    :cond_1e
    return-object v0
.end method

.method public static deleteFbo(I)V
    .registers 4
    .param p0, "fboId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 668
    filled-new-array {p0}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 669
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 670
    return-void
.end method

.method public static deleteRbo(I)V
    .registers 4
    .param p0, "rboId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 674
    filled-new-array {p0}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 676
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 677
    return-void
.end method

.method public static deleteTexture(I)V
    .registers 4
    .param p0, "textureId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 642
    filled-new-array {p0}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 643
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 644
    return-void
.end method

.method public static destroyEglContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V
    .registers 2
    .param p0, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p1, "eglContext"    # Landroid/opengl/EGLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 653
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/GlUtil$Api17;->destroyEglContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V

    .line 654
    return-void
.end method

.method public static destroyEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V
    .registers 2
    .param p0, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p1, "eglSurface"    # Landroid/opengl/EGLSurface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 663
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/GlUtil$Api17;->destroyEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V

    .line 664
    return-void
.end method

.method public static focusEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;II)V
    .registers 11
    .param p0, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p1, "eglContext"    # Landroid/opengl/EGLContext;
    .param p2, "eglSurface"    # Landroid/opengl/EGLSurface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 467
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/GlUtil$Api17;->focusRenderTarget(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;III)V

    .line 469
    return-void
.end method

.method public static focusFramebuffer(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;III)V
    .registers 6
    .param p0, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p1, "eglContext"    # Landroid/opengl/EGLContext;
    .param p2, "eglSurface"    # Landroid/opengl/EGLSurface;
    .param p3, "framebuffer"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 484
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/util/GlUtil$Api17;->focusRenderTarget(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;III)V

    .line 485
    return-void
.end method

.method public static focusFramebufferUsingCurrentContext(III)V
    .registers 3
    .param p0, "framebuffer"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 501
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/GlUtil$Api17;->focusFramebufferUsingCurrentContext(III)V

    .line 502
    return-void
.end method

.method public static focusPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLSurface;
    .registers 3
    .param p0, "eglContext"    # Landroid/opengl/EGLContext;
    .param p1, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 367
    sget-object v0, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/util/GlUtil;->createFocusedPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLSurface;

    move-result-object v0

    return-object v0
.end method

.method private static generateTexture()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 586
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 585
    const-string v2, "No current context"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 588
    new-array v0, v1, [I

    .line 589
    .local v0, "texId":[I
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 590
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 591
    aget v1, v0, v2

    return v1
.end method

.method public static getCurrentContext()Landroid/opengl/EGLContext;
    .registers 1

    .line 399
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public static getNormalizedCoordinateBounds()[F
    .registers 1

    .line 117
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getTextureCoordinateBounds()[F
    .registers 1

    .line 127
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static isBt2020PqExtensionSupported()Z
    .registers 4

    .line 238
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 239
    .local v1, "display":Landroid/opengl/EGLDisplay;
    const/16 v2, 0x3055

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "eglExtensions":Ljava/lang/String;
    if-eqz v2, :cond_16

    const-string v3, "EGL_EXT_gl_colorspace_bt2020_pq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public static isProtectedContentExtensionSupported(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 167
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    .line 168
    return v2

    .line 170
    :cond_8
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_23

    const-string v0, "samsung"

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "XT1650"

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 175
    :cond_22
    return v2

    .line 177
    :cond_23
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v0, v1, :cond_34

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 180
    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 182
    return v2

    .line 185
    :cond_34
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 186
    .local v0, "display":Landroid/opengl/EGLDisplay;
    const/16 v1, 0x3055

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "eglExtensions":Ljava/lang/String;
    if-eqz v1, :cond_49

    const-string v3, "EGL_EXT_protected_content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v2, 0x1

    :cond_49
    return v2
.end method

.method public static isSurfacelessContextExtensionSupported()Z
    .registers 4

    .line 198
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    .line 199
    return v2

    .line 201
    :cond_8
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 202
    .local v0, "display":Landroid/opengl/EGLDisplay;
    const/16 v1, 0x3055

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "eglExtensions":Ljava/lang/String;
    if-eqz v1, :cond_1d

    const-string v3, "EGL_KHR_surfaceless_context"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    return v2
.end method

.method public static isYuvTargetExtensionSupported()Z
    .registers 4

    .line 213
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    .line 214
    return v2

    .line 218
    :cond_8
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1f03

    if-eqz v0, :cond_2b

    .line 221
    :try_start_16
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->createEglDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 222
    .local v0, "eglDisplay":Landroid/opengl/EGLDisplay;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->createEglContext(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLContext;

    move-result-object v3

    .line 223
    .local v3, "eglContext":Landroid/opengl/EGLContext;
    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/GlUtil;->focusPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLSurface;

    .line 224
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "glExtensions":Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/GlUtil;->destroyEglContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V
    :try_end_28
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_16 .. :try_end_28} :catch_29

    .line 228
    .end local v0    # "eglDisplay":Landroid/opengl/EGLDisplay;
    .end local v3    # "eglContext":Landroid/opengl/EGLContext;
    goto :goto_2f

    .line 226
    .end local v1    # "glExtensions":Ljava/lang/String;
    :catch_29
    move-exception v0

    .line 227
    .local v0, "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    return v2

    .line 230
    .end local v0    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :cond_2b
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .restart local v1    # "glExtensions":Ljava/lang/String;
    :goto_2f
    if-eqz v1, :cond_3a

    const-string v0, "GL_EXT_YUV_target"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v2, 0x1

    :cond_3a
    return v2
.end method

.method public static setToIdentity([F)V
    .registers 2
    .param p0, "matrix"    # [F

    .line 144
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 145
    return-void
.end method
