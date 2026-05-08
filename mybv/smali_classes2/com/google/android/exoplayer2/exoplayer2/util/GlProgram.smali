.class public final Lcom/google/android/exoplayer2/util/GlProgram;
.super Ljava/lang/Object;
.source "GlProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/GlProgram$Attribute;,
        Lcom/google/android/exoplayer2/util/GlProgram$Uniform;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final GL_SAMPLER_EXTERNAL_2D_Y2Y_EXT:I = 0x8be7


# instance fields
.field private final attributeByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/GlProgram$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final attributes:[Lcom/google/android/exoplayer2/util/GlProgram$Attribute;

.field private final programId:I

.field private final uniformByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/GlProgram$Uniform;",
            ">;"
        }
    .end annotation
.end field

.field private final uniforms:[Lcom/google/android/exoplayer2/util/GlProgram$Uniform;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vertexShaderFilePath"    # Ljava/lang/String;
    .param p3, "fragmentShaderFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 64
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/GlProgram;->loadAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/GlProgram;->loadAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "vertexShaderGlsl"    # Ljava/lang/String;
    .param p2, "fragmentShaderGlsl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->programId:I

    .line 96
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 99
    const v1, 0x8b31

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->addShader(IILjava/lang/String;)V

    .line 100
    const v1, 0x8b30

    invoke-static {v0, v1, p2}, Lcom/google/android/exoplayer2/util/GlProgram;->addShader(IILjava/lang/String;)V

    .line 103
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 104
    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v2

    .line 105
    .local v2, "linkStatus":[I
    const v3, 0x8b82

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 106
    aget v3, v2, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    const/4 v3, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to link shader program: \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 108
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 109
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 110
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/util/GlProgram;->attributeByName:Ljava/util/Map;

    .line 111
    new-array v3, v4, [I

    .line 112
    .local v3, "attributeCount":[I
    const v5, 0x8b89

    invoke-static {v0, v5, v3, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 113
    aget v0, v3, v1

    new-array v0, v0, [Lcom/google/android/exoplayer2/util/GlProgram$Attribute;

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->attributes:[Lcom/google/android/exoplayer2/util/GlProgram$Attribute;

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_61
    aget v5, v3, v1

    if-ge v0, v5, :cond_79

    .line 115
    iget v5, p0, Lcom/google/android/exoplayer2/util/GlProgram;->programId:I

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->create(II)Lcom/google/android/exoplayer2/util/GlProgram$Attribute;

    move-result-object v5

    .line 116
    .local v5, "attribute":Lcom/google/android/exoplayer2/util/GlProgram$Attribute;
    iget-object v6, p0, Lcom/google/android/exoplayer2/util/GlProgram;->attributes:[Lcom/google/android/exoplayer2/util/GlProgram$Attribute;

    aput-object v5, v6, v0

    .line 117
    iget-object v6, p0, Lcom/google/android/exoplayer2/util/GlProgram;->attributeByName:Ljava/util/Map;

    iget-object v7, v5, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v5    # "attribute":Lcom/google/android/exoplayer2/util/GlProgram$Attribute;
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 119
    .end local v0    # "i":I
    :cond_79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->uniformByName:Ljava/util/Map;

    .line 120
    new-array v0, v4, [I

    .line 121
    .local v0, "uniformCount":[I
    iget v4, p0, Lcom/google/android/exoplayer2/util/GlProgram;->programId:I

    const v5, 0x8b86

    invoke-static {v4, v5, v0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 122
    aget v4, v0, v1

    new-array v4, v4, [Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    iput-object v4, p0, Lcom/google/android/exoplayer2/util/GlProgram;->uniforms:[Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    .line 123
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_91
    aget v5, v0, v1

    if-ge v4, v5, :cond_a9

    .line 124
    iget v5, p0, Lcom/google/android/exoplayer2/util/GlProgram;->programId:I

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->create(II)Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    move-result-object v5

    .line 125
    .local v5, "uniform":Lcom/google/android/exoplayer2/util/GlProgram$Uniform;
    iget-object v6, p0, Lcom/google/android/exoplayer2/util/GlProgram;->uniforms:[Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    aput-object v5, v6, v4

    .line 126
    iget-object v6, p0, Lcom/google/android/exoplayer2/util/GlProgram;->uniformByName:Ljava/util/Map;

    iget-object v7, v5, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v5    # "uniform":Lcom/google/android/exoplayer2/util/GlProgram$Uniform;
    add-int/lit8 v4, v4, 0x1

    goto :goto_91

    .line 128
    .end local v4    # "i":I
    :cond_a9
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 129
    return-void
.end method

.method static synthetic access$000([B)I
    .registers 2
    .param p0, "x0"    # [B

    .line 42
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/GlProgram;->getCStringLength([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(ILjava/lang/String;)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->getAttributeLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(ILjava/lang/String;)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static addShader(IILjava/lang/String;)V
    .registers 8
    .param p0, "programId"    # I
    .param p1, "type"    # I
    .param p2, "glsl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 132
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 133
    .local v0, "shader":I
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 134
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 136
    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v2

    .line 137
    .local v2, "result":[I
    const v3, 0x8b81

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 138
    aget v3, v2, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 141
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 142
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 143
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 144
    return-void
.end method

.method private static getAttributeLocation(ILjava/lang/String;)I
    .registers 3
    .param p0, "programId"    # I
    .param p1, "attributeName"    # Ljava/lang/String;

    .line 147
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getAttributeLocation(Ljava/lang/String;)I
    .registers 3
    .param p1, "attributeName"    # Ljava/lang/String;

    .line 152
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->programId:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->getAttributeLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getCStringLength([B)I
    .registers 3
    .param p0, "cString"    # [B

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 236
    aget-byte v1, p0, v0

    if-nez v1, :cond_9

    .line 237
    return v0

    .line 235
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    .end local v0    # "i":I
    :cond_c
    array-length v0, p0

    return v0
.end method

.method private static getUniformLocation(ILjava/lang/String;)I
    .registers 3
    .param p0, "programId"    # I
    .param p1, "uniformName"    # Ljava/lang/String;

    .line 156
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static loadAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 79
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 81
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    return-object v1

    .line 81
    :catchall_16
    move-exception v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    throw v1
.end method


# virtual methods
.method public bindAttributesAndUniforms()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->attributes:[Lcom/google/android/exoplayer2/util/GlProgram$Attribute;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_f

    aget-object v4, v0, v3

    .line 226
    .local v4, "attribute":Lcom/google/android/exoplayer2/util/GlProgram$Attribute;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->bind()V

    .line 225
    .end local v4    # "attribute":Lcom/google/android/exoplayer2/util/GlProgram$Attribute;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 228
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->uniforms:[Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    array-length v1, v0

    :goto_12
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 229
    .local v3, "uniform":Lcom/google/android/exoplayer2/util/GlProgram$Uniform;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->bind()V

    .line 228
    .end local v3    # "uniform":Lcom/google/android/exoplayer2/util/GlProgram$Uniform;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 231
    :cond_1c
    return-void
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 176
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->programId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 177
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 178
    return-void
.end method

.method public getAttributeArrayLocationAndEnable(Ljava/lang/String;)I
    .registers 3
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v0

    .line 186
    .local v0, "location":I
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 187
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 188
    return v0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .registers 3
    .param p1, "uniformName"    # Ljava/lang/String;

    .line 161
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->programId:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/GlProgram;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setBufferAttribute(Ljava/lang/String;[FI)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [F
    .param p3, "size"    # I

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->attributeByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->setBuffer([FI)V

    .line 194
    return-void
.end method

.method public setFloatUniform(Ljava/lang/String;F)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->uniformByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->setFloat(F)V

    .line 216
    return-void
.end method

.method public setFloatsUniform(Ljava/lang/String;[F)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->uniformByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->setFloats([F)V

    .line 221
    return-void
.end method

.method public setIntUniform(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->uniformByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->setInt(I)V

    .line 211
    return-void
.end method

.method public setSamplerTexIdUniform(Ljava/lang/String;II)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "texId"    # I
    .param p3, "texUnitIndex"    # I

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->uniformByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->setSamplerTexId(II)V

    .line 206
    return-void
.end method

.method public use()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 170
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram;->programId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 171
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 172
    return-void
.end method
