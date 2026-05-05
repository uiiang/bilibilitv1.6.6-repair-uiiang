.class final Lcom/google/common/io/BaseEncoding$Base16Encoding;
.super Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Base16Encoding"
.end annotation


# instance fields
.field final encoding:[C


# direct methods
.method private constructor <init>(Lcom/google/common/io/BaseEncoding$Alphabet;)V
    .registers 6
    .param p1, "alphabet"    # Lcom/google/common/io/BaseEncoding$Alphabet;

    .prologue
    .line 850
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    .line 843
    const/16 v1, 0x200

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/google/common/io/BaseEncoding$Base16Encoding;->encoding:[C

    .line 851
    # getter for: Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C
    invoke-static {p1}, Lcom/google/common/io/BaseEncoding$Alphabet;->access$000(Lcom/google/common/io/BaseEncoding$Alphabet;)[C

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_35

    const/4 v1, 0x1

    :goto_14
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 852
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    const/16 v1, 0x100

    if-ge v0, v1, :cond_37

    .line 853
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$Base16Encoding;->encoding:[C

    ushr-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v2}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v2

    aput-char v2, v1, v0

    .line 854
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$Base16Encoding;->encoding:[C

    or-int/lit16 v2, v0, 0x100

    and-int/lit8 v3, v0, 0xf

    invoke-virtual {p1, v3}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 851
    .end local v0    # "i":I
    :cond_35
    const/4 v1, 0x0

    goto :goto_14

    .line 856
    .restart local v0    # "i":I
    :cond_37
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alphabetChars"    # Ljava/lang/String;

    .prologue
    .line 846
    new-instance v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0}, Lcom/google/common/io/BaseEncoding$Base16Encoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;)V

    .line 847
    return-void
.end method


# virtual methods
.method decodeTo([BLjava/lang/CharSequence;)I
    .registers 10
    .param p1, "target"    # [B
    .param p2, "chars"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .prologue
    .line 871
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    .line 873
    new-instance v4, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid input length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 875
    :cond_29
    const/4 v0, 0x0

    .line 876
    .local v0, "bytesWritten":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_54

    .line 877
    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Base16Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$Base16Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v5

    or-int v2, v4, v5

    .line 878
    .local v2, "decoded":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bytesWritten":I
    .local v1, "bytesWritten":I
    int-to-byte v4, v2

    aput-byte v4, p1, v0

    .line 876
    add-int/lit8 v3, v3, 0x2

    move v0, v1

    .end local v1    # "bytesWritten":I
    .restart local v0    # "bytesWritten":I
    goto :goto_2b

    .line 880
    .end local v2    # "decoded":I
    :cond_54
    return v0
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
    .line 860
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    add-int v2, p3, p4

    array-length v3, p2

    invoke-static {p3, v2, v3}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 862
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, p4, :cond_25

    .line 863
    add-int v2, p3, v1

    aget-byte v2, p2, v2

    and-int/lit16 v0, v2, 0xff

    .line 864
    .local v0, "b":I
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Base16Encoding;->encoding:[C

    aget-char v2, v2, v0

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 865
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Base16Encoding;->encoding:[C

    or-int/lit16 v3, v0, 0x100

    aget-char v2, v2, v3

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 862
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 867
    .end local v0    # "b":I
    :cond_25
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
    .line 885
    new-instance v0, Lcom/google/common/io/BaseEncoding$Base16Encoding;

    invoke-direct {v0, p1}, Lcom/google/common/io/BaseEncoding$Base16Encoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;)V

    return-object v0
.end method
