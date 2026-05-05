.class Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
.super Lcom/google/common/io/BaseEncoding;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StandardBaseEncoding"
.end annotation


# instance fields
.field final alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

.field private transient lowerCase:Lcom/google/common/io/BaseEncoding;

.field final paddingChar:Ljava/lang/Character;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private transient upperCase:Lcom/google/common/io/BaseEncoding;


# direct methods
.method constructor <init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V
    .registers 5
    .param p1, "alphabet"    # Lcom/google/common/io/BaseEncoding$Alphabet;
    .param p2, "paddingChar"    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding;-><init>()V

    .line 566
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 567
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->matches(C)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_17
    const/4 v0, 0x1

    :goto_18
    const-string v1, "Padding character %s was already in alphabet"

    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 571
    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 572
    return-void

    .line 567
    :cond_20
    const/4 v0, 0x0

    goto :goto_18
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alphabetChars"    # Ljava/lang/String;
    .param p3, "paddingChar"    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 562
    new-instance v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    .line 563
    return-void
.end method


# virtual methods
.method public canDecode(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 670
    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->padding()Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 671
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v2

    if-nez v2, :cond_16

    .line 679
    :cond_15
    :goto_15
    return v1

    .line 674
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 675
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$Alphabet;->canDecode(C)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 679
    :cond_2c
    const/4 v1, 0x1

    goto :goto_15
.end method

.method decodeTo([BLjava/lang/CharSequence;)I
    .registers 19
    .param p1, "target"    # [B
    .param p2, "chars"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->padding()Lcom/google/common/base/CharMatcher;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 686
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v12

    if-nez v12, :cond_38

    .line 687
    new-instance v12, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid input length "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 689
    :cond_38
    const/4 v2, 0x0

    .line 690
    .local v2, "bytesWritten":I
    const/4 v4, 0x0

    .local v4, "charIdx":I
    :goto_3a
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ge v4, v12, :cond_a9

    .line 691
    const-wide/16 v8, 0x0

    .line 692
    .local v8, "chunk":J
    const/4 v5, 0x0

    .line 693
    .local v5, "charsProcessed":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_44
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v12, v12, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    if-ge v7, v12, :cond_73

    .line 694
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v12, v12, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    shl-long/2addr v8, v12

    .line 695
    add-int v12, v4, v7

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-ge v12, v13, :cond_70

    .line 696
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "charsProcessed":I
    .local v6, "charsProcessed":I
    add-int v13, v4, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v12

    int-to-long v12, v12

    or-long/2addr v8, v12

    move v5, v6

    .line 693
    .end local v6    # "charsProcessed":I
    .restart local v5    # "charsProcessed":I
    :cond_70
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 699
    :cond_73
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v12, v12, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    mul-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v13, v13, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    mul-int/2addr v13, v5

    sub-int v10, v12, v13

    .line 700
    .local v10, "minOffset":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v12, v12, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    add-int/lit8 v12, v12, -0x1

    mul-int/lit8 v11, v12, 0x8

    .local v11, "offset":I
    move v3, v2

    .end local v2    # "bytesWritten":I
    .local v3, "bytesWritten":I
    :goto_8f
    if-lt v11, v10, :cond_a0

    .line 701
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "bytesWritten":I
    .restart local v2    # "bytesWritten":I
    ushr-long v12, v8, v11

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, p1, v3

    .line 700
    add-int/lit8 v11, v11, -0x8

    move v3, v2

    .end local v2    # "bytesWritten":I
    .restart local v3    # "bytesWritten":I
    goto :goto_8f

    .line 690
    :cond_a0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v12, v12, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    add-int/2addr v4, v12

    move v2, v3

    .end local v3    # "bytesWritten":I
    .restart local v2    # "bytesWritten":I
    goto :goto_3a

    .line 704
    .end local v5    # "charsProcessed":I
    .end local v7    # "i":I
    .end local v8    # "chunk":J
    .end local v10    # "minOffset":I
    .end local v11    # "offset":I
    :cond_a9
    return v2
.end method

.method public decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
    .registers 3
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 710
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;-><init>(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;Ljava/io/Reader;)V

    return-object v0
.end method

.method encodeChunkTo(Ljava/lang/Appendable;[BII)V
    .registers 13
    .param p1, "target"    # Ljava/lang/Appendable;
    .param p2, "bytes"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    add-int v6, p3, p4

    array-length v7, p2

    invoke-static {p3, v6, v7}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 641
    iget-object v6, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v6, v6, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    if-gt p4, v6, :cond_26

    const/4 v6, 0x1

    :goto_10
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 642
    const-wide/16 v0, 0x0

    .line 643
    .local v0, "bitBuffer":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_16
    if-ge v5, p4, :cond_28

    .line 644
    add-int v6, p3, v5

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v0, v6

    .line 645
    const/16 v6, 0x8

    shl-long/2addr v0, v6

    .line 643
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 641
    .end local v0    # "bitBuffer":J
    .end local v5    # "i":I
    :cond_26
    const/4 v6, 0x0

    goto :goto_10

    .line 648
    .restart local v0    # "bitBuffer":J
    .restart local v5    # "i":I
    :cond_28
    add-int/lit8 v6, p4, 0x1

    mul-int/lit8 v6, v6, 0x8

    iget-object v7, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v7, v7, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    sub-int v2, v6, v7

    .line 649
    .local v2, "bitOffset":I
    const/4 v3, 0x0

    .line 650
    .local v3, "bitsProcessed":I
    :goto_33
    mul-int/lit8 v6, p4, 0x8

    if-ge v3, v6, :cond_51

    .line 651
    sub-int v6, v2, v3

    ushr-long v6, v0, v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v7, v7, Lcom/google/common/io/BaseEncoding$Alphabet;->mask:I

    and-int v4, v6, v7

    .line 652
    .local v4, "charIndex":I
    iget-object v6, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {v6, v4}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v6

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 653
    iget-object v6, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v6, v6, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    add-int/2addr v3, v6

    .line 654
    goto :goto_33

    .line 655
    .end local v4    # "charIndex":I
    :cond_51
    iget-object v6, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-eqz v6, :cond_6c

    .line 656
    :goto_55
    iget-object v6, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v6, v6, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    mul-int/lit8 v6, v6, 0x8

    if-ge v3, v6, :cond_6c

    .line 657
    iget-object v6, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 658
    iget-object v6, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v6, v6, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    add-int/2addr v3, v6

    goto :goto_55

    .line 661
    :cond_6c
    return-void
.end method

.method encodeTo(Ljava/lang/Appendable;[BII)V
    .registers 9
    .param p1, "target"    # Ljava/lang/Appendable;
    .param p2, "bytes"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    add-int v1, p3, p4

    array-length v2, p2

    invoke-static {p3, v1, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 633
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, p4, :cond_21

    .line 634
    add-int v1, p3, v0

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v2, v2, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    sub-int v3, p4, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->encodeChunkTo(Ljava/lang/Appendable;[BII)V

    .line 633
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    add-int/2addr v0, v1

    goto :goto_a

    .line 636
    :cond_21
    return-void
.end method

.method public encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
    .registers 3
    .param p1, "out"    # Ljava/io/Writer;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 587
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;-><init>(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;Ljava/io/Writer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 828
    instance-of v2, p1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    if-eqz v2, :cond_1d

    move-object v0, p1

    .line 829
    check-cast v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    .line 830
    .local v0, "that":Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget-object v3, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$Alphabet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    iget-object v3, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    .line 833
    .end local v0    # "that":Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
    :cond_1d
    return v1
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public lowerCase()Lcom/google/common/io/BaseEncoding;
    .registers 4

    .prologue
    .line 799
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->lowerCase:Lcom/google/common/io/BaseEncoding;

    .line 800
    .local v1, "result":Lcom/google/common/io/BaseEncoding;
    if-nez v1, :cond_11

    .line 801
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {v2}, Lcom/google/common/io/BaseEncoding$Alphabet;->lowerCase()Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v0

    .line 802
    .local v0, "lower":Lcom/google/common/io/BaseEncoding$Alphabet;
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    if-ne v0, v2, :cond_12

    move-object v1, p0

    .end local v1    # "result":Lcom/google/common/io/BaseEncoding;
    :goto_f
    iput-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->lowerCase:Lcom/google/common/io/BaseEncoding;

    .line 805
    .end local v0    # "lower":Lcom/google/common/io/BaseEncoding$Alphabet;
    .restart local v1    # "result":Lcom/google/common/io/BaseEncoding;
    :cond_11
    return-object v1

    .line 802
    .restart local v0    # "lower":Lcom/google/common/io/BaseEncoding$Alphabet;
    :cond_12
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-virtual {p0, v0, v2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    goto :goto_f
.end method

.method maxDecodedSize(I)I
    .registers 6
    .param p1, "chars"    # I

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method maxEncodedSize(I)I
    .registers 5
    .param p1, "bytes"    # I

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v1, v2}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;
    .registers 4
    .param p1, "alphabet"    # Lcom/google/common/io/BaseEncoding$Alphabet;
    .param p2, "paddingChar"    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 809
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    return-object v0
.end method

.method public omitPadding()Lcom/google/common/io/BaseEncoding;
    .registers 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-nez v0, :cond_5

    .end local p0    # "this":Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
    :goto_4
    return-object p0

    .restart local p0    # "this":Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
    :cond_5
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object p0

    goto :goto_4
.end method

.method padding()Lcom/google/common/base/CharMatcher;
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 815
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {v1}, Lcom/google/common/io/BaseEncoding$Alphabet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v2, v2, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_22

    .line 817
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-nez v1, :cond_27

    .line 818
    const-string v1, ".omitPadding()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_22
    :goto_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 820
    :cond_27
    const-string v1, ".withPadChar(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22
.end method

.method public upperCase()Lcom/google/common/io/BaseEncoding;
    .registers 4

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->upperCase:Lcom/google/common/io/BaseEncoding;

    .line 789
    .local v0, "result":Lcom/google/common/io/BaseEncoding;
    if-nez v0, :cond_11

    .line 790
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {v2}, Lcom/google/common/io/BaseEncoding$Alphabet;->upperCase()Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v1

    .line 791
    .local v1, "upper":Lcom/google/common/io/BaseEncoding$Alphabet;
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    if-ne v1, v2, :cond_12

    move-object v0, p0

    .end local v0    # "result":Lcom/google/common/io/BaseEncoding;
    :goto_f
    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->upperCase:Lcom/google/common/io/BaseEncoding;

    .line 794
    .end local v1    # "upper":Lcom/google/common/io/BaseEncoding$Alphabet;
    .restart local v0    # "result":Lcom/google/common/io/BaseEncoding;
    :cond_11
    return-object v0

    .line 791
    .restart local v1    # "upper":Lcom/google/common/io/BaseEncoding$Alphabet;
    :cond_12
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-virtual {p0, v1, v2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    goto :goto_f
.end method

.method public withPadChar(C)Lcom/google/common/io/BaseEncoding;
    .registers 4
    .param p1, "padChar"    # C

    .prologue
    .line 766
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-ne v0, p1, :cond_16

    .line 770
    .end local p0    # "this":Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
    :cond_15
    :goto_15
    return-object p0

    .restart local p0    # "this":Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
    :cond_16
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    move-result-object p0

    goto :goto_15
.end method

.method public withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
    .registers 5
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "afterEveryChars"    # I

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->padding()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Separator (%s) cannot contain alphabet or padding characters"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 780
    new-instance v0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding;Ljava/lang/String;I)V

    return-object v0
.end method
