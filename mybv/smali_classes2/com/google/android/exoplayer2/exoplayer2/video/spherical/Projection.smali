.class final Lcom/google/android/exoplayer2/video/spherical/Projection;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;,
        Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;,
        Lcom/google/android/exoplayer2/video/spherical/Projection$DrawMode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DRAW_MODE_TRIANGLES:I = 0x0

.field public static final DRAW_MODE_TRIANGLES_FAN:I = 0x2

.field public static final DRAW_MODE_TRIANGLES_STRIP:I = 0x1

.field public static final POSITION_COORDS_PER_VERTEX:I = 0x3

.field public static final TEXTURE_COORDS_PER_VERTEX:I = 0x2


# instance fields
.field public final leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

.field public final rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

.field public final singleMesh:Z

.field public final stereoMode:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V
    .registers 3
    .param p1, "mesh"    # Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    .param p2, "stereoMode"    # I

    .line 182
    invoke-direct {p0, p1, p1, p2}, Lcom/google/android/exoplayer2/video/spherical/Projection;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V
    .registers 5
    .param p1, "leftMesh"    # Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    .param p2, "rightMesh"    # Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    .param p3, "stereoMode"    # I

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 195
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 196
    iput p3, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->stereoMode:I

    .line 197
    if-ne p1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->singleMesh:Z

    .line 198
    return-void
.end method

.method public static createEquirectangular(FIIFFI)Lcom/google/android/exoplayer2/video/spherical/Projection;
    .registers 31
    .param p0, "radius"    # F
    .param p1, "latitudes"    # I
    .param p2, "longitudes"    # I
    .param p3, "verticalFovDegrees"    # F
    .param p4, "horizontalFovDegrees"    # F
    .param p5, "stereoMode"    # I

    .line 93
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmpl-float v8, v0, v7

    if-lez v8, :cond_12

    const/4 v8, 0x1

    goto :goto_13

    :cond_12
    const/4 v8, 0x0

    :goto_13
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 94
    if-lt v1, v6, :cond_1a

    const/4 v8, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v8, 0x0

    :goto_1b
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 95
    if-lt v2, v6, :cond_22

    const/4 v8, 0x1

    goto :goto_23

    :cond_22
    const/4 v8, 0x0

    :goto_23
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 96
    cmpl-float v8, v3, v7

    if-lez v8, :cond_32

    const/high16 v8, 0x43340000    # 180.0f

    cmpg-float v8, v3, v8

    if-gtz v8, :cond_32

    const/4 v8, 0x1

    goto :goto_33

    :cond_32
    const/4 v8, 0x0

    :goto_33
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 97
    cmpl-float v7, v4, v7

    if-lez v7, :cond_42

    const/high16 v7, 0x43b40000    # 360.0f

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_42

    const/4 v7, 0x1

    goto :goto_43

    :cond_42
    const/4 v7, 0x0

    :goto_43
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 100
    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 101
    .local v7, "verticalFovRads":F
    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 102
    .local v8, "horizontalFovRads":F
    int-to-float v9, v1

    div-float v9, v7, v9

    .line 103
    .local v9, "quadHeightRads":F
    int-to-float v10, v2

    div-float v10, v8, v10

    .line 106
    .local v10, "quadWidthRads":F
    add-int/lit8 v11, v2, 0x1

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v12

    mul-int v11, v11, v1

    .line 108
    .local v11, "vertexCount":I
    mul-int/lit8 v13, v11, 0x3

    new-array v13, v13, [F

    .line 109
    .local v13, "vertexData":[F
    mul-int/lit8 v14, v11, 0x2

    new-array v14, v14, [F

    .line 113
    .local v14, "textureData":[F
    const/4 v15, 0x0

    .line 114
    .local v15, "vOffset":I
    const/16 v16, 0x0

    .line 116
    .local v16, "tOffset":I
    const/16 v17, 0x0

    move/from16 v5, v17

    .local v5, "j":I
    :goto_6f
    if-ge v5, v1, :cond_16b

    .line 119
    int-to-float v6, v5

    mul-float v6, v6, v9

    const/high16 v18, 0x40000000    # 2.0f

    div-float v19, v7, v18

    sub-float v6, v6, v19

    .line 120
    .local v6, "phiLow":F
    add-int/lit8 v12, v5, 0x1

    int-to-float v12, v12

    mul-float v12, v12, v9

    div-float v20, v7, v18

    sub-float v12, v12, v20

    .line 122
    .local v12, "phiHigh":F
    const/16 v20, 0x0

    move/from16 v1, v20

    .local v1, "i":I
    :goto_87
    add-int/lit8 v3, v2, 0x1

    if-ge v1, v3, :cond_155

    .line 123
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_8c
    const/4 v4, 0x2

    if-ge v3, v4, :cond_140

    .line 125
    if-nez v3, :cond_93

    move v4, v6

    goto :goto_94

    :cond_93
    move v4, v12

    .line 126
    .local v4, "phi":F
    :goto_94
    move/from16 v20, v6

    .end local v6    # "phiLow":F
    .local v20, "phiLow":F
    int-to-float v6, v1

    mul-float v6, v6, v10

    const v21, 0x40490fdb    # (float)Math.PI

    add-float v6, v6, v21

    div-float v21, v8, v18

    sub-float v6, v6, v21

    .line 129
    .local v6, "theta":F
    add-int/lit8 v21, v15, 0x1

    move/from16 v22, v11

    move/from16 v23, v12

    .end local v11    # "vertexCount":I
    .end local v12    # "phiHigh":F
    .end local v15    # "vOffset":I
    .local v21, "vOffset":I
    .local v22, "vertexCount":I
    .local v23, "phiHigh":F
    float-to-double v11, v0

    move/from16 v24, v3

    .end local v3    # "k":I
    .local v24, "k":I
    float-to-double v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v2

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v11, v11, v2

    double-to-float v2, v11

    neg-float v2, v2

    aput v2, v13, v15

    .line 130
    add-int/lit8 v2, v21, 0x1

    .end local v21    # "vOffset":I
    .local v2, "vOffset":I
    float-to-double v11, v0

    move-object v3, v14

    .end local v14    # "textureData":[F
    .local v3, "textureData":[F
    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v14

    double-to-float v11, v11

    aput v11, v13, v21

    .line 131
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "vOffset":I
    .local v11, "vOffset":I
    float-to-double v14, v0

    move/from16 v21, v11

    .end local v11    # "vOffset":I
    .restart local v21    # "vOffset":I
    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v11

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v14, v14, v11

    double-to-float v11, v14

    aput v11, v13, v2

    .line 133
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "tOffset":I
    .local v2, "tOffset":I
    int-to-float v11, v1

    mul-float v11, v11, v10

    div-float/2addr v11, v8

    aput v11, v3, v16

    .line 134
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "tOffset":I
    .local v11, "tOffset":I
    add-int v12, v5, v24

    int-to-float v12, v12

    mul-float v12, v12, v9

    div-float/2addr v12, v7

    aput v12, v3, v2

    .line 137
    if-nez v1, :cond_106

    if-eqz v24, :cond_101

    goto :goto_106

    :cond_101
    move/from16 v2, p2

    move/from16 v12, v24

    goto :goto_10f

    :cond_106
    :goto_106
    move/from16 v2, p2

    if-ne v1, v2, :cond_128

    move/from16 v12, v24

    const/4 v14, 0x1

    .end local v24    # "k":I
    .local v12, "k":I
    if-ne v12, v14, :cond_124

    .line 138
    :goto_10f
    add-int/lit8 v14, v21, -0x3

    const/4 v15, 0x3

    move/from16 v0, v21

    .end local v21    # "vOffset":I
    .local v0, "vOffset":I
    invoke-static {v13, v14, v13, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    add-int/lit8 v0, v0, 0x3

    .line 145
    add-int/lit8 v14, v11, -0x2

    const/4 v15, 0x2

    invoke-static {v3, v14, v3, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    add-int/lit8 v11, v11, 0x2

    move/from16 v16, v11

    goto :goto_12f

    .line 137
    .end local v0    # "vOffset":I
    .restart local v21    # "vOffset":I
    :cond_124
    move/from16 v0, v21

    const/4 v15, 0x2

    .end local v21    # "vOffset":I
    .restart local v0    # "vOffset":I
    goto :goto_12d

    .end local v0    # "vOffset":I
    .end local v12    # "k":I
    .restart local v21    # "vOffset":I
    .restart local v24    # "k":I
    :cond_128
    move/from16 v0, v21

    move/from16 v12, v24

    const/4 v15, 0x2

    .line 123
    .end local v4    # "phi":F
    .end local v6    # "theta":F
    .end local v21    # "vOffset":I
    .end local v24    # "k":I
    .restart local v0    # "vOffset":I
    .restart local v12    # "k":I
    :goto_12d
    move/from16 v16, v11

    .end local v11    # "tOffset":I
    .restart local v16    # "tOffset":I
    :goto_12f
    add-int/lit8 v4, v12, 0x1

    move v15, v0

    move-object v14, v3

    move v3, v4

    move/from16 v6, v20

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v0, p0

    move/from16 v4, p4

    .end local v12    # "k":I
    .local v4, "k":I
    goto/16 :goto_8c

    .end local v0    # "vOffset":I
    .end local v4    # "k":I
    .end local v20    # "phiLow":F
    .end local v22    # "vertexCount":I
    .end local v23    # "phiHigh":F
    .local v3, "k":I
    .local v6, "phiLow":F
    .local v11, "vertexCount":I
    .local v12, "phiHigh":F
    .restart local v14    # "textureData":[F
    .restart local v15    # "vOffset":I
    :cond_140
    move/from16 v20, v6

    move/from16 v22, v11

    move/from16 v23, v12

    const/4 v0, 0x2

    move v12, v3

    move-object v3, v14

    .line 122
    .end local v6    # "phiLow":F
    .end local v11    # "vertexCount":I
    .end local v12    # "phiHigh":F
    .end local v14    # "textureData":[F
    .local v3, "textureData":[F
    .restart local v20    # "phiLow":F
    .restart local v22    # "vertexCount":I
    .restart local v23    # "phiHigh":F
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p0

    move/from16 v4, p4

    move/from16 v12, v23

    move/from16 v3, p3

    goto/16 :goto_87

    .end local v3    # "textureData":[F
    .end local v20    # "phiLow":F
    .end local v22    # "vertexCount":I
    .end local v23    # "phiHigh":F
    .restart local v6    # "phiLow":F
    .restart local v11    # "vertexCount":I
    .restart local v12    # "phiHigh":F
    .restart local v14    # "textureData":[F
    :cond_155
    move/from16 v20, v6

    move/from16 v22, v11

    move/from16 v23, v12

    move-object v3, v14

    const/4 v0, 0x2

    .line 116
    .end local v1    # "i":I
    .end local v6    # "phiLow":F
    .end local v11    # "vertexCount":I
    .end local v12    # "phiHigh":F
    .end local v14    # "textureData":[F
    .restart local v3    # "textureData":[F
    .restart local v22    # "vertexCount":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v4, p4

    const/4 v6, 0x1

    const/4 v12, 0x2

    move/from16 v3, p3

    goto/16 :goto_6f

    .end local v3    # "textureData":[F
    .end local v22    # "vertexCount":I
    .restart local v11    # "vertexCount":I
    .restart local v14    # "textureData":[F
    :cond_16b
    move-object v3, v14

    .line 158
    .end local v5    # "j":I
    .end local v14    # "textureData":[F
    .restart local v3    # "textureData":[F
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v13, v3, v4}, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    .line 160
    .local v0, "subMesh":Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;
    new-instance v5, Lcom/google/android/exoplayer2/video/spherical/Projection;

    new-instance v6, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    new-array v4, v4, [Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    aput-object v0, v4, v1

    invoke-direct {v6, v4}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;-><init>([Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    move/from16 v1, p5

    invoke-direct {v5, v6, v1}, Lcom/google/android/exoplayer2/video/spherical/Projection;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V

    return-object v5
.end method

.method public static createEquirectangular(I)Lcom/google/android/exoplayer2/video/spherical/Projection;
    .registers 7
    .param p0, "stereoMode"    # I

    .line 64
    const/high16 v0, 0x42480000    # 50.0f

    const/16 v1, 0x24

    const/16 v2, 0x48

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x43b40000    # 360.0f

    move v5, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/spherical/Projection;->createEquirectangular(FIIFFI)Lcom/google/android/exoplayer2/video/spherical/Projection;

    move-result-object v0

    return-object v0
.end method
