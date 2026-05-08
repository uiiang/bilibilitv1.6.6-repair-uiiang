.class public final Lcom/google/common/base/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodedLength(Ljava/lang/CharSequence;)I
    .registers 11
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 52
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 53
    .local v2, "utf16Length":I
    move v3, v2

    .line 54
    .local v3, "utf8Length":I
    const/4 v1, 0x0

    .line 57
    .local v1, "i":I
    :goto_6
    if-ge v1, v2, :cond_13

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_13

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 62
    :cond_13
    :goto_13
    if-ge v1, v2, :cond_2a

    .line 63
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 64
    .local v0, "c":C
    const/16 v4, 0x800

    if-ge v0, v4, :cond_25

    .line 65
    rsub-int/lit8 v4, v0, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 67
    :cond_25
    invoke-static {p0, v1}, Lcom/google/common/base/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/2addr v3, v4

    .line 72
    .end local v0    # "c":C
    :cond_2a
    if-ge v3, v2, :cond_4c

    .line 74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UTF-8 length does not fit in int: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v3

    const-wide v8, 0x100000000L

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_4c
    return v3
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 8
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .prologue
    .line 81
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 82
    .local v2, "utf16Length":I
    const/4 v3, 0x0

    .line 83
    .local v3, "utf8Length":I
    move v1, p1

    .local v1, "i":I
    :goto_6
    if-ge v1, v2, :cond_37

    .line 84
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 85
    .local v0, "c":C
    const/16 v4, 0x800

    if-ge v0, v4, :cond_18

    .line 86
    rsub-int/lit8 v4, v0, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    .line 83
    :cond_15
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 88
    :cond_18
    add-int/lit8 v3, v3, 0x2

    .line 90
    const v4, 0xd800

    if-gt v4, v0, :cond_15

    const v4, 0xdfff

    if-gt v0, v4, :cond_15

    .line 92
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ne v4, v0, :cond_34

    .line 93
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Lcom/google/common/base/Utf8;->unpairedSurrogateMsg(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 99
    .end local v0    # "c":C
    :cond_37
    return v3
.end method

.method public static isWellFormed([B)Z
    .registers 3
    .param p0, "bytes"    # [B

    .prologue
    .line 113
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/base/Utf8;->isWellFormed([BII)Z

    move-result v0

    return v0
.end method

.method public static isWellFormed([BII)Z
    .registers 6
    .param p0, "bytes"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 126
    add-int v0, p1, p2

    .line 127
    .local v0, "end":I
    array-length v2, p0

    invoke-static {p1, v0, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 129
    move v1, p1

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 130
    aget-byte v2, p0, v1

    if-gez v2, :cond_12

    .line 131
    invoke-static {p0, v1, v0}, Lcom/google/common/base/Utf8;->isWellFormedSlowPath([BII)Z

    move-result v2

    .line 134
    :goto_11
    return v2

    .line 129
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 134
    :cond_15
    const/4 v2, 0x1

    goto :goto_11
.end method

.method private static isWellFormedSlowPath([BII)Z
    .registers 13
    .param p0, "bytes"    # [B
    .param p1, "off"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v9, -0x20

    const/16 v8, -0x60

    const/4 v4, 0x0

    const/16 v7, -0x41

    .line 138
    move v2, p1

    .local v2, "index":I
    move v3, v2

    .line 144
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_9
    if-lt v3, p2, :cond_e

    .line 145
    const/4 v4, 0x1

    move v2, v3

    .line 190
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_d
    :goto_d
    return v4

    .line 147
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_e
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-byte v0, p0, v3

    .local v0, "byte1":I
    if-gez v0, :cond_65

    .line 149
    if-ge v0, v9, :cond_24

    .line 151
    if-eq v2, p2, :cond_d

    .line 156
    const/16 v5, -0x3e

    if-lt v0, v5, :cond_d

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-byte v5, p0, v2

    if-le v5, v7, :cond_63

    :cond_22
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_d

    .line 159
    :cond_24
    const/16 v5, -0x10

    if-ge v0, v5, :cond_44

    .line 161
    add-int/lit8 v5, v2, 0x1

    if-ge v5, p2, :cond_d

    .line 164
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-byte v1, p0, v2

    .line 165
    .local v1, "byte2":I
    if-gt v1, v7, :cond_22

    if-ne v0, v9, :cond_36

    if-lt v1, v8, :cond_22

    :cond_36
    const/16 v5, -0x13

    if-ne v0, v5, :cond_3c

    if-le v8, v1, :cond_22

    :cond_3c
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p0, v3

    if-gt v5, v7, :cond_d

    .end local v1    # "byte2":I
    :goto_42
    move v3, v2

    .line 193
    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_9

    .line 176
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_44
    add-int/lit8 v5, v2, 0x2

    if-ge v5, p2, :cond_d

    .line 179
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-byte v1, p0, v2

    .line 180
    .restart local v1    # "byte2":I
    if-gt v1, v7, :cond_22

    shl-int/lit8 v5, v0, 0x1c

    add-int/lit8 v6, v1, 0x70

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_22

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p0, v3

    if-gt v5, v7, :cond_d

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-byte v5, p0, v2

    if-gt v5, v7, :cond_22

    .end local v1    # "byte2":I
    :cond_63
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_42

    :cond_65
    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_9
.end method

.method private static unpairedSurrogateMsg(I)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
