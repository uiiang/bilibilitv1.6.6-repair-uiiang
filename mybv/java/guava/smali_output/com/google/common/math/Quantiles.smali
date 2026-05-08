.class public final Lcom/google/common/math/Quantiles;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/Quantiles$1;,
        Lcom/google/common/math/Quantiles$ScaleAndIndexes;,
        Lcom/google/common/math/Quantiles$ScaleAndIndex;,
        Lcom/google/common/math/Quantiles$Scale;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method static synthetic access$300(II)V
    .registers 2
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 128
    invoke-static {p0, p1}, Lcom/google/common/math/Quantiles;->checkIndex(II)V

    return-void
.end method

.method static synthetic access$400([J)[D
    .registers 2
    .param p0, "x0"    # [J

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/common/math/Quantiles;->longsToDoubles([J)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500([I)[D
    .registers 2
    .param p0, "x0"    # [I

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/common/math/Quantiles;->intsToDoubles([I)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600([D)Z
    .registers 2
    .param p0, "x0"    # [D

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/common/math/Quantiles;->containsNaN([D)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(I[DII)V
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # [D
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 128
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/math/Quantiles;->selectInPlace(I[DII)V

    return-void
.end method

.method static synthetic access$800(DDDD)D
    .registers 10
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D
    .param p6, "x3"    # D

    .prologue
    .line 128
    invoke-static/range {p0 .. p7}, Lcom/google/common/math/Quantiles;->interpolate(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900([III[DII)V
    .registers 6
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [D
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 128
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    return-void
.end method

.method private static checkIndex(II)V
    .registers 5
    .param p0, "index"    # I
    .param p1, "scale"    # I

    .prologue
    .line 472
    if-ltz p0, :cond_4

    if-le p0, p1, :cond_1d

    .line 473
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quantile indexes must be between 0 and the scale, which is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_1d
    return-void
.end method

.method private static chooseNextSelection([IIIII)I
    .registers 11
    .param p0, "allRequired"    # [I
    .param p1, "requiredFrom"    # I
    .param p2, "requiredTo"    # I
    .param p3, "from"    # I
    .param p4, "to"    # I

    .prologue
    .line 643
    if-ne p1, p2, :cond_3

    .line 673
    .end local p1    # "requiredFrom":I
    :goto_2
    return p1

    .line 649
    .restart local p1    # "requiredFrom":I
    :cond_3
    add-int v4, p3, p4

    ushr-int/lit8 v0, v4, 0x1

    .line 656
    .local v0, "centerFloor":I
    move v2, p1

    .line 657
    .local v2, "low":I
    move v1, p2

    .line 658
    .local v1, "high":I
    :goto_9
    add-int/lit8 v4, v2, 0x1

    if-le v1, v4, :cond_1f

    .line 659
    add-int v4, v2, v1

    ushr-int/lit8 v3, v4, 0x1

    .line 660
    .local v3, "mid":I
    aget v4, p0, v3

    if-le v4, v0, :cond_17

    .line 661
    move v1, v3

    goto :goto_9

    .line 662
    :cond_17
    aget v4, p0, v3

    if-ge v4, v0, :cond_1d

    .line 663
    move v2, v3

    goto :goto_9

    :cond_1d
    move p1, v3

    .line 665
    goto :goto_2

    .line 670
    .end local v3    # "mid":I
    :cond_1f
    add-int v4, p3, p4

    aget v5, p0, v2

    sub-int/2addr v4, v5

    aget v5, p0, v1

    sub-int/2addr v4, v5

    if-lez v4, :cond_2b

    move p1, v1

    .line 671
    goto :goto_2

    :cond_2b
    move p1, v2

    .line 673
    goto :goto_2
.end method

.method private static varargs containsNaN([D)Z
    .registers 7
    .param p0, "dataset"    # [D

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "arr$":[D
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_12

    aget-wide v4, v0, v1

    .line 443
    .local v4, "value":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 444
    const/4 v3, 0x1

    .line 447
    .end local v4    # "value":D
    :goto_e
    return v3

    .line 442
    .restart local v4    # "value":D
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 447
    .end local v4    # "value":D
    :cond_12
    const/4 v3, 0x0

    goto :goto_e
.end method

.method private static interpolate(DDDD)D
    .registers 14
    .param p0, "lower"    # D
    .param p2, "upper"    # D
    .param p4, "remainder"    # D
    .param p6, "scale"    # D

    .prologue
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 456
    cmpl-double v4, p0, v0

    if-nez v4, :cond_f

    .line 457
    cmpl-double v2, p2, v2

    if-nez v2, :cond_e

    .line 459
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 468
    :cond_e
    :goto_e
    return-wide v0

    .line 464
    :cond_f
    cmpl-double v0, p2, v2

    if-nez v0, :cond_15

    move-wide v0, v2

    .line 466
    goto :goto_e

    .line 468
    :cond_15
    sub-double v0, p2, p0

    mul-double/2addr v0, p4

    div-double/2addr v0, p6

    add-double/2addr v0, p0

    goto :goto_e
.end method

.method private static intsToDoubles([I)[D
    .registers 7
    .param p0, "ints"    # [I

    .prologue
    .line 488
    array-length v2, p0

    .line 489
    .local v2, "len":I
    new-array v0, v2, [D

    .line 490
    .local v0, "doubles":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v2, :cond_e

    .line 491
    aget v3, p0, v1

    int-to-double v4, v3

    aput-wide v4, v0, v1

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 493
    :cond_e
    return-object v0
.end method

.method private static longsToDoubles([J)[D
    .registers 7
    .param p0, "longs"    # [J

    .prologue
    .line 479
    array-length v2, p0

    .line 480
    .local v2, "len":I
    new-array v0, v2, [D

    .line 481
    .local v0, "doubles":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v2, :cond_e

    .line 482
    aget-wide v4, p0, v1

    long-to-double v4, v4

    aput-wide v4, v0, v1

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 484
    :cond_e
    return-object v0
.end method

.method public static median()Lcom/google/common/math/Quantiles$ScaleAndIndex;
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/math/Quantiles$Scale;->index(I)Lcom/google/common/math/Quantiles$ScaleAndIndex;

    move-result-object v0

    return-object v0
.end method

.method private static movePivotToStartOfSlice([DII)V
    .registers 13
    .param p0, "array"    # [D
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 580
    add-int v6, p1, p2

    ushr-int/lit8 v0, v6, 0x1

    .line 585
    .local v0, "mid":I
    aget-wide v6, p0, p2

    aget-wide v8, p0, v0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_27

    move v3, v4

    .line 586
    .local v3, "toLessThanMid":Z
    :goto_f
    aget-wide v6, p0, v0

    aget-wide v8, p0, p1

    cmpg-double v6, v6, v8

    if-gez v6, :cond_29

    move v1, v4

    .line 587
    .local v1, "midLessThanFrom":Z
    :goto_18
    aget-wide v6, p0, p2

    aget-wide v8, p0, p1

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2b

    move v2, v4

    .line 588
    .local v2, "toLessThanFrom":Z
    :goto_21
    if-ne v3, v1, :cond_2d

    .line 590
    invoke-static {p0, v0, p1}, Lcom/google/common/math/Quantiles;->swap([DII)V

    .line 596
    :cond_26
    :goto_26
    return-void

    .end local v1    # "midLessThanFrom":Z
    .end local v2    # "toLessThanFrom":Z
    .end local v3    # "toLessThanMid":Z
    :cond_27
    move v3, v5

    .line 585
    goto :goto_f

    .restart local v3    # "toLessThanMid":Z
    :cond_29
    move v1, v5

    .line 586
    goto :goto_18

    .restart local v1    # "midLessThanFrom":Z
    :cond_2b
    move v2, v5

    .line 587
    goto :goto_21

    .line 591
    .restart local v2    # "toLessThanFrom":Z
    :cond_2d
    if-eq v3, v2, :cond_26

    .line 593
    invoke-static {p0, p1, p2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    goto :goto_26
.end method

.method private static partition([DII)I
    .registers 9
    .param p0, "array"    # [D
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 553
    invoke-static {p0, p1, p2}, Lcom/google/common/math/Quantiles;->movePivotToStartOfSlice([DII)V

    .line 554
    aget-wide v2, p0, p1

    .line 558
    .local v2, "pivot":D
    move v1, p2

    .line 559
    .local v1, "partitionPoint":I
    move v0, p2

    .local v0, "i":I
    :goto_7
    if-le v0, p1, :cond_17

    .line 560
    aget-wide v4, p0, v0

    cmpl-double v4, v4, v2

    if-lez v4, :cond_14

    .line 561
    invoke-static {p0, v1, v0}, Lcom/google/common/math/Quantiles;->swap([DII)V

    .line 562
    add-int/lit8 v1, v1, -0x1

    .line 559
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 569
    :cond_17
    invoke-static {p0, p1, v1}, Lcom/google/common/math/Quantiles;->swap([DII)V

    .line 570
    return v1
.end method

.method public static percentiles()Lcom/google/common/math/Quantiles$Scale;
    .registers 1

    .prologue
    .line 148
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    return-object v0
.end method

.method public static quartiles()Lcom/google/common/math/Quantiles$Scale;
    .registers 1

    .prologue
    .line 141
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    return-object v0
.end method

.method public static scale(I)Lcom/google/common/math/Quantiles$Scale;
    .registers 3
    .param p0, "scale"    # I

    .prologue
    .line 158
    new-instance v0, Lcom/google/common/math/Quantiles$Scale;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/math/Quantiles$Scale;-><init>(ILcom/google/common/math/Quantiles$1;)V

    return-object v0
.end method

.method private static selectAllInPlace([III[DII)V
    .registers 20
    .param p0, "allRequired"    # [I
    .param p1, "requiredFrom"    # I
    .param p2, "requiredTo"    # I
    .param p3, "array"    # [D
    .param p4, "from"    # I
    .param p5, "to"    # I

    .prologue
    .line 607
    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/common/math/Quantiles;->chooseNextSelection([IIIII)I

    move-result v13

    .line 608
    .local v13, "requiredChosen":I
    aget v12, p0, v13

    .line 611
    .local v12, "required":I
    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v12, v0, v1, v2}, Lcom/google/common/math/Quantiles;->selectInPlace(I[DII)V

    .line 614
    add-int/lit8 v5, v13, -0x1

    .line 615
    .local v5, "requiredBelow":I
    :goto_17
    if-lt v5, p1, :cond_20

    aget v3, p0, v5

    if-ne v3, v12, :cond_20

    .line 616
    add-int/lit8 v5, v5, -0x1

    goto :goto_17

    .line 618
    :cond_20
    if-lt v5, p1, :cond_2d

    .line 619
    add-int/lit8 v8, v12, -0x1

    move-object v3, p0

    move v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-static/range {v3 .. v8}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    .line 623
    :cond_2d
    add-int/lit8 v7, v13, 0x1

    .line 624
    .local v7, "requiredAbove":I
    :goto_2f
    move/from16 v0, p2

    if-gt v7, v0, :cond_3a

    aget v3, p0, v7

    if-ne v3, v12, :cond_3a

    .line 625
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 627
    :cond_3a
    move/from16 v0, p2

    if-gt v7, v0, :cond_4a

    .line 628
    add-int/lit8 v10, v12, 0x1

    move-object v6, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v11, p5

    invoke-static/range {v6 .. v11}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    .line 630
    :cond_4a
    return-void
.end method

.method private static selectInPlace(I[DII)V
    .registers 12
    .param p0, "required"    # I
    .param p1, "array"    # [D
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 517
    if-ne p0, p2, :cond_19

    .line 518
    move v1, p2

    .line 519
    .local v1, "min":I
    add-int/lit8 v0, p2, 0x1

    .local v0, "index":I
    :goto_5
    if-gt v0, p3, :cond_13

    .line 520
    aget-wide v4, p1, v1

    aget-wide v6, p1, v0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_10

    .line 521
    move v1, v0

    .line 519
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 524
    :cond_13
    if-eq v1, p2, :cond_18

    .line 525
    invoke-static {p1, v1, p2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    .line 541
    .end local v0    # "index":I
    .end local v1    # "min":I
    :cond_18
    return-void

    .line 532
    :cond_19
    :goto_19
    if-le p3, p2, :cond_18

    .line 533
    invoke-static {p1, p2, p3}, Lcom/google/common/math/Quantiles;->partition([DII)I

    move-result v2

    .line 534
    .local v2, "partitionPoint":I
    if-lt v2, p0, :cond_23

    .line 535
    add-int/lit8 p3, v2, -0x1

    .line 537
    :cond_23
    if-gt v2, p0, :cond_19

    .line 538
    add-int/lit8 p2, v2, 0x1

    goto :goto_19
.end method

.method private static swap([DII)V
    .registers 7
    .param p0, "array"    # [D
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 681
    aget-wide v0, p0, p1

    .line 682
    .local v0, "temp":D
    aget-wide v2, p0, p2

    aput-wide v2, p0, p1

    .line 683
    aput-wide v0, p0, p2

    .line 684
    return-void
.end method
