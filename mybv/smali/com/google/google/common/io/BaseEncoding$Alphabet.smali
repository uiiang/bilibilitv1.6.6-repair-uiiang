.class final Lcom/google/common/io/BaseEncoding$Alphabet;
.super Lcom/google/common/base/CharMatcher;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Alphabet"
.end annotation


# instance fields
.field final bitsPerChar:I

.field final bytesPerChunk:I

.field private final chars:[C

.field final charsPerChunk:I

.field private final decodabet:[B

.field final mask:I

.field private final name:Ljava/lang/String;

.field private final validPadding:[Z


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "chars"    # [C

    .prologue
    const/16 v10, 0x8

    const/4 v7, 0x1

    const/4 v9, -0x1

    .line 425
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 426
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    .line 427
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [C

    iput-object v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 429
    :try_start_17
    array-length v6, p2

    sget-object v8, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v6, v8}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v6

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I
    :try_end_20
    .catch Ljava/lang/ArithmeticException; {:try_start_17 .. :try_end_20} :catch_63

    .line 438
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    invoke-static {v6}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 440
    .local v3, "gcd":I
    const/16 v6, 0x8

    :try_start_2c
    div-int/2addr v6, v3

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    .line 441
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    div-int/2addr v6, v3

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I
    :try_end_34
    .catch Ljava/lang/ArithmeticException; {:try_start_2c .. :try_end_34} :catch_7e

    .line 446
    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->mask:I

    .line 448
    const/16 v6, 0x80

    new-array v1, v6, [B

    .line 449
    .local v1, "decodabet":[B
    invoke-static {v1, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 450
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_41
    array-length v6, p2

    if-ge v4, v6, :cond_9f

    .line 451
    aget-char v0, p2, v4

    .line 452
    .local v0, "c":C
    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v6

    const-string v8, "Non-ASCII character: %s"

    invoke-static {v6, v8, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;C)V

    .line 453
    aget-byte v6, v1, v0

    if-ne v6, v9, :cond_9d

    move v6, v7

    :goto_58
    const-string v8, "Duplicate character: %s"

    invoke-static {v6, v8, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;C)V

    .line 454
    int-to-byte v6, v4

    aput-byte v6, v1, v0

    .line 450
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 430
    .end local v0    # "c":C
    .end local v1    # "decodabet":[B
    .end local v3    # "gcd":I
    .end local v4    # "i":I
    :catch_63
    move-exception v2

    .line 431
    .local v2, "e":Ljava/lang/ArithmeticException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal alphabet length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 442
    .end local v2    # "e":Ljava/lang/ArithmeticException;
    .restart local v3    # "gcd":I
    :catch_7e
    move-exception v2

    .line 443
    .restart local v2    # "e":Ljava/lang/ArithmeticException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal alphabet "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 453
    .end local v2    # "e":Ljava/lang/ArithmeticException;
    .restart local v0    # "c":C
    .restart local v1    # "decodabet":[B
    .restart local v4    # "i":I
    :cond_9d
    const/4 v6, 0x0

    goto :goto_58

    .line 456
    .end local v0    # "c":C
    :cond_9f
    iput-object v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    .line 458
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    new-array v5, v6, [Z

    .line 459
    .local v5, "validPadding":[Z
    const/4 v4, 0x0

    :goto_a6
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    if-ge v4, v6, :cond_b9

    .line 460
    mul-int/lit8 v6, v4, 0x8

    iget v8, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    sget-object v9, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v6, v8, v9}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v6

    aput-boolean v7, v5, v6

    .line 459
    add-int/lit8 v4, v4, 0x1

    goto :goto_a6

    .line 462
    :cond_b9
    iput-object v5, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->validPadding:[Z

    .line 463
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/io/BaseEncoding$Alphabet;)[C
    .registers 2
    .param p0, "x0"    # Lcom/google/common/io/BaseEncoding$Alphabet;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    return-object v0
.end method

.method private hasLowerCase()Z
    .registers 6

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_13

    aget-char v1, v0, v2

    .line 488
    .local v1, "c":C
    invoke-static {v1}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 489
    const/4 v4, 0x1

    .line 492
    .end local v1    # "c":C
    :goto_f
    return v4

    .line 487
    .restart local v1    # "c":C
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 492
    .end local v1    # "c":C
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private hasUpperCase()Z
    .registers 6

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_13

    aget-char v1, v0, v2

    .line 497
    .local v1, "c":C
    invoke-static {v1}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 498
    const/4 v4, 0x1

    .line 501
    .end local v1    # "c":C
    :goto_f
    return v4

    .line 496
    .restart local v1    # "c":C
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 501
    .end local v1    # "c":C
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method


# virtual methods
.method canDecode(C)Z
    .registers 4
    .param p1, "ch"    # C

    .prologue
    .line 474
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_d

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method decode(C)I
    .registers 6
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .prologue
    .line 478
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_b

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4a

    .line 479
    :cond_b
    new-instance v1, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized character: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/google/common/base/CharMatcher;->invisible()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_39

    .line 483
    :cond_4a
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method encode(I)C
    .registers 3
    .param p1, "bits"    # I

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 542
    instance-of v1, p1, Lcom/google/common/io/BaseEncoding$Alphabet;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 543
    check-cast v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 544
    .local v0, "that":Lcom/google/common/io/BaseEncoding$Alphabet;
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    iget-object v2, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    .line 546
    .end local v0    # "that":Lcom/google/common/io/BaseEncoding$Alphabet;
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method isValidPaddingStartPosition(I)Z
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->validPadding:[Z

    iget v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    rem-int v1, p1, v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method lowerCase()Lcom/google/common/io/BaseEncoding$Alphabet;
    .registers 6

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasUpperCase()Z

    move-result v2

    if-nez v2, :cond_7

    .line 526
    .end local p0    # "this":Lcom/google/common/io/BaseEncoding$Alphabet;
    :goto_6
    return-object p0

    .line 521
    .restart local p0    # "this":Lcom/google/common/io/BaseEncoding$Alphabet;
    :cond_7
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasLowerCase()Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x1

    :goto_e
    const-string v3, "Cannot call lowerCase() on a mixed-case alphabet"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 522
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 523
    .local v1, "lowerCased":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    if-ge v0, v2, :cond_2d

    .line 524
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 521
    .end local v0    # "i":I
    .end local v1    # "lowerCased":[C
    :cond_2b
    const/4 v2, 0x0

    goto :goto_e

    .line 526
    .restart local v0    # "i":I
    .restart local v1    # "lowerCased":[C
    :cond_2d
    new-instance v2, Lcom/google/common/io/BaseEncoding$Alphabet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".lowerCase()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    move-object p0, v2

    goto :goto_6
.end method

.method public matches(C)Z
    .registers 4
    .param p1, "c"    # C

    .prologue
    .line 532
    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    return-object v0
.end method

.method upperCase()Lcom/google/common/io/BaseEncoding$Alphabet;
    .registers 6

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasLowerCase()Z

    move-result v2

    if-nez v2, :cond_7

    .line 513
    .end local p0    # "this":Lcom/google/common/io/BaseEncoding$Alphabet;
    :goto_6
    return-object p0

    .line 508
    .restart local p0    # "this":Lcom/google/common/io/BaseEncoding$Alphabet;
    :cond_7
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasUpperCase()Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x1

    :goto_e
    const-string v3, "Cannot call upperCase() on a mixed-case alphabet"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 509
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 510
    .local v1, "upperCased":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    if-ge v0, v2, :cond_2d

    .line 511
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toUpperCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 508
    .end local v0    # "i":I
    .end local v1    # "upperCased":[C
    :cond_2b
    const/4 v2, 0x0

    goto :goto_e

    .line 513
    .restart local v0    # "i":I
    .restart local v1    # "upperCased":[C
    :cond_2d
    new-instance v2, Lcom/google/common/io/BaseEncoding$Alphabet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".upperCase()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    move-object p0, v2

    goto :goto_6
.end method
