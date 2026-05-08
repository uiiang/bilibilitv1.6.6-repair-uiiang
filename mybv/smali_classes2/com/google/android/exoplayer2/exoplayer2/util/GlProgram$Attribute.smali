.class final Lcom/google/android/exoplayer2/util/GlProgram$Attribute;
.super Ljava/lang/Object;
.source "GlProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Attribute"
.end annotation


# instance fields
.field private buffer:Ljava/nio/Buffer;

.field private final index:I

.field private final location:I

.field public final name:Ljava/lang/String;

.field private size:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "location"    # I

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->name:Ljava/lang/String;

    .line 284
    iput p2, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->index:I

    .line 285
    iput p3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->location:I

    .line 286
    return-void
.end method

.method public static create(II)Lcom/google/android/exoplayer2/util/GlProgram$Attribute;
    .registers 17
    .param p0, "programId"    # I
    .param p1, "index"    # I

    .line 250
    move v11, p0

    const/4 v0, 0x1

    new-array v12, v0, [I

    .line 251
    .local v12, "length":[I
    const v1, 0x8b8a

    const/4 v13, 0x0

    invoke-static {p0, v1, v12, v13}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 253
    aget v1, v12, v13

    new-array v14, v1, [B

    .line 255
    .local v14, "nameBytes":[B
    aget v2, v12, v13

    new-array v3, v0, [I

    const/4 v4, 0x0

    new-array v5, v0, [I

    const/4 v6, 0x0

    new-array v7, v0, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v0, p0

    move/from16 v1, p1

    move-object v9, v14

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 267
    new-instance v0, Ljava/lang/String;

    # invokes: Lcom/google/android/exoplayer2/util/GlProgram;->getCStringLength([B)I
    invoke-static {v14}, Lcom/google/android/exoplayer2/util/GlProgram;->access$000([B)I

    move-result v1

    invoke-direct {v0, v14, v13, v1}, Ljava/lang/String;-><init>([BII)V

    .line 268
    .local v0, "name":Ljava/lang/String;
    # invokes: Lcom/google/android/exoplayer2/util/GlProgram;->getAttributeLocation(ILjava/lang/String;)I
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/GlProgram;->access$100(ILjava/lang/String;)I

    move-result v1

    .line 270
    .local v1, "location":I
    new-instance v2, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;

    move/from16 v3, p1

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method


# virtual methods
.method public bind()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->buffer:Ljava/nio/Buffer;

    const-string v1, "call setBuffer before bind"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/Buffer;

    .line 307
    .local v0, "buffer":Ljava/nio/Buffer;
    const v1, 0x8892

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 308
    iget v1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->location:I

    iget v2, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->size:I

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 310
    iget v1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->index:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 311
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 312
    return-void
.end method

.method public setBuffer([FI)V
    .registers 4
    .param p1, "buffer"    # [F
    .param p2, "size"    # I

    .line 296
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->buffer:Ljava/nio/Buffer;

    .line 297
    iput p2, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->size:I

    .line 298
    return-void
.end method
