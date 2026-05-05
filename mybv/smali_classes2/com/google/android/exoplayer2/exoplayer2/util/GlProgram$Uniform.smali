.class final Lcom/google/android/exoplayer2/util/GlProgram$Uniform;
.super Ljava/lang/Object;
.source "GlProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Uniform"
.end annotation


# instance fields
.field private final floatValue:[F

.field private intValue:I

.field private final location:I

.field public final name:Ljava/lang/String;

.field private texIdValue:I

.field private texUnitIndex:I

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # I
    .param p3, "type"    # I

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->name:Ljava/lang/String;

    .line 360
    iput p2, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    .line 361
    iput p3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->type:I

    .line 362
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    .line 363
    return-void
.end method

.method public static create(II)Lcom/google/android/exoplayer2/util/GlProgram$Uniform;
    .registers 18
    .param p0, "programId"    # I
    .param p1, "index"    # I

    .line 322
    move/from16 v11, p0

    const/4 v0, 0x1

    new-array v12, v0, [I

    .line 323
    .local v12, "length":[I
    const v1, 0x8b87

    const/4 v13, 0x0

    invoke-static {v11, v1, v12, v13}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 326
    new-array v14, v0, [I

    .line 327
    .local v14, "type":[I
    aget v1, v12, v13

    new-array v15, v1, [B

    .line 329
    .local v15, "nameBytes":[B
    aget v2, v12, v13

    new-array v3, v0, [I

    const/4 v4, 0x0

    new-array v5, v0, [I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v0, p0

    move/from16 v1, p1

    move-object v7, v14

    move-object v9, v15

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 341
    new-instance v0, Ljava/lang/String;

    # invokes: Lcom/google/android/exoplayer2/util/GlProgram;->getCStringLength([B)I
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/GlProgram;->access$000([B)I

    move-result v1

    invoke-direct {v0, v15, v13, v1}, Ljava/lang/String;-><init>([BII)V

    .line 342
    .local v0, "name":Ljava/lang/String;
    # invokes: Lcom/google/android/exoplayer2/util/GlProgram;->getUniformLocation(ILjava/lang/String;)I
    invoke-static {v11, v0}, Lcom/google/android/exoplayer2/util/GlProgram;->access$200(ILjava/lang/String;)I

    move-result v1

    .line 344
    .local v1, "location":I
    new-instance v2, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    aget v3, v14, v13

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method


# virtual methods
.method public bind()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 397
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_98

    .line 440
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected uniform type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :sswitch_22
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->texIdValue:I

    if-eqz v0, :cond_4f

    .line 429
    const v0, 0x84c0

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->texUnitIndex:I

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 430
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 432
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->type:I

    const v1, 0x8b5e    # 4.9996E-41f

    if-ne v0, v1, :cond_3c

    .line 433
    const/16 v0, 0xde1

    goto :goto_3f

    .line 434
    :cond_3c
    const v0, 0x8d65

    :goto_3f
    iget v1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->texIdValue:I

    .line 431
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/GlUtil;->bindTexture(II)V

    .line 436
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->texUnitIndex:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 437
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 438
    goto :goto_96

    .line 427
    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No call to setSamplerTexId() before bind."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :sswitch_57
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 421
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 422
    goto :goto_96

    .line 414
    :sswitch_62
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 416
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 417
    goto :goto_96

    .line 410
    :sswitch_6d
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 411
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 412
    goto :goto_96

    .line 406
    :sswitch_78
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 407
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 408
    goto :goto_96

    .line 402
    :sswitch_83
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 403
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 404
    goto :goto_96

    .line 399
    :sswitch_8e
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->intValue:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 400
    nop

    .line 442
    :goto_96
    return-void

    nop

    :sswitch_data_98
    .sparse-switch
        0x1404 -> :sswitch_8e
        0x1406 -> :sswitch_83
        0x8b50 -> :sswitch_78
        0x8b51 -> :sswitch_6d
        0x8b5b -> :sswitch_62
        0x8b5c -> :sswitch_57
        0x8b5e -> :sswitch_22
        0x8be7 -> :sswitch_22
        0x8d66 -> :sswitch_22
    .end sparse-switch
.end method

.method public setFloat(F)V
    .registers 4
    .param p1, "value"    # F

    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 383
    return-void
.end method

.method public setFloats([F)V
    .registers 5
    .param p1, "value"    # [F

    .line 387
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    return-void
.end method

.method public setInt(I)V
    .registers 2
    .param p1, "value"    # I

    .line 377
    iput p1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->intValue:I

    .line 378
    return-void
.end method

.method public setSamplerTexId(II)V
    .registers 3
    .param p1, "texId"    # I
    .param p2, "texUnitIndex"    # I

    .line 372
    iput p1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->texIdValue:I

    .line 373
    iput p2, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->texUnitIndex:I

    .line 374
    return-void
.end method
