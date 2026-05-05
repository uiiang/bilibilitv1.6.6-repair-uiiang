.class public abstract Lcom/google/common/escape/UnicodeEscaper;
.super Lcom/google/common/escape/Escaper;
.source "UnicodeEscaper.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final DEST_PAD:I = 0x20


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/common/escape/Escaper;-><init>()V

    return-void
.end method

.method protected static codePointAt(Ljava/lang/CharSequence;II)I
    .registers 9
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "end"    # I

    .prologue
    .line 246
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    if-ge p1, p2, :cond_aa

    .line 248
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 249
    .local v0, "c1":C
    const v3, 0xd800

    if-lt v0, v3, :cond_15

    const v3, 0xdfff

    if-le v0, v3, :cond_16

    .line 260
    .end local v0    # "c1":C
    :cond_15
    :goto_15
    return v0

    .line 252
    .restart local v0    # "c1":C
    :cond_16
    const v3, 0xdbff

    if-gt v0, v3, :cond_6b

    .line 254
    if-ne v2, p2, :cond_1f

    .line 255
    neg-int v0, v0

    goto :goto_15

    .line 258
    :cond_1f
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 259
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 260
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_15

    .line 262
    :cond_2e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected low surrogate but got char \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 273
    .end local v1    # "c2":C
    :cond_6b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected low surrogate character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 285
    .end local v0    # "c1":C
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :cond_aa
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "Index exceeds specified range"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static growBuffer([CII)[C
    .registers 5
    .param p0, "dest"    # [C
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 293
    new-array v0, p2, [C

    .line 294
    .local v0, "copy":[C
    if-lez p1, :cond_8

    .line 295
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    :cond_8
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 139
    .local v0, "end":I
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/common/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 140
    .local v1, "index":I
    if-ne v1, v0, :cond_f

    .end local p1    # "string":Ljava/lang/String;
    :goto_e
    return-object p1

    .restart local p1    # "string":Ljava/lang/String;
    :cond_f
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_e
.end method

.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .registers 16
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 162
    .local v5, "end":I
    invoke-static {}, Lcom/google/common/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v2

    .line 163
    .local v2, "dest":[C
    const/4 v3, 0x0

    .line 164
    .local v3, "destIndex":I
    const/4 v10, 0x0

    .line 166
    .local v10, "unescapedChunkStart":I
    :goto_a
    if-ge p2, v5, :cond_54

    .line 167
    invoke-static {p1, p2, v5}, Lcom/google/common/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 168
    .local v1, "cp":I
    if-gez v1, :cond_1a

    .line 169
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Trailing high surrogate at end of input"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 174
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v7

    .line 175
    .local v7, "escaped":[C
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v11

    if-eqz v11, :cond_52

    const/4 v11, 0x2

    :goto_25
    add-int v8, p2, v11

    .line 176
    .local v8, "nextIndex":I
    if-eqz v7, :cond_4d

    .line 177
    sub-int v0, p2, v10

    .line 181
    .local v0, "charsSkipped":I
    add-int v11, v3, v0

    array-length v12, v7

    add-int v9, v11, v12

    .line 182
    .local v9, "sizeNeeded":I
    array-length v11, v2

    if-ge v11, v9, :cond_3c

    .line 183
    sub-int v11, v5, p2

    add-int/2addr v11, v9

    add-int/lit8 v4, v11, 0x20

    .line 184
    .local v4, "destLength":I
    invoke-static {v2, v3, v4}, Lcom/google/common/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 187
    .end local v4    # "destLength":I
    :cond_3c
    if-lez v0, :cond_42

    .line 188
    invoke-virtual {p1, v10, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 189
    add-int/2addr v3, v0

    .line 191
    :cond_42
    array-length v11, v7

    if-lez v11, :cond_4c

    .line 192
    const/4 v11, 0x0

    array-length v12, v7

    invoke-static {v7, v11, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    array-length v11, v7

    add-int/2addr v3, v11

    .line 196
    :cond_4c
    move v10, v8

    .line 198
    .end local v0    # "charsSkipped":I
    .end local v9    # "sizeNeeded":I
    :cond_4d
    invoke-virtual {p0, p1, v8, v5}, Lcom/google/common/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 199
    goto :goto_a

    .line 175
    .end local v8    # "nextIndex":I
    :cond_52
    const/4 v11, 0x1

    goto :goto_25

    .line 203
    .end local v1    # "cp":I
    .end local v7    # "escaped":[C
    :cond_54
    sub-int v0, v5, v10

    .line 204
    .restart local v0    # "charsSkipped":I
    if-lez v0, :cond_65

    .line 205
    add-int v6, v3, v0

    .line 206
    .local v6, "endIndex":I
    array-length v11, v2

    if-ge v11, v6, :cond_61

    .line 207
    invoke-static {v2, v3, v6}, Lcom/google/common/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 209
    :cond_61
    invoke-virtual {p1, v10, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 210
    move v3, v6

    .line 212
    .end local v6    # "endIndex":I
    :cond_65
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v2, v12, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v11
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .registers 7
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 106
    move v1, p2

    .line 107
    .local v1, "index":I
    :goto_1
    if-ge v1, p3, :cond_f

    .line 108
    invoke-static {p1, v1, p3}, Lcom/google/common/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 109
    .local v0, "cp":I
    if-ltz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v2

    if-eqz v2, :cond_10

    .line 114
    .end local v0    # "cp":I
    :cond_f
    return v1

    .line 112
    .restart local v0    # "cp":I
    :cond_10
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x2

    :goto_17
    add-int/2addr v1, v2

    .line 113
    goto :goto_1

    .line 112
    :cond_19
    const/4 v2, 0x1

    goto :goto_17
.end method
