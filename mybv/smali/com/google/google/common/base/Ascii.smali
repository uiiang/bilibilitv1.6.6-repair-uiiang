.class public final Lcom/google/common/base/Ascii;
.super Ljava/lang/Object;
.source "Ascii.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field public static final ACK:B = 0x6t

.field public static final BEL:B = 0x7t

.field public static final BS:B = 0x8t

.field public static final CAN:B = 0x18t

.field public static final CR:B = 0xdt

.field public static final DC1:B = 0x11t

.field public static final DC2:B = 0x12t

.field public static final DC3:B = 0x13t

.field public static final DC4:B = 0x14t

.field public static final DEL:B = 0x7ft

.field public static final DLE:B = 0x10t

.field public static final EM:B = 0x19t

.field public static final ENQ:B = 0x5t

.field public static final EOT:B = 0x4t

.field public static final ESC:B = 0x1bt

.field public static final ETB:B = 0x17t

.field public static final ETX:B = 0x3t

.field public static final FF:B = 0xct

.field public static final FS:B = 0x1ct

.field public static final GS:B = 0x1dt

.field public static final HT:B = 0x9t

.field public static final LF:B = 0xat

.field public static final MAX:C = '\u007f'

.field public static final MIN:C = '\u0000'

.field public static final NAK:B = 0x15t

.field public static final NL:B = 0xat

.field public static final NUL:B = 0x0t

.field public static final RS:B = 0x1et

.field public static final SI:B = 0xft

.field public static final SO:B = 0xet

.field public static final SOH:B = 0x1t

.field public static final SP:B = 0x20t

.field public static final SPACE:B = 0x20t

.field public static final STX:B = 0x2t

.field public static final SUB:B = 0x1at

.field public static final SYN:B = 0x16t

.field public static final US:B = 0x1ft

.field public static final VT:B = 0xbt

.field public static final XOFF:B = 0x13t

.field public static final XON:B = 0x11t


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 10
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "s2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 596
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 597
    .local v4, "length":I
    if-ne p0, p1, :cond_9

    .line 617
    :cond_8
    :goto_8
    return v5

    .line 600
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eq v4, v7, :cond_11

    move v5, v6

    .line 601
    goto :goto_8

    .line 603
    :cond_11
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v4, :cond_8

    .line 604
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 605
    .local v1, "c1":C
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 606
    .local v2, "c2":C
    if-ne v1, v2, :cond_21

    .line 603
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 609
    :cond_21
    invoke-static {v1}, Lcom/google/common/base/Ascii;->getAlphaIndex(C)I

    move-result v0

    .line 612
    .local v0, "alphaIndex":I
    const/16 v7, 0x1a

    if-ge v0, v7, :cond_2f

    invoke-static {v2}, Lcom/google/common/base/Ascii;->getAlphaIndex(C)I

    move-result v7

    if-eq v0, v7, :cond_1e

    :cond_2f
    move v5, v6

    .line 615
    goto :goto_8
.end method

.method private static getAlphaIndex(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 626
    or-int/lit8 v0, p0, 0x20

    add-int/lit8 v0, v0, -0x61

    int-to-char v0, v0

    return v0
.end method

.method public static isLowerCase(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 501
    const/16 v0, 0x61

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isUpperCase(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 510
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static toLowerCase(C)C
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 442
    invoke-static {p0}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_9

    xor-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    .end local p0    # "c":C
    :cond_9
    return p0
.end method

.method public static toLowerCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "chars"    # Ljava/lang/CharSequence;

    .prologue
    .line 427
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 428
    check-cast p0, Ljava/lang/String;

    .end local p0    # "chars":Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v0, "i":I
    .local v1, "newChars":[C
    .restart local p0    # "chars":Ljava/lang/CharSequence;
    :goto_a
    return-object v2

    .line 430
    .end local v0    # "i":I
    .end local v1    # "newChars":[C
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 431
    .restart local v1    # "newChars":[C
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12
    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 432
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 434
    :cond_22
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    goto :goto_a
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 403
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 404
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v3, :cond_2b

    .line 405
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 406
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 407
    .local v1, "chars":[C
    :goto_15
    if-ge v2, v3, :cond_27

    .line 408
    aget-char v0, v1, v2

    .line 409
    .local v0, "c":C
    invoke-static {v0}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 410
    xor-int/lit8 v4, v0, 0x20

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 407
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 413
    .end local v0    # "c":C
    :cond_27
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    .line 416
    .end local v1    # "chars":[C
    .end local p0    # "string":Ljava/lang/String;
    :cond_2b
    return-object p0

    .line 404
    .restart local p0    # "string":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public static toUpperCase(C)C
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 490
    invoke-static {p0}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_9

    and-int/lit8 v0, p0, 0x5f

    int-to-char p0, v0

    .end local p0    # "c":C
    :cond_9
    return p0
.end method

.method public static toUpperCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "chars"    # Ljava/lang/CharSequence;

    .prologue
    .line 475
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 476
    check-cast p0, Ljava/lang/String;

    .end local p0    # "chars":Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v0, "i":I
    .local v1, "newChars":[C
    .restart local p0    # "chars":Ljava/lang/CharSequence;
    :goto_a
    return-object v2

    .line 478
    .end local v0    # "i":I
    .end local v1    # "newChars":[C
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 479
    .restart local v1    # "newChars":[C
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12
    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 480
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toUpperCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 482
    :cond_22
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    goto :goto_a
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 452
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v3, :cond_2b

    .line 453
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 454
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 455
    .local v1, "chars":[C
    :goto_15
    if-ge v2, v3, :cond_27

    .line 456
    aget-char v0, v1, v2

    .line 457
    .local v0, "c":C
    invoke-static {v0}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 458
    and-int/lit8 v4, v0, 0x5f

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 455
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 461
    .end local v0    # "c":C
    :cond_27
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    .line 464
    .end local v1    # "chars":[C
    .end local p0    # "string":Ljava/lang/String;
    :cond_2b
    return-object p0

    .line 452
    .restart local p0    # "string":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public static truncate(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "maxLength"    # I
    .param p2, "truncationIndicator"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 546
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v1, p1, v2

    .line 553
    .local v1, "truncationLength":I
    if-ltz v1, :cond_27

    const/4 v2, 0x1

    :goto_d
    const-string v4, "maxLength (%s) must be >= length of the truncation indicator (%s)"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v4, p1, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 559
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v2, p1, :cond_2a

    .line 560
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, p1, :cond_29

    .line 568
    .end local v0    # "string":Ljava/lang/String;
    :goto_26
    return-object v0

    :cond_27
    move v2, v3

    .line 553
    goto :goto_d

    .line 565
    .restart local v0    # "string":Ljava/lang/String;
    :cond_29
    move-object p0, v0

    .line 568
    .end local v0    # "string":Ljava/lang/String;
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method
