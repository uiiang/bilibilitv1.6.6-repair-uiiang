.class final Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;
.super Ljava/lang/Object;
.source "ProjectionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n"

.field private static final TAG:Ljava/lang/String; = "ProjectionRenderer"

.field private static final TEX_MATRIX_BOTTOM:[F

.field private static final TEX_MATRIX_LEFT:[F

.field private static final TEX_MATRIX_RIGHT:[F

.field private static final TEX_MATRIX_TOP:[F

.field private static final TEX_MATRIX_WHOLE:[F

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n"


# instance fields
.field private leftMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

.field private mvpMatrixHandle:I

.field private positionHandle:I

.field private program:Lcom/google/android/exoplayer2/util/GlProgram;

.field private rightMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

.field private stereoMode:I

.field private texCoordsHandle:I

.field private textureHandle:I

.field private uTexMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 81
    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_26

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    .line 84
    new-array v1, v0, [F

    fill-array-data v1, :array_3c

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    .line 87
    new-array v1, v0, [F

    fill-array-data v1, :array_52

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    .line 90
    new-array v1, v0, [F

    fill-array-data v1, :array_68

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    .line 93
    new-array v0, v0, [F

    fill-array-data v0, :array_7e

    sput-object v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    return-void

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_52
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_68
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_7e
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z
    .registers 6
    .param p0, "projection"    # Lcom/google/android/exoplayer2/video/spherical/Projection;

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 48
    .local v0, "leftMesh":Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 49
    .local v1, "rightMesh":Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_24

    .line 50
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez v2, :cond_24

    .line 51
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v2

    if-ne v2, v4, :cond_24

    .line 52
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez v2, :cond_24

    const/4 v3, 0x1

    goto :goto_25

    :cond_24
    nop

    .line 49
    :goto_25
    return v3
.end method


# virtual methods
.method public draw(I[FZ)V
    .registers 16
    .param p1, "textureId"    # I
    .param p2, "mvpMatrix"    # [F
    .param p3, "rightEye"    # Z

    .line 149
    const-string v0, "ProjectionRenderer"

    if-eqz p3, :cond_7

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->rightMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    goto :goto_9

    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    .line 150
    .local v1, "meshData":Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;
    :goto_9
    if-nez v1, :cond_c

    .line 151
    return-void

    .line 156
    :cond_c
    iget v2, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->stereoMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 157
    if-eqz p3, :cond_16

    sget-object v2, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    goto :goto_18

    :cond_16
    sget-object v2, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    .local v2, "texMatrix":[F
    :goto_18
    goto :goto_26

    .line 158
    .end local v2    # "texMatrix":[F
    :cond_19
    const/4 v4, 0x2

    if-ne v2, v4, :cond_24

    .line 159
    if-eqz p3, :cond_21

    sget-object v2, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    goto :goto_23

    :cond_21
    sget-object v2, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    .restart local v2    # "texMatrix":[F
    :goto_23
    goto :goto_26

    .line 161
    .end local v2    # "texMatrix":[F
    :cond_24
    sget-object v2, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    .line 163
    .restart local v2    # "texMatrix":[F
    :goto_26
    iget v4, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v2, v5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 166
    iget v4, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    invoke-static {v4, v3, v5, p2, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 167
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 168
    const v3, 0x8d65

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 169
    iget v3, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->textureHandle:I

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 171
    :try_start_42
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_45
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_42 .. :try_end_45} :catch_46

    .line 174
    goto :goto_4c

    .line 172
    :catch_46
    move-exception v3

    .line 173
    .local v3, "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    const-string v4, "Failed to bind uniforms"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v3    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :goto_4c
    iget v6, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->positionHandle:I

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    .line 183
    # getter for: Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->vertexBuffer:Ljava/nio/FloatBuffer;
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->access$000(Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 177
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 185
    :try_start_5b
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_5e
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 188
    goto :goto_65

    .line 186
    :catch_5f
    move-exception v3

    .line 187
    .restart local v3    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    const-string v4, "Failed to load position data"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v3    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :goto_65
    iget v6, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    .line 197
    # getter for: Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->textureBuffer:Ljava/nio/FloatBuffer;
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->access$100(Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 191
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 199
    :try_start_74
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_77
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_74 .. :try_end_77} :catch_78

    .line 202
    goto :goto_7e

    .line 200
    :catch_78
    move-exception v3

    .line 201
    .restart local v3    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    const-string v4, "Failed to load texture data"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v3    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :goto_7e
    # getter for: Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->drawMode:I
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->access$200(Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;)I

    move-result v3

    # getter for: Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->vertexCount:I
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->access$300(Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;)I

    move-result v4

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 207
    :try_start_89
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_8c
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 210
    goto :goto_93

    .line 208
    :catch_8d
    move-exception v3

    .line 209
    .restart local v3    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    const-string v4, "Failed to render"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v3    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :goto_93
    return-void
.end method

.method public init()V
    .registers 4

    .line 128
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n"

    const-string v2, "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    .line 129
    const-string v1, "uMvpMatrix"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "uTexMatrix"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->positionHandle:I

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "aTexCoords"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "uTexture"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->textureHandle:I
    :try_end_3b
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 136
    goto :goto_44

    .line 134
    :catch_3c
    move-exception v0

    .line 135
    .local v0, "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    const-string v1, "ProjectionRenderer"

    const-string v2, "Failed to initialize the program"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :goto_44
    return-void
.end method

.method public setProjection(Lcom/google/android/exoplayer2/video/spherical/Projection;)V
    .registers 5
    .param p1, "projection"    # Lcom/google/android/exoplayer2/video/spherical/Projection;

    .line 116
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 117
    return-void

    .line 119
    :cond_7
    iget v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->stereoMode:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->stereoMode:I

    .line 120
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    iget-object v1, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    .line 121
    nop

    .line 122
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->singleMesh:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    goto :goto_2c

    :cond_21
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    iget-object v1, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    :goto_2c
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->rightMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    .line 123
    return-void
.end method

.method public shutdown()V
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    if-eqz v0, :cond_10

    .line 217
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/GlProgram;->delete()V
    :try_end_7
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_4 .. :try_end_7} :catch_8

    .line 220
    goto :goto_10

    .line 218
    :catch_8
    move-exception v0

    .line 219
    .local v0, "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    const-string v1, "ProjectionRenderer"

    const-string v2, "Failed to delete the shader program"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v0    # "e":Lcom/google/android/exoplayer2/util/GlUtil$GlException;
    :cond_10
    :goto_10
    return-void
.end method
