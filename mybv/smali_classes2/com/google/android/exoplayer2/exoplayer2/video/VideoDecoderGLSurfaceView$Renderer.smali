.class final Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "VideoDecoderGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Renderer"
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

.field private static final TEXTURE_UNIFORMS:[Ljava/lang/String;

.field private static final TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

.field private static final VERTEX_SHADER:Ljava/lang/String; = "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

.field private static final kColorConversion2020:[F

.field private static final kColorConversion601:[F

.field private static final kColorConversion709:[F


# instance fields
.field private colorMatrixLocation:I

.field private final pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final previousStrides:[I

.field private final previousWidths:[I

.field private program:Lcom/google/android/exoplayer2/util/GlProgram;

.field private renderedOutputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

.field private final surfaceView:Landroid/opengl/GLSurfaceView;

.field private final texLocations:[I

.field private final textureCoords:[Ljava/nio/FloatBuffer;

.field private final yuvTextures:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 96
    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_32

    sput-object v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion601:[F

    .line 102
    new-array v1, v0, [F

    fill-array-data v1, :array_48

    sput-object v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion709:[F

    .line 108
    new-array v0, v0, [F

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion2020:[F

    .line 128
    const-string v0, "u_tex"

    const-string v1, "v_tex"

    const-string v2, "y_tex"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    .line 146
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_74

    .line 147
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    .line 146
    return-void

    nop

    :array_32
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41374bc7    # -0.392f
        0x40011687    # 2.017f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

    :array_48
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41a5e354    # -0.213f
        0x40072b02    # 2.112f
        0x3fe58106    # 1.793f
        -0x40f78d50    # -0.533f
        0x0
    .end array-data

    :array_5e
    .array-data 4
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x0
        -0x41bf7cee    # -0.188f
        0x400978d5    # 2.148f
        0x3fd76c8b    # 1.683f
        -0x40d91687    # -0.652f
        0x0
    .end array-data

    :array_74
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .registers 7
    .param p1, "surfaceView"    # Landroid/opengl/GLSurfaceView;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    .line 169
    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    .line 170
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    .line 171
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    .line 172
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    .line 173
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 174
    new-array v1, v0, [Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->textureCoords:[Ljava/nio/FloatBuffer;

    .line 175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    if-ge v1, v0, :cond_30

    .line 176
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    const/4 v4, -0x1

    aput v4, v3, v1

    aput v4, v2, v1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 178
    .end local v1    # "i":I
    :cond_30
    return-void
.end method

.method private setupTextures()V
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "program"
        }
    .end annotation

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v2, :cond_2a

    .line 321
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    sget-object v3, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 322
    const v1, 0x84c0

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 323
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    aget v1, v1, v0

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/GlUtil;->bindTexture(II)V

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 325
    .end local v0    # "i":I
    :cond_2a
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_2d
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 328
    goto :goto_36

    .line 326
    :catch_2e
    move-exception v0

    .line 327
    .local v0, "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    const-string v1, "VideoDecoderGLSV"

    const-string v2, "Failed to set up the textures"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    .end local v0    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :goto_36
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 23
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 212
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 213
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 214
    .local v2, "pendingOutputBuffer":Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;
    if-nez v2, :cond_13

    iget-object v0, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    if-nez v0, :cond_13

    .line 216
    return-void

    .line 218
    :cond_13
    if-eqz v2, :cond_1e

    .line 219
    iget-object v0, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    if-eqz v0, :cond_1c

    .line 220
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->release()V

    .line 222
    :cond_1c
    iput-object v2, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 225
    :cond_1e
    iget-object v0, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 228
    .local v3, "outputBuffer":Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;
    sget-object v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion709:[F

    .line 229
    .local v0, "colorConversion":[F
    iget v4, v3, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->colorspace:I

    packed-switch v4, :pswitch_data_118

    :pswitch_2e
    move-object v4, v0

    goto :goto_37

    .line 234
    :pswitch_30
    sget-object v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion2020:[F

    .line 235
    move-object v4, v0

    goto :goto_37

    .line 231
    :pswitch_34
    sget-object v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion601:[F

    .line 232
    move-object v4, v0

    .line 241
    .end local v0    # "colorConversion":[F
    .local v4, "colorConversion":[F
    :goto_37
    iget v0, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->colorMatrixLocation:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, v4, v6}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 248
    iget-object v0, v3, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [I

    .line 249
    .local v7, "yuvStrides":[I
    iget-object v0, v3, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/nio/ByteBuffer;

    .line 251
    .local v8, "yuvPlanes":[Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_51
    const/4 v9, 0x2

    const/4 v10, 0x3

    if-ge v0, v10, :cond_87

    .line 252
    if-nez v0, :cond_5a

    iget v9, v3, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->height:I

    goto :goto_5f

    :cond_5a
    iget v10, v3, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->height:I

    add-int/2addr v10, v5

    div-int/lit8 v9, v10, 0x2

    :goto_5f
    move v14, v9

    .line 253
    .local v14, "h":I
    const v9, 0x84c0

    add-int/2addr v9, v0

    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 254
    iget-object v9, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    aget v9, v9, v0

    const/16 v10, 0xde1

    invoke-static {v10, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 255
    const/16 v9, 0xcf5

    invoke-static {v9, v5}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 256
    const/4 v11, 0x0

    const/16 v12, 0x1909

    aget v13, v7, v0

    const/4 v15, 0x0

    const/16 v16, 0x1909

    const/16 v17, 0x1401

    aget-object v18, v8, v0

    invoke-static/range {v10 .. v18}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 251
    .end local v14    # "h":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 268
    .end local v0    # "i":I
    :cond_87
    new-array v11, v10, [I

    .line 269
    .local v11, "widths":[I
    iget v0, v3, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->width:I

    aput v0, v11, v6

    .line 273
    aget v0, v11, v6

    add-int/2addr v0, v5

    div-int/2addr v0, v9

    aput v0, v11, v9

    aput v0, v11, v5

    .line 274
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_96
    const/4 v12, 0x4

    if-ge v0, v10, :cond_ff

    .line 276
    iget-object v14, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    aget v14, v14, v0

    aget v15, v11, v0

    if-ne v14, v15, :cond_a9

    iget-object v14, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    aget v14, v14, v0

    aget v15, v7, v0

    if-eq v14, v15, :cond_fc

    .line 277
    :cond_a9
    aget v14, v7, v0

    if-eqz v14, :cond_af

    const/4 v14, 0x1

    goto :goto_b0

    :cond_af
    const/4 v14, 0x0

    :goto_b0
    invoke-static {v14}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 278
    aget v14, v11, v0

    int-to-float v14, v14

    aget v15, v7, v0

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 281
    .local v14, "widthRatio":F
    iget-object v15, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->textureCoords:[Ljava/nio/FloatBuffer;

    const/16 v13, 0x8

    new-array v13, v13, [F

    const/16 v17, 0x0

    aput v17, v13, v6

    aput v17, v13, v5

    aput v17, v13, v9

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v13, v10

    aput v14, v13, v12

    const/4 v12, 0x5

    aput v17, v13, v12

    const/4 v12, 0x6

    aput v14, v13, v12

    const/4 v12, 0x7

    aput v18, v13, v12

    .line 282
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v12

    aput-object v12, v15, v0

    .line 284
    iget-object v12, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    aget v15, v12, v0

    const/16 v16, 0x2

    const/16 v17, 0x1406

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v12, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->textureCoords:[Ljava/nio/FloatBuffer;

    aget-object v20, v12, v0

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 291
    iget-object v12, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    aget v13, v11, v0

    aput v13, v12, v0

    .line 292
    iget-object v12, v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    aget v13, v7, v0

    aput v13, v12, v0

    .line 274
    .end local v14    # "widthRatio":F
    :cond_fc
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 296
    .end local v0    # "i":I
    :cond_ff
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 297
    const/4 v0, 0x5

    invoke-static {v0, v6, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 299
    :try_start_108
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_10b
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_108 .. :try_end_10b} :catch_10c

    .line 302
    goto :goto_116

    .line 300
    :catch_10c
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 301
    .local v0, "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    const-string v5, "VideoDecoderGLSV"

    const-string v6, "Failed to draw a frame"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .end local v0    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :goto_116
    return-void

    nop

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2e
        :pswitch_30
    .end packed-switch
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 5
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 206
    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 207
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 11
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 183
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

    const-string v2, "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    .line 184
    const-string v1, "in_pos"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v2

    .line 185
    .local v2, "posLocation":I
    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v3, "in_tc_y"

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v3, "in_tc_u"

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v3, "in_tc_v"

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "mColorConversion"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->colorMatrixLocation:I

    .line 196
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->setupTextures()V

    .line 198
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_55
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_55} :catch_56

    .line 201
    .end local v2    # "posLocation":I
    goto :goto_5e

    .line 199
    :catch_56
    move-exception v0

    .line 200
    .local v0, "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    const-string v1, "VideoDecoderGLSV"

    const-string v2, "Failed to set up the textures and program"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v0    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :goto_5e
    return-void
.end method

.method public setOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;)V
    .registers 4
    .param p1, "outputBuffer"    # Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 308
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 309
    .local v0, "oldPendingOutputBuffer":Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;
    if-eqz v0, :cond_d

    .line 311
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->release()V

    .line 313
    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 314
    return-void
.end method
