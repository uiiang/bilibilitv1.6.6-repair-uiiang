.class final Lcom/google/android/exoplayer2/util/GlUtil$Api17;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/GlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api17"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;
    .registers 9
    .param p0, "sharedContext"    # Landroid/opengl/EGLContext;
    .param p1, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p2, "version"    # I
    .param p3, "configAttributes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 718
    const/16 v0, 0x3098

    const/16 v1, 0x3038

    filled-new-array {v0, p2, v1}, [I

    move-result-object v0

    .line 719
    .local v0, "contextAttributes":[I
    nop

    .line 722
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/GlUtil$Api17;->getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    move-result-object v1

    .line 720
    const/4 v2, 0x0

    invoke-static {p1, v1, p0, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 726
    .local v1, "eglContext":Landroid/opengl/EGLContext;
    if-eqz v1, :cond_18

    .line 733
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 734
    return-object v1

    .line 727
    :cond_18
    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 728
    new-instance v2, Lcom/google/android/exoplayer2/util/GlUtil$GlException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglCreateContext() failed to create a valid context. The device may not support EGL version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createEglDisplay()Landroid/opengl/EGLDisplay;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 700
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 701
    .local v1, "eglDisplay":Landroid/opengl/EGLDisplay;
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "No EGL display."

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 702
    new-array v2, v3, [I

    new-array v3, v3, [I

    .line 703
    invoke-static {v1, v2, v0, v3, v0}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    .line 702
    const-string v2, "Error in eglInitialize."

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 710
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 711
    return-object v1
.end method

.method public static createEglPbufferSurface(Landroid/opengl/EGLDisplay;[I[I)Landroid/opengl/EGLSurface;
    .registers 5
    .param p0, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p1, "configAttributes"    # [I
    .param p2, "pbufferAttributes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 755
    nop

    .line 758
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/GlUtil$Api17;->getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 756
    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 761
    .local v0, "eglSurface":Landroid/opengl/EGLSurface;
    const-string v1, "Error creating surface"

    # invokes: Lcom/google/android/exoplayer2/util/GlUtil;->checkEglException(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/GlUtil;->access$000(Ljava/lang/String;)V

    .line 762
    return-object v0
.end method

.method public static createEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;[I[I)Landroid/opengl/EGLSurface;
    .registers 6
    .param p0, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p1, "surface"    # Ljava/lang/Object;
    .param p2, "configAttributes"    # [I
    .param p3, "windowAttributes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 741
    nop

    .line 744
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/util/GlUtil$Api17;->getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 742
    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p3, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 748
    .local v0, "eglSurface":Landroid/opengl/EGLSurface;
    const-string v1, "Error creating surface"

    # invokes: Lcom/google/android/exoplayer2/util/GlUtil;->checkEglException(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/GlUtil;->access$000(Ljava/lang/String;)V

    .line 749
    return-object v0
.end method

.method public static destroyEglContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V
    .registers 5
    .param p0, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p1, "eglContext"    # Landroid/opengl/EGLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 798
    if-nez p0, :cond_3

    .line 799
    return-void

    .line 801
    :cond_3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p0, v0, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 803
    const-string v0, "Error releasing context"

    # invokes: Lcom/google/android/exoplayer2/util/GlUtil;->checkEglException(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->access$000(Ljava/lang/String;)V

    .line 804
    if-eqz p1, :cond_1b

    .line 805
    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 806
    const-string v0, "Error destroying context"

    # invokes: Lcom/google/android/exoplayer2/util/GlUtil;->checkEglException(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->access$000(Ljava/lang/String;)V

    .line 808
    :cond_1b
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 809
    const-string v0, "Error releasing thread"

    # invokes: Lcom/google/android/exoplayer2/util/GlUtil;->checkEglException(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->access$000(Ljava/lang/String;)V

    .line 810
    invoke-static {p0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 811
    const-string v0, "Error terminating display"

    # invokes: Lcom/google/android/exoplayer2/util/GlUtil;->checkEglException(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->access$000(Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method public static destroyEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V
    .registers 3
    .param p0, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p1, "eglSurface"    # Landroid/opengl/EGLSurface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 817
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 820
    :cond_5
    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 821
    const-string v0, "Error destroying surface"

    # invokes: Lcom/google/android/exoplayer2/util/GlUtil;->checkEglException(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->access$000(Ljava/lang/String;)V

    .line 822
    return-void

    .line 818
    :cond_e
    :goto_e
    return-void
.end method

.method public static focusFramebufferUsingCurrentContext(III)V
    .registers 6
    .param p0, "framebuffer"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 783
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 782
    const-string v2, "No current context"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 785
    new-array v0, v1, [I

    .line 786
    .local v0, "boundFramebuffer":[I
    const v1, 0x8ca6

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 787
    aget v1, v0, v2

    if-eq v1, p0, :cond_24

    .line 788
    const v1, 0x8d40

    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 790
    :cond_24
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 791
    invoke-static {v2, v2, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 792
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 793
    return-void
.end method

.method public static focusRenderTarget(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;III)V
    .registers 7
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

    .line 774
    invoke-static {p0, p2, p2, p1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 775
    const-string v0, "Error making context current"

    # invokes: Lcom/google/android/exoplayer2/util/GlUtil;->checkEglException(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->access$000(Ljava/lang/String;)V

    .line 776
    invoke-static {p3, p4, p5}, Lcom/google/android/exoplayer2/util/GlUtil$Api17;->focusFramebufferUsingCurrentContext(III)V

    .line 777
    return-void
.end method

.method private static getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;
    .registers 12
    .param p0, "eglDisplay"    # Landroid/opengl/EGLDisplay;
    .param p1, "attributes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 827
    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    .line 828
    .local v9, "eglConfigs":[Landroid/opengl/EGLConfig;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v7, v0, [I

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v9

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 839
    const/4 v0, 0x0

    aget-object v0, v9, v0

    return-object v0

    .line 837
    :cond_16
    new-instance v0, Lcom/google/android/exoplayer2/util/GlUtil$GlException;

    const-string v1, "eglChooseConfig failed."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
