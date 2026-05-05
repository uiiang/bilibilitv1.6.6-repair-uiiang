.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/IntMath$1;
    }
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_INT:I = 0xb504
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_SIGNED_POWER_OF_TWO:I = 0x40000000
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static biggestBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final factorials:[I

.field static final halfPowersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xa

    .line 202
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    .line 208
    new-array v0, v1, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 214
    new-array v0, v1, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    .line 626
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    .line 676
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    return-void

    .line 202
    :array_2c
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 208
    nop

    :array_42
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    .line 214
    :array_5a
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    .line 626
    :array_72
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    .line 676
    :array_90
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .registers 8
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 650
    const-string v1, "n"

    invoke-static {v1, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 651
    const-string v1, "k"

    invoke-static {v1, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 652
    if-gt p1, p0, :cond_28

    move v1, v4

    :goto_e
    const-string v5, "k (%s) > n (%s)"

    invoke-static {v1, v5, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 653
    shr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_19

    .line 654
    sub-int p1, p0, p1

    .line 656
    :cond_19
    sget-object v1, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    array-length v1, v1

    if-ge p1, v1, :cond_24

    sget-object v1, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    aget v1, v1, p1

    if-le p0, v1, :cond_2a

    .line 657
    :cond_24
    const v4, 0x7fffffff

    .line 670
    :goto_27
    :pswitch_27
    return v4

    .line 652
    :cond_28
    const/4 v1, 0x0

    goto :goto_e

    .line 659
    :cond_2a
    packed-switch p1, :pswitch_data_42

    .line 665
    const-wide/16 v2, 0x1

    .line 666
    .local v2, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    if-ge v0, p1, :cond_3f

    .line 667
    sub-int v1, p0, v0

    int-to-long v4, v1

    mul-long/2addr v2, v4

    .line 668
    add-int/lit8 v1, v0, 0x1

    int-to-long v4, v1

    div-long/2addr v2, v4

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .end local v0    # "i":I
    .end local v2    # "result":J
    :pswitch_3d
    move v4, p0

    .line 663
    goto :goto_27

    .line 670
    .restart local v0    # "i":I
    .restart local v2    # "result":J
    :cond_3f
    long-to-int v4, v2

    goto :goto_27

    .line 659
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_27
        :pswitch_3d
    .end packed-switch
.end method

.method public static ceilingPowerOfTwo(I)I
    .registers 4
    .param p0, "x"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 67
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 68
    const/high16 v0, 0x40000000    # 2.0f

    if-le p0, v0, :cond_28

    .line 69
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ceilingPowerOfTwo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not representable as an int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_28
    const/4 v0, 0x1

    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    neg-int v1, v1

    shl-int/2addr v0, v1

    return v0
.end method

.method public static checkedAdd(II)I
    .registers 8
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 454
    int-to-long v2, p0

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 455
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 456
    long-to-int v2, v0

    return v2

    .line 455
    :cond_10
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public static checkedMultiply(II)I
    .registers 8
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 476
    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 477
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 478
    long-to-int v2, v0

    return v2

    .line 477
    :cond_10
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public static checkedPow(II)I
    .registers 7
    .param p0, "b"    # I
    .param p1, "k"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 490
    const-string v4, "exponent"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 491
    packed-switch p0, :pswitch_data_5e

    .line 507
    const/4 v0, 0x1

    .line 509
    .local v0, "accum":I
    :cond_c
    :goto_c
    packed-switch p1, :pswitch_data_6c

    .line 515
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_17

    .line 516
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    .line 518
    :cond_17
    shr-int/lit8 p1, p1, 0x1

    .line 519
    if-lez p1, :cond_c

    .line 520
    const v3, -0xb504

    if-gt v3, p0, :cond_5a

    move v4, v1

    :goto_21
    const v3, 0xb504

    if-gt p0, v3, :cond_5c

    move v3, v1

    :goto_27
    and-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 521
    mul-int/2addr p0, p0

    goto :goto_c

    .line 493
    .end local v0    # "accum":I
    :pswitch_2d
    if-nez p1, :cond_30

    .line 513
    :cond_2f
    :goto_2f
    :pswitch_2f
    return v1

    :cond_30
    move v1, v2

    .line 493
    goto :goto_2f

    .line 497
    :pswitch_32
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2f

    move v1, v3

    goto :goto_2f

    .line 499
    :pswitch_38
    const/16 v3, 0x1f

    if-ge p1, v3, :cond_3d

    move v2, v1

    :cond_3d
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 500
    shl-int/2addr v1, p1

    goto :goto_2f

    .line 502
    :pswitch_42
    const/16 v4, 0x20

    if-ge p1, v4, :cond_47

    move v2, v1

    :cond_47
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 503
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_50

    shl-int/2addr v1, p1

    goto :goto_2f

    :cond_50
    shl-int v1, v3, p1

    goto :goto_2f

    .restart local v0    # "accum":I
    :pswitch_53
    move v1, v0

    .line 511
    goto :goto_2f

    .line 513
    :pswitch_55
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v1

    goto :goto_2f

    :cond_5a
    move v4, v2

    .line 520
    goto :goto_21

    :cond_5c
    move v3, v2

    goto :goto_27

    .line 491
    :pswitch_data_5e
    .packed-switch -0x2
        :pswitch_42
        :pswitch_32
        :pswitch_2d
        :pswitch_2f
        :pswitch_38
    .end packed-switch

    .line 509
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_53
        :pswitch_55
    .end packed-switch
.end method

.method public static checkedSubtract(II)I
    .registers 8
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 465
    int-to-long v2, p0

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 466
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 467
    long-to-int v2, v0

    return v2

    .line 466
    :cond_10
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .registers 13
    .param p0, "p"    # I
    .param p1, "q"    # I
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 318
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    if-nez p1, :cond_f

    .line 320
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "/ by zero"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 322
    :cond_f
    div-int v2, p0, p1

    .line 323
    .local v2, "div":I
    mul-int v8, p1, v2

    sub-int v4, p0, v8

    .line 325
    .local v4, "rem":I
    if-nez v4, :cond_18

    .line 370
    .end local v2    # "div":I
    :cond_17
    :goto_17
    return v2

    .line 336
    .restart local v2    # "div":I
    :cond_18
    xor-int v8, p0, p1

    shr-int/lit8 v8, v8, 0x1f

    or-int/lit8 v5, v8, 0x1

    .line 338
    .local v5, "signum":I
    sget-object v8, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_76

    .line 368
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 340
    :pswitch_2f
    if-nez v4, :cond_39

    :goto_31
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 343
    :pswitch_34
    const/4 v3, 0x0

    .line 370
    .local v3, "increment":Z
    :goto_35
    if-eqz v3, :cond_17

    add-int/2addr v2, v5

    goto :goto_17

    .end local v3    # "increment":Z
    :cond_39
    move v6, v7

    .line 340
    goto :goto_31

    .line 346
    :pswitch_3b
    const/4 v3, 0x1

    .line 347
    .restart local v3    # "increment":Z
    goto :goto_35

    .line 349
    .end local v3    # "increment":Z
    :pswitch_3d
    if-lez v5, :cond_41

    move v3, v6

    .line 350
    .restart local v3    # "increment":Z
    :goto_40
    goto :goto_35

    .end local v3    # "increment":Z
    :cond_41
    move v3, v7

    .line 349
    goto :goto_40

    .line 352
    :pswitch_43
    if-gez v5, :cond_47

    move v3, v6

    .line 353
    .restart local v3    # "increment":Z
    :goto_46
    goto :goto_35

    .end local v3    # "increment":Z
    :cond_47
    move v3, v7

    .line 352
    goto :goto_46

    .line 357
    :pswitch_49
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 358
    .local v0, "absRem":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v8, v0

    sub-int v1, v0, v8

    .line 361
    .local v1, "cmpRemToHalfDivisor":I
    if-nez v1, :cond_6f

    .line 362
    sget-object v8, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v8, :cond_67

    sget-object v8, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v8, :cond_69

    move v9, v6

    :goto_5f
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_6b

    move v8, v6

    :goto_64
    and-int/2addr v8, v9

    if-eqz v8, :cond_6d

    :cond_67
    move v3, v6

    .restart local v3    # "increment":Z
    :goto_68
    goto :goto_35

    .end local v3    # "increment":Z
    :cond_69
    move v9, v7

    goto :goto_5f

    :cond_6b
    move v8, v7

    goto :goto_64

    :cond_6d
    move v3, v7

    goto :goto_68

    .line 364
    :cond_6f
    if-lez v1, :cond_73

    move v3, v6

    .line 366
    .restart local v3    # "increment":Z
    :goto_72
    goto :goto_35

    .end local v3    # "increment":Z
    :cond_73
    move v3, v7

    .line 364
    goto :goto_72

    .line 338
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_34
        :pswitch_43
        :pswitch_3b
        :pswitch_3d
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch
.end method

.method public static factorial(I)I
    .registers 2
    .param p0, "n"    # I

    .prologue
    .line 622
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 623
    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    array-length v0, v0

    if-ge p0, v0, :cond_f

    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    aget v0, v0, p0

    :goto_e
    return v0

    :cond_f
    const v0, 0x7fffffff

    goto :goto_e
.end method

.method public static floorPowerOfTwo(I)I
    .registers 2
    .param p0, "x"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 83
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static gcd(II)I
    .registers 8
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 409
    const-string v5, "a"

    invoke-static {v5, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 410
    const-string v5, "b"

    invoke-static {v5, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 411
    if-nez p0, :cond_f

    move v1, p1

    .end local p1    # "b":I
    .local v1, "b":I
    move p0, p1

    .line 445
    .end local p0    # "a":I
    :goto_e
    return p0

    .line 415
    .end local v1    # "b":I
    .restart local p0    # "a":I
    .restart local p1    # "b":I
    :cond_f
    if-nez p1, :cond_13

    move v1, p1

    .line 416
    .end local p1    # "b":I
    .restart local v1    # "b":I
    goto :goto_e

    .line 422
    .end local v1    # "b":I
    .restart local p1    # "b":I
    :cond_13
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 423
    .local v0, "aTwos":I
    shr-int/2addr p0, v0

    .line 424
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .line 425
    .local v2, "bTwos":I
    shr-int/2addr p1, v2

    .line 426
    :goto_1d
    if-eq p0, p1, :cond_30

    .line 434
    sub-int v3, p0, p1

    .line 436
    .local v3, "delta":I
    shr-int/lit8 v5, v3, 0x1f

    and-int v4, v3, v5

    .line 439
    .local v4, "minDeltaOrZero":I
    sub-int v5, v3, v4

    sub-int p0, v5, v4

    .line 442
    add-int/2addr p1, v4

    .line 443
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    shr-int/2addr p0, v5

    .line 444
    goto :goto_1d

    .line 445
    .end local v3    # "delta":I
    .end local v4    # "minDeltaOrZero":I
    :cond_30
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    shl-int/2addr p0, v5

    move v1, p1

    .end local p1    # "b":I
    .restart local v1    # "b":I
    goto :goto_e
.end method

.method public static isPowerOfTwo(I)Z
    .registers 5
    .param p0, "x"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    if-lez p0, :cond_c

    move v2, v0

    :goto_5
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_e

    :goto_a
    and-int/2addr v0, v2

    return v0

    :cond_c
    move v2, v1

    goto :goto_5

    :cond_e
    move v0, v1

    goto :goto_a
.end method

.method public static isPrime(I)Z
    .registers 3
    .param p0, "n"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 724
    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPrime(J)Z

    move-result v0

    return v0
.end method

.method static lessThanBranchFree(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 107
    sub-int v0, p0, p1

    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .registers 6
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 161
    const-string v2, "x"

    invoke-static {v2, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 162
    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v1

    .line 163
    .local v1, "logFloor":I
    sget-object v2, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v0, v2, v1

    .line 164
    .local v0, "floorPow":I
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_38

    .line 180
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 166
    :pswitch_1e
    if-ne p0, v0, :cond_25

    const/4 v2, 0x1

    :goto_21
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 178
    .end local v1    # "logFloor":I
    :goto_24
    :pswitch_24
    return v1

    .line 166
    .restart local v1    # "logFloor":I
    :cond_25
    const/4 v2, 0x0

    goto :goto_21

    .line 173
    :pswitch_27
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_24

    .line 178
    :pswitch_2d
    sget-object v2, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    aget v2, v2, v1

    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_24

    .line 164
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_24
        :pswitch_24
        :pswitch_27
        :pswitch_27
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method private static log10Floor(I)I
    .registers 4
    .param p0, "x"    # I

    .prologue
    .line 192
    sget-object v1, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    aget-byte v0, v1, v2

    .line 197
    .local v0, "y":I
    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .registers 7
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .prologue
    .line 120
    const-string v3, "x"

    invoke-static {v3, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 121
    sget-object v3, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3e

    .line 144
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 123
    :pswitch_16
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 127
    :pswitch_1d
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1f

    .line 141
    :goto_23
    return v3

    .line 131
    :pswitch_24
    add-int/lit8 v3, p0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    goto :goto_23

    .line 137
    :pswitch_2d
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    .line 138
    .local v1, "leadingZeros":I
    const v3, -0x4afb0ccd

    ushr-int v0, v3, v1

    .line 140
    .local v0, "cmp":I
    rsub-int/lit8 v2, v1, 0x1f

    .line 141
    .local v2, "logFloor":I
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_23

    .line 121
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1d
        :pswitch_1d
        :pswitch_24
        :pswitch_24
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public static mean(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 706
    and-int v0, p0, p1

    xor-int v1, p0, p1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(II)I
    .registers 6
    .param p0, "x"    # I
    .param p1, "m"    # I

    .prologue
    .line 390
    if-gtz p1, :cond_21

    .line 391
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modulus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_21
    rem-int v0, p0, p1

    .line 394
    .local v0, "result":I
    if-ltz v0, :cond_26

    .end local v0    # "result":I
    :goto_25
    return v0

    .restart local v0    # "result":I
    :cond_26
    add-int/2addr v0, p1

    goto :goto_25
.end method

.method public static pow(II)I
    .registers 7
    .param p0, "b"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 229
    const-string v3, "exponent"

    invoke-static {v3, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 230
    packed-switch p0, :pswitch_data_40

    .line 248
    const/4 v0, 0x1

    .line 249
    .local v0, "accum":I
    :goto_d
    packed-switch p1, :pswitch_data_4e

    .line 255
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_3d

    move v2, v1

    :goto_15
    mul-int/2addr v0, v2

    .line 256
    mul-int/2addr p0, p0

    .line 248
    shr-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 232
    .end local v0    # "accum":I
    :pswitch_1a
    if-nez p1, :cond_1d

    .line 253
    :cond_1c
    :goto_1c
    :pswitch_1c
    return v1

    :cond_1d
    move v1, v2

    .line 232
    goto :goto_1c

    .line 236
    :pswitch_1f
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1c

    const/4 v1, -0x1

    goto :goto_1c

    .line 238
    :pswitch_25
    if-ge p1, v4, :cond_29

    shl-int v2, v1, p1

    :cond_29
    move v1, v2

    goto :goto_1c

    .line 240
    :pswitch_2b
    if-ge p1, v4, :cond_36

    .line 241
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_33

    shl-int/2addr v1, p1

    goto :goto_1c

    :cond_33
    shl-int/2addr v1, p1

    neg-int v1, v1

    goto :goto_1c

    :cond_36
    move v1, v2

    .line 243
    goto :goto_1c

    .restart local v0    # "accum":I
    :pswitch_38
    move v1, v0

    .line 251
    goto :goto_1c

    .line 253
    :pswitch_3a
    mul-int v1, p0, v0

    goto :goto_1c

    :cond_3d
    move v2, p0

    .line 255
    goto :goto_15

    .line 230
    nop

    :pswitch_data_40
    .packed-switch -0x2
        :pswitch_2b
        :pswitch_1f
        :pswitch_1a
        :pswitch_1c
        :pswitch_25
    .end packed-switch

    .line 249
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_38
        :pswitch_3a
    .end packed-switch
.end method

.method public static saturatedAdd(II)I
    .registers 6
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 535
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static saturatedMultiply(II)I
    .registers 6
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 557
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static saturatedPow(II)I
    .registers 8
    .param p0, "b"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const/4 v4, -0x1

    const v1, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 568
    const-string v5, "exponent"

    invoke-static {v5, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 569
    packed-switch p0, :pswitch_data_66

    .line 589
    const/4 v0, 0x1

    .line 591
    .local v0, "accum":I
    ushr-int/lit8 v4, p0, 0x1f

    and-int/lit8 v5, p1, 0x1

    and-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 593
    .local v1, "limit":I
    :cond_15
    :goto_15
    packed-switch p1, :pswitch_data_74

    .line 599
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_20

    .line 600
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v0

    .line 602
    :cond_20
    shr-int/lit8 p1, p1, 0x1

    .line 603
    if-lez p1, :cond_15

    .line 604
    const v4, -0xb504

    if-le v4, p0, :cond_5f

    move v5, v2

    :goto_2a
    const v4, 0xb504

    if-le p0, v4, :cond_61

    move v4, v2

    :goto_30
    or-int/2addr v4, v5

    if-eqz v4, :cond_63

    move v2, v1

    .line 605
    .end local v0    # "accum":I
    .end local v1    # "limit":I
    :cond_34
    :goto_34
    :pswitch_34
    return v2

    .line 571
    :pswitch_35
    if-eqz p1, :cond_34

    move v2, v3

    goto :goto_34

    .line 575
    :pswitch_39
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_34

    move v2, v4

    goto :goto_34

    .line 577
    :pswitch_3f
    const/16 v3, 0x1f

    if-lt p1, v3, :cond_45

    move v2, v1

    .line 578
    goto :goto_34

    .line 580
    :cond_45
    shl-int/2addr v2, p1

    goto :goto_34

    .line 582
    :pswitch_47
    const/16 v3, 0x20

    if-lt p1, v3, :cond_4f

    .line 583
    and-int/lit8 v2, p1, 0x1

    add-int/2addr v2, v1

    goto :goto_34

    .line 585
    :cond_4f
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_55

    shl-int/2addr v2, p1

    goto :goto_34

    :cond_55
    shl-int v2, v4, p1

    goto :goto_34

    .restart local v0    # "accum":I
    .restart local v1    # "limit":I
    :pswitch_58
    move v2, v0

    .line 595
    goto :goto_34

    .line 597
    :pswitch_5a
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v2

    goto :goto_34

    :cond_5f
    move v5, v3

    .line 604
    goto :goto_2a

    :cond_61
    move v4, v3

    goto :goto_30

    .line 607
    :cond_63
    mul-int/2addr p0, p0

    goto :goto_15

    .line 569
    nop

    :pswitch_data_66
    .packed-switch -0x2
        :pswitch_47
        :pswitch_39
        :pswitch_35
        :pswitch_34
        :pswitch_3f
    .end packed-switch

    .line 593
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_58
        :pswitch_5a
    .end packed-switch
.end method

.method public static saturatedSubtract(II)I
    .registers 6
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 546
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .registers 6
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 271
    const-string v2, "x"

    invoke-static {v2, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 272
    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v1

    .line 273
    .local v1, "sqrtFloor":I
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_38

    .line 299
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 275
    :pswitch_1a
    mul-int v2, v1, v1

    if-ne v2, p0, :cond_23

    const/4 v2, 0x1

    :goto_1f
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 297
    .end local v1    # "sqrtFloor":I
    :goto_22
    :pswitch_22
    return v1

    .line 275
    .restart local v1    # "sqrtFloor":I
    :cond_23
    const/4 v2, 0x0

    goto :goto_1f

    .line 281
    :pswitch_25
    mul-int v2, v1, v1

    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_22

    .line 285
    :pswitch_2d
    mul-int v2, v1, v1

    add-int v0, v2, v1

    .line 297
    .local v0, "halfSquare":I
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_22

    .line 273
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_22
        :pswitch_22
        :pswitch_25
        :pswitch_25
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method private static sqrtFloor(I)I
    .registers 3
    .param p0, "x"    # I

    .prologue
    .line 306
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
