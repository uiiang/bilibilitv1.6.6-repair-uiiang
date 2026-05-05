.class public final Lcom/google/common/math/Quantiles$ScaleAndIndexes;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleAndIndexes"
.end annotation


# instance fields
.field private final indexes:[I

.field private final scale:I


# direct methods
.method private constructor <init>(I[I)V
    .registers 7
    .param p1, "scale"    # I
    .param p2, "indexes"    # [I

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v3, :cond_10

    aget v2, v0, v1

    .line 317
    .local v2, "index":I
    # invokes: Lcom/google/common/math/Quantiles;->checkIndex(II)V
    invoke-static {v2, p1}, Lcom/google/common/math/Quantiles;->access$300(II)V

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 319
    .end local v2    # "index":I
    :cond_10
    iput p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    .line 320
    iput-object p2, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    .line 321
    return-void
.end method

.method synthetic constructor <init>(I[ILcom/google/common/math/Quantiles$1;)V
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # [I
    .param p3, "x2"    # Lcom/google/common/math/Quantiles$1;

    .prologue
    .line 310
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;-><init>(I[I)V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/Collection;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "dataset":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-static {p1}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([D)Ljava/util/Map;
    .registers 3
    .param p1, "dataset"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([I)Ljava/util/Map;
    .registers 3
    .param p1, "dataset"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    # invokes: Lcom/google/common/math/Quantiles;->intsToDoubles([I)[D
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$500([I)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([J)Ljava/util/Map;
    .registers 3
    .param p1, "dataset"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    # invokes: Lcom/google/common/math/Quantiles;->longsToDoubles([J)[D
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$400([J)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs computeInPlace([D)Ljava/util/Map;
    .registers 28
    .param p1, "dataset"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    move-object/from16 v0, p1

    array-length v3, v0

    if-lez v3, :cond_36

    const/4 v3, 0x1

    :goto_6
    const-string v4, "Cannot calculate quantiles of an empty dataset"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 383
    # invokes: Lcom/google/common/math/Quantiles;->containsNaN([D)Z
    invoke-static/range {p1 .. p1}, Lcom/google/common/math/Quantiles;->access$600([D)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 384
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 385
    .local v17, "nanMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    .local v12, "arr$":[I
    array-length v0, v12

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1e
    move/from16 v0, v16

    if-ge v14, v0, :cond_38

    aget v15, v12, v14

    .line 386
    .local v15, "index":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    .line 382
    .end local v12    # "arr$":[I
    .end local v14    # "i$":I
    .end local v15    # "index":I
    .end local v16    # "len$":I
    .end local v17    # "nanMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_36
    const/4 v3, 0x0

    goto :goto_6

    .line 388
    .restart local v12    # "arr$":[I
    .restart local v14    # "i$":I
    .restart local v16    # "len$":I
    .restart local v17    # "nanMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_38
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 434
    .end local v12    # "arr$":[I
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "nanMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :goto_3c
    return-object v3

    .line 396
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v3, v3

    new-array v0, v3, [I

    move-object/from16 v21, v0

    .line 397
    .local v21, "quotients":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v3, v3

    new-array v0, v3, [I

    move-object/from16 v23, v0

    .line 399
    .local v23, "remainders":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [I

    .line 400
    .local v2, "requiredSelections":[I
    const/16 v24, 0x0

    .line 401
    .local v24, "requiredSelectionsCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v3, v3

    if-ge v13, v3, :cond_a2

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    aget v3, v3, v13

    int-to-long v4, v3

    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    int-to-long v6, v3

    mul-long v18, v4, v6

    .line 409
    .local v18, "numerator":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-long v4, v3

    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v4, v5, v3}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v20, v0

    .line 410
    .local v20, "quotient":I
    move/from16 v0, v20

    int-to-long v4, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    sub-long v4, v18, v4

    long-to-int v0, v4

    move/from16 v22, v0

    .line 411
    .local v22, "remainder":I
    aput v20, v21, v13

    .line 412
    aput v22, v23, v13

    .line 413
    aput v20, v2, v24

    .line 414
    add-int/lit8 v24, v24, 0x1

    .line 415
    if-eqz v22, :cond_9f

    .line 416
    add-int/lit8 v3, v20, 0x1

    aput v3, v2, v24

    .line 417
    add-int/lit8 v24, v24, 0x1

    .line 401
    :cond_9f
    add-int/lit8 v13, v13, 0x1

    goto :goto_5b

    .line 420
    .end local v18    # "numerator":J
    .end local v20    # "quotient":I
    .end local v22    # "remainder":I
    :cond_a2
    const/4 v3, 0x0

    move/from16 v0, v24

    invoke-static {v2, v3, v0}, Ljava/util/Arrays;->sort([III)V

    .line 421
    const/4 v3, 0x0

    add-int/lit8 v4, v24, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v5, v0

    add-int/lit8 v7, v5, -0x1

    move-object/from16 v5, p1

    # invokes: Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V
    invoke-static/range {v2 .. v7}, Lcom/google/common/math/Quantiles;->access$900([III[DII)V

    .line 423
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 424
    .local v25, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    const/4 v13, 0x0

    :goto_bc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v3, v3

    if-ge v13, v3, :cond_107

    .line 425
    aget v20, v21, v13

    .line 426
    .restart local v20    # "quotient":I
    aget v22, v23, v13

    .line 427
    .restart local v22    # "remainder":I
    if-nez v22, :cond_e1

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    aget v3, v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-wide v4, p1, v20

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :goto_de
    add-int/lit8 v13, v13, 0x1

    goto :goto_bc

    .line 430
    :cond_e1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    aget v3, v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-wide v4, p1, v20

    add-int/lit8 v6, v20, 0x1

    aget-wide v6, p1, v6

    move/from16 v0, v22

    int-to-double v8, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-double v10, v10

    # invokes: Lcom/google/common/math/Quantiles;->interpolate(DDDD)D
    invoke-static/range {v4 .. v11}, Lcom/google/common/math/Quantiles;->access$800(DDDD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_de

    .line 434
    .end local v20    # "quotient":I
    .end local v22    # "remainder":I
    :cond_107
    invoke-static/range {v25 .. v25}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_3c
.end method
