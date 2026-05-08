.class final Lcom/google/common/io/BaseEncoding$Base64Encoding;
.super Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Base64Encoding"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V
    .registers 5
    .param p1, "alphabet"    # Lcom/google/common/io/BaseEncoding$Alphabet;
    .param p2, "paddingChar"    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 895
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    .line 896
    # getter for: Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C
    invoke-static {p1}, Lcom/google/common/io/BaseEncoding$Alphabet;->access$000(Lcom/google/common/io/BaseEncoding$Alphabet;)[C

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 897
    return-void

    .line 896
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
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
    .line 891
    new-instance v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/common/io/BaseEncoding$Base64Encoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    .line 892
    return-void
.end method


# virtual methods
.method decodeTo([BLjava/lang/CharSequence;)I
    .registers 11
    .param p1, "target"    # [B
    .param p2, "chars"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .prologue
    .line 918
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding$Base64Encoding;->padding()Lcom/google/common/base/CharMatcher;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 920
    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v5

    if-nez v5, :cond_34

    .line 921
    new-instance v5, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid input length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 923
    :cond_34
    const/4 v0, 0x0

    .line 924
    .local v0, "bytesWritten":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_9a

    .line 925
    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v5

    shl-int/lit8 v2, v5, 0x12

    .line 926
    .local v2, "chunk":I
    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v2, v5

    .line 927
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bytesWritten":I
    .local v1, "bytesWritten":I
    ushr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    .line 928
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_98

    .line 929
    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v2, v5

    .line 930
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "bytesWritten":I
    .restart local v0    # "bytesWritten":I
    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 931
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_9b

    .line 932
    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v5

    or-int/2addr v2, v5

    .line 933
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bytesWritten":I
    .restart local v1    # "bytesWritten":I
    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    :cond_98
    move v0, v1

    .end local v1    # "bytesWritten":I
    .restart local v0    # "bytesWritten":I
    goto :goto_36

    .line 937
    .end local v2    # "chunk":I
    :cond_9a
    return v0

    .end local v3    # "i":I
    .restart local v2    # "chunk":I
    .restart local v4    # "i":I
    :cond_9b
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_36
.end method

.method encodeTo(Ljava/lang/Appendable;[BII)V
    .registers 11
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
    .line 901
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    add-int v4, p3, p4

    array-length v5, p2

    invoke-static {p3, v4, v5}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 903
    move v1, p3

    .line 904
    .local v1, "i":I
    move v3, p4

    .local v3, "remaining":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_c
    const/4 v4, 0x3

    if-lt v3, v4, :cond_5c

    .line 905
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v4, p2, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 906
    .local v0, "chunk":I
    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    ushr-int/lit8 v5, v0, 0x12

    invoke-virtual {v4, v5}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v4

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 907
    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    ushr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    invoke-virtual {v4, v5}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v4

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 908
    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    ushr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    invoke-virtual {v4, v5}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v4

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 909
    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    and-int/lit8 v5, v0, 0x3f

    invoke-virtual {v4, v5}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v4

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 904
    add-int/lit8 v3, v3, -0x3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_c

    .line 911
    .end local v0    # "chunk":I
    :cond_5c
    add-int v4, p3, p4

    if-ge v2, v4, :cond_66

    .line 912
    add-int v4, p3, p4

    sub-int/2addr v4, v2

    invoke-virtual {p0, p1, p2, v2, v4}, Lcom/google/common/io/BaseEncoding$Base64Encoding;->encodeChunkTo(Ljava/lang/Appendable;[BII)V

    .line 914
    :cond_66
    return-void
.end method

.method newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;
    .registers 4
    .param p1, "alphabet"    # Lcom/google/common/io/BaseEncoding$Alphabet;
    .param p2, "paddingChar"    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 942
    new-instance v0, Lcom/google/common/io/BaseEncoding$Base64Encoding;

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$Base64Encoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    return-object v0
.end method
