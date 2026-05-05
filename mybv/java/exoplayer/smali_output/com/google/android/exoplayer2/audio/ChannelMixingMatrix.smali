.class public final Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;
.super Ljava/lang/Object;
.source "ChannelMixingMatrix.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final coefficients:[F

.field private final inputChannelCount:I

.field private final isDiagonal:Z

.field private final isIdentity:Z

.field private final isZero:Z

.field private final outputChannelCount:I


# direct methods
.method public constructor <init>(II[F)V
    .registers 14
    .param p1, "inputChannelCount"    # I
    .param p2, "outputChannelCount"    # I
    .param p3, "coefficients"    # [F

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "Input channel count must be positive."

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 86
    if-lez p2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string v3, "Output channel count must be positive."

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 87
    array-length v2, p3

    mul-int v3, p1, p2

    if-ne v2, v3, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    const-string v3, "Coefficient array length is invalid."

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 90
    iput p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->inputChannelCount:I

    .line 91
    iput p2, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->outputChannelCount:I

    .line 92
    invoke-static {p3}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->checkCoefficientsValid([F)[F

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->coefficients:[F

    .line 95
    const/4 v2, 0x1

    .line 96
    .local v2, "allDiagonalCoefficientsAreOne":Z
    const/4 v3, 0x1

    .line 97
    .local v3, "allCoefficientsAreZero":Z
    const/4 v4, 0x1

    .line 98
    .local v4, "allNonDiagonalCoefficientsAreZero":Z
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_34
    if-ge v5, p1, :cond_5a

    .line 99
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_37
    if-ge v6, p2, :cond_57

    .line 100
    invoke-virtual {p0, v5, v6}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->getMixingCoefficient(II)F

    move-result v7

    .line 101
    .local v7, "coefficient":F
    if-ne v5, v6, :cond_41

    const/4 v8, 0x1

    goto :goto_42

    :cond_41
    const/4 v8, 0x0

    .line 103
    .local v8, "onDiagonal":Z
    :goto_42
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v7, v9

    if-eqz v9, :cond_4b

    if-eqz v8, :cond_4b

    .line 104
    const/4 v2, 0x0

    .line 106
    :cond_4b
    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-eqz v9, :cond_54

    .line 107
    const/4 v3, 0x0

    .line 108
    if-nez v8, :cond_54

    .line 109
    const/4 v4, 0x0

    .line 99
    .end local v7    # "coefficient":F
    .end local v8    # "onDiagonal":Z
    :cond_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 98
    .end local v6    # "col":I
    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 114
    .end local v5    # "row":I
    :cond_5a
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->isZero:Z

    .line 115
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->isSquare()Z

    move-result v5

    if-eqz v5, :cond_66

    if-eqz v4, :cond_66

    const/4 v5, 0x1

    goto :goto_67

    :cond_66
    const/4 v5, 0x0

    :goto_67
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->isDiagonal:Z

    .line 116
    if-eqz v5, :cond_6e

    if-eqz v2, :cond_6e

    const/4 v0, 0x1

    :cond_6e
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->isIdentity:Z

    .line 117
    return-void
.end method

.method private static checkCoefficientsValid([F)[F
    .registers 5
    .param p0, "coefficients"    # [F

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2d

    .line 191
    aget v1, p0, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_e

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Coefficient at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is negative."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    .end local v0    # "i":I
    :cond_2d
    return-object p0
.end method

.method public static create(II)Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;
    .registers 4
    .param p0, "inputChannelCount"    # I
    .param p1, "outputChannelCount"    # I

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;

    .line 74
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->createMixingCoefficients(II)[F

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;-><init>(II[F)V

    .line 71
    return-object v0
.end method

.method private static createMixingCoefficients(II)[F
    .registers 5
    .param p0, "inputChannelCount"    # I
    .param p1, "outputChannelCount"    # I

    .line 162
    if-ne p0, p1, :cond_7

    .line 163
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->initializeIdentityMatrix(I)[F

    move-result-object v0

    return-object v0

    .line 165
    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v0, :cond_13

    if-ne p1, v1, :cond_13

    .line 167
    new-array v0, v1, [F

    fill-array-data v0, :array_46

    return-object v0

    .line 169
    :cond_13
    if-ne p0, v1, :cond_1d

    if-ne p1, v0, :cond_1d

    .line 171
    new-array v0, v1, [F

    fill-array-data v0, :array_4e

    return-object v0

    .line 173
    :cond_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default channel mixing coefficients for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " are not yet implemented."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_46
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4e
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private static initializeIdentityMatrix(I)[F
    .registers 5
    .param p0, "channelCount"    # I

    .line 182
    mul-int v0, p0, p0

    new-array v0, v0, [F

    .line 183
    .local v0, "coefficients":[F
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_5
    if-ge v1, p0, :cond_11

    .line 184
    mul-int v2, p0, v1

    add-int/2addr v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 186
    .end local v1    # "c":I
    :cond_11
    return-object v0
.end method


# virtual methods
.method public getInputChannelCount()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->inputChannelCount:I

    return v0
.end method

.method public getMixingCoefficient(II)F
    .registers 5
    .param p1, "inputChannel"    # I
    .param p2, "outputChannel"    # I

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->coefficients:[F

    iget v1, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->outputChannelCount:I

    mul-int v1, v1, p1

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getOutputChannelCount()I
    .registers 2

    .line 124
    iget v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->outputChannelCount:I

    return v0
.end method

.method public isDiagonal()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->isDiagonal:Z

    return v0
.end method

.method public isIdentity()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->isIdentity:Z

    return v0
.end method

.method public isSquare()Z
    .registers 3

    .line 139
    iget v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->inputChannelCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->outputChannelCount:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isZero()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->isZero:Z

    return v0
.end method

.method public scaleBy(F)Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;
    .registers 6
    .param p1, "scale"    # F

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->coefficients:[F

    array-length v0, v0

    new-array v0, v0, [F

    .line 155
    .local v0, "scaledCoefficients":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->coefficients:[F

    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 156
    aget v2, v2, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 158
    .end local v1    # "i":I
    :cond_14
    new-instance v1, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->inputChannelCount:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->outputChannelCount:I

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;-><init>(II[F)V

    return-object v1
.end method
