.class final Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;
.super Ljava/lang/Object;
.source "ProjectionDecoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_COORDINATE_COUNT:I = 0x2710

.field private static final MAX_TRIANGLE_INDICES:I = 0x1f400

.field private static final MAX_VERTEX_COUNT:I = 0x7d00

.field private static final TYPE_DFL8:I = 0x64666c38

.field private static final TYPE_MESH:I = 0x6d657368

.field private static final TYPE_MSHP:I = 0x6d736870

.field private static final TYPE_PROJ:I = 0x70726f6a

.field private static final TYPE_RAW:I = 0x72617720

.field private static final TYPE_YTMP:I = 0x79746d70


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI)Lcom/google/android/exoplayer2/video/spherical/Projection;
    .registers 7
    .param p0, "projectionData"    # [B
    .param p1, "stereoMode"    # I

    .line 69
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 72
    .local v0, "input":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/4 v1, 0x0

    .line 74
    .local v1, "meshes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;>;"
    :try_start_6
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->isProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_15

    :cond_11
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_15} :catch_17

    :goto_15
    move-object v1, v2

    .line 77
    goto :goto_18

    .line 75
    :catch_17
    move-exception v2

    .line 78
    :goto_18
    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 79
    return-object v2

    .line 81
    :cond_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_44

    .line 88
    return-object v2

    .line 85
    :pswitch_25
    new-instance v2, Lcom/google/android/exoplayer2/video/spherical/Projection;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {v2, v3, v4, p1}, Lcom/google/android/exoplayer2/video/spherical/Projection;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V

    return-object v2

    .line 83
    :pswitch_38
    new-instance v2, Lcom/google/android/exoplayer2/video/spherical/Projection;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {v2, v3, p1}, Lcom/google/android/exoplayer2/video/spherical/Projection;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V

    return-object v2

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_38
        :pswitch_25
    .end packed-switch
.end method

.method private static decodeZigZag(I)I
    .registers 3
    .param p0, "n"    # I

    .line 247
    shr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static isProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 4
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 95
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 97
    .local v0, "type":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 98
    const v2, 0x70726f6a

    if-ne v0, v2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method private static parseMesh(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    .registers 29
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 177
    .local v0, "coordinateCount":I
    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-le v0, v1, :cond_a

    .line 178
    return-object v2

    .line 180
    :cond_a
    new-array v1, v0, [F

    .line 181
    .local v1, "coordinates":[F
    const/4 v3, 0x0

    .local v3, "coordinate":I
    :goto_d
    if-ge v3, v0, :cond_18

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readFloat()F

    move-result v4

    aput v4, v1, v3

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 185
    .end local v3    # "coordinate":I
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 186
    .local v3, "vertexCount":I
    const/16 v4, 0x7d00

    if-le v3, v4, :cond_21

    .line 187
    return-object v2

    .line 190
    :cond_21
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    .line 191
    .local v6, "log2":D
    int-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 193
    .local v8, "coordinateCountSizeBits":I
    new-instance v9, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 194
    .local v9, "bitInput":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v10

    const/16 v11, 0x8

    mul-int/lit8 v10, v10, 0x8

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 195
    mul-int/lit8 v10, v3, 0x5

    new-array v10, v10, [F

    .line 196
    .local v10, "vertices":[F
    const/4 v12, 0x5

    new-array v13, v12, [I

    .line 197
    .local v13, "coordinateIndices":[I
    const/4 v14, 0x0

    .line 198
    .local v14, "vertexIndex":I
    const/4 v15, 0x0

    .local v15, "vertex":I
    :goto_54
    if-ge v15, v3, :cond_80

    .line 199
    const/16 v16, 0x0

    move/from16 v4, v16

    .local v4, "i":I
    :goto_5a
    if-ge v4, v12, :cond_7b

    .line 200
    aget v5, v13, v4

    .line 201
    invoke-virtual {v9, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v18

    add-int v5, v5, v18

    .line 202
    .local v5, "coordinateIndex":I
    if-ge v5, v0, :cond_7a

    if-gez v5, :cond_6d

    goto :goto_7a

    .line 205
    :cond_6d
    add-int/lit8 v18, v14, 0x1

    .end local v14    # "vertexIndex":I
    .local v18, "vertexIndex":I
    aget v19, v1, v5

    aput v19, v10, v14

    .line 206
    aput v5, v13, v4

    .line 199
    .end local v5    # "coordinateIndex":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v14, v18

    goto :goto_5a

    .line 203
    .end local v18    # "vertexIndex":I
    .restart local v5    # "coordinateIndex":I
    .restart local v14    # "vertexIndex":I
    :cond_7a
    :goto_7a
    return-object v2

    .line 198
    .end local v4    # "i":I
    .end local v5    # "coordinateIndex":I
    :cond_7b
    add-int/lit8 v15, v15, 0x1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    goto :goto_54

    .line 211
    .end local v15    # "vertex":I
    :cond_80
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    and-int/lit8 v4, v4, -0x8

    invoke-virtual {v9, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 213
    const/16 v4, 0x20

    invoke-virtual {v9, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 214
    .local v5, "subMeshCount":I
    new-array v12, v5, [Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    .line 215
    .local v12, "subMeshes":[Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_94
    if-ge v15, v5, :cond_13e

    .line 216
    invoke-virtual {v9, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 217
    .local v2, "textureId":I
    move/from16 v19, v0

    .end local v0    # "coordinateCount":I
    .local v19, "coordinateCount":I
    invoke-virtual {v9, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 218
    .local v0, "drawMode":I
    invoke-virtual {v9, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 219
    .local v11, "triangleIndexCount":I
    const v4, 0x1f400

    if-le v11, v4, :cond_ab

    .line 220
    const/4 v4, 0x0

    return-object v4

    .line 222
    :cond_ab
    move/from16 v20, v5

    .end local v5    # "subMeshCount":I
    .local v20, "subMeshCount":I
    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 223
    .local v4, "vertexCountSizeBits":I
    const/4 v5, 0x0

    .line 224
    .local v5, "index":I
    move-object/from16 v21, v1

    .end local v1    # "coordinates":[F
    .local v21, "coordinates":[F
    mul-int/lit8 v1, v11, 0x3

    new-array v1, v1, [F

    .line 225
    .local v1, "triangleVertices":[F
    move/from16 v22, v5

    .end local v5    # "index":I
    .local v22, "index":I
    mul-int/lit8 v5, v11, 0x2

    new-array v5, v5, [F

    .line 226
    .local v5, "textureCoords":[F
    const/16 v23, 0x0

    move-wide/from16 v26, v6

    move/from16 v6, v23

    move-wide/from16 v23, v26

    .local v6, "counter":I
    .local v23, "log2":D
    :goto_d4
    if-ge v6, v11, :cond_123

    .line 227
    invoke-virtual {v9, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v7

    add-int v7, v22, v7

    .line 228
    .end local v22    # "index":I
    .local v7, "index":I
    if-ltz v7, :cond_120

    if-lt v7, v3, :cond_e5

    goto :goto_120

    .line 231
    :cond_e5
    mul-int/lit8 v22, v6, 0x3

    mul-int/lit8 v25, v7, 0x5

    aget v25, v10, v25

    aput v25, v1, v22

    .line 232
    mul-int/lit8 v22, v6, 0x3

    add-int/lit8 v22, v22, 0x1

    mul-int/lit8 v25, v7, 0x5

    add-int/lit8 v25, v25, 0x1

    aget v25, v10, v25

    aput v25, v1, v22

    .line 233
    mul-int/lit8 v22, v6, 0x3

    add-int/lit8 v22, v22, 0x2

    mul-int/lit8 v25, v7, 0x5

    add-int/lit8 v25, v25, 0x2

    aget v25, v10, v25

    aput v25, v1, v22

    .line 234
    mul-int/lit8 v22, v6, 0x2

    mul-int/lit8 v25, v7, 0x5

    add-int/lit8 v25, v25, 0x3

    aget v25, v10, v25

    aput v25, v5, v22

    .line 235
    mul-int/lit8 v22, v6, 0x2

    add-int/lit8 v22, v22, 0x1

    mul-int/lit8 v25, v7, 0x5

    add-int/lit8 v25, v25, 0x4

    aget v25, v10, v25

    aput v25, v5, v22

    .line 226
    add-int/lit8 v6, v6, 0x1

    move/from16 v22, v7

    goto :goto_d4

    .line 229
    :cond_120
    :goto_120
    const/16 v18, 0x0

    return-object v18

    .line 226
    .end local v7    # "index":I
    .restart local v22    # "index":I
    :cond_123
    const/16 v18, 0x0

    .line 237
    .end local v6    # "counter":I
    new-instance v6, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    invoke-direct {v6, v2, v1, v5, v0}, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    aput-object v6, v12, v15

    .line 215
    .end local v0    # "drawMode":I
    .end local v1    # "triangleVertices":[F
    .end local v2    # "textureId":I
    .end local v4    # "vertexCountSizeBits":I
    .end local v5    # "textureCoords":[F
    .end local v11    # "triangleIndexCount":I
    .end local v22    # "index":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v18

    move/from16 v0, v19

    move/from16 v5, v20

    move-object/from16 v1, v21

    move-wide/from16 v6, v23

    const/16 v4, 0x20

    const/16 v11, 0x8

    goto/16 :goto_94

    .end local v19    # "coordinateCount":I
    .end local v20    # "subMeshCount":I
    .end local v21    # "coordinates":[F
    .end local v23    # "log2":D
    .local v0, "coordinateCount":I
    .local v1, "coordinates":[F
    .local v5, "subMeshCount":I
    .local v6, "log2":D
    :cond_13e
    move/from16 v19, v0

    .line 239
    .end local v0    # "coordinateCount":I
    .end local v15    # "i":I
    .restart local v19    # "coordinateCount":I
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;-><init>([Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    return-object v0
.end method

.method private static parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 126
    .local v0, "version":I
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 127
    return-object v1

    .line 129
    :cond_8
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 131
    .local v2, "encoding":I
    const v3, 0x64666c38

    if-ne v2, v3, :cond_36

    .line 132
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    .line 133
    .local v3, "output":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    new-instance v4, Ljava/util/zip/Inflater;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 135
    .local v4, "inflater":Ljava/util/zip/Inflater;
    :try_start_20
    invoke-static {p0, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->inflate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v5
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_31

    if-nez v5, :cond_2b

    .line 136
    nop

    .line 139
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 136
    return-object v1

    .line 139
    :cond_2b
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 140
    nop

    .line 141
    move-object p0, v3

    .end local v3    # "output":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v4    # "inflater":Ljava/util/zip/Inflater;
    goto :goto_3c

    .line 139
    .restart local v3    # "output":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .restart local v4    # "inflater":Ljava/util/zip/Inflater;
    :catchall_31
    move-exception v1

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 140
    throw v1

    .line 142
    .end local v3    # "output":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v4    # "inflater":Ljava/util/zip/Inflater;
    :cond_36
    const v3, 0x72617720

    if-eq v2, v3, :cond_3c

    .line 143
    return-object v1

    .line 142
    :cond_3c
    :goto_3c
    nop

    .line 145
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseRawMshpData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private static parseProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 103
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 105
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 106
    .local v1, "limit":I
    :goto_d
    const/4 v2, 0x0

    if-ge v0, v1, :cond_37

    .line 107
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v0

    .line 108
    .local v3, "childEnd":I
    if-le v3, v0, :cond_36

    if-le v3, v1, :cond_1a

    goto :goto_36

    .line 111
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 113
    .local v2, "childAtomType":I
    const v4, 0x79746d70

    if-eq v2, v4, :cond_2e

    const v4, 0x6d736870

    if-ne v2, v4, :cond_29

    goto :goto_2e

    .line 117
    :cond_29
    move v0, v3

    .line 118
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 119
    .end local v2    # "childAtomType":I
    .end local v3    # "childEnd":I
    goto :goto_d

    .line 114
    .restart local v2    # "childAtomType":I
    .restart local v3    # "childEnd":I
    :cond_2e
    :goto_2e
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 115
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 109
    .end local v2    # "childAtomType":I
    :cond_36
    :goto_36
    return-object v2

    .line 120
    .end local v3    # "childEnd":I
    :cond_37
    return-object v2
.end method

.method private static parseRawMshpData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "meshes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 153
    .local v1, "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 154
    .local v2, "limit":I
    :goto_d
    if-ge v1, v2, :cond_33

    .line 155
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v1

    .line 156
    .local v3, "childEnd":I
    const/4 v4, 0x0

    if-le v3, v1, :cond_32

    if-le v3, v2, :cond_1a

    goto :goto_32

    .line 159
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 160
    .local v5, "childAtomType":I
    const v6, 0x6d657368

    if-ne v5, v6, :cond_2d

    .line 161
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseMesh(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    move-result-object v6

    .line 162
    .local v6, "mesh":Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    if-nez v6, :cond_2a

    .line 163
    return-object v4

    .line 165
    :cond_2a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v6    # "mesh":Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    :cond_2d
    move v1, v3

    .line 168
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 169
    .end local v3    # "childEnd":I
    .end local v5    # "childAtomType":I
    goto :goto_d

    .line 157
    .restart local v3    # "childEnd":I
    :cond_32
    :goto_32
    return-object v4

    .line 170
    .end local v3    # "childEnd":I
    :cond_33
    return-object v0
.end method
