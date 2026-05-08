.class public final Lcom/google/common/net/PercentEscaper;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "PercentEscaper.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final PLUS_SIGN:[C

.field private static final UPPER_HEX_DIGITS:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/common/net/PercentEscaper;->PLUS_SIGN:[C

    .line 59
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "safeChars"    # Ljava/lang/String;
    .param p2, "plusForSpace"    # Z

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    if-eqz p2, :cond_3b

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_3b
    iput-boolean p2, p0, Lcom/google/common/net/PercentEscaper;->plusForSpace:Z

    .line 103
    invoke-static {p1}, Lcom/google/common/net/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    .line 104
    return-void
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .registers 9
    .param p0, "safeChars"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v4, -0x1

    .line 113
    .local v4, "maxChar":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 114
    .local v6, "safeCharArray":[C
    move-object v0, v6

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_13

    aget-char v1, v0, v2

    .line 115
    .local v1, "c":C
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 117
    .end local v1    # "c":C
    :cond_13
    add-int/lit8 v7, v4, 0x1

    new-array v5, v7, [Z

    .line 118
    .local v5, "octets":[Z
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v3, :cond_24

    aget-char v1, v0, v2

    .line 119
    .restart local v1    # "c":C
    const/4 v7, 0x1

    aput-boolean v7, v5, v1

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 121
    .end local v1    # "c":C
    :cond_24
    return-object v5
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 148
    .local v2, "slen":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_8
    if-ge v1, v2, :cond_1d

    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 150
    .local v0, "c":C
    iget-object v3, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_19

    iget-object v3, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_1e

    .line 151
    :cond_19
    invoke-virtual {p0, p1, v1}, Lcom/google/common/net/PercentEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 154
    .end local v0    # "c":C
    .end local p1    # "s":Ljava/lang/String;
    :cond_1d
    return-object p1

    .line 148
    .restart local v0    # "c":C
    .restart local p1    # "s":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method protected escape(I)[C
    .registers 9
    .param p1, "cp"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x25

    .line 164
    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_13

    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_13

    .line 165
    const/4 v0, 0x0

    .line 230
    :goto_12
    return-object v0

    .line 166
    :cond_13
    const/16 v1, 0x20

    if-ne p1, v1, :cond_1e

    iget-boolean v1, p0, Lcom/google/common/net/PercentEscaper;->plusForSpace:Z

    if-eqz v1, :cond_1e

    .line 167
    sget-object v0, Lcom/google/common/net/PercentEscaper;->PLUS_SIGN:[C

    goto :goto_12

    .line 168
    :cond_1e
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_37

    .line 171
    new-array v0, v6, [C

    .line 172
    .local v0, "dest":[C
    aput-char v2, v0, v3

    .line 173
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 174
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    ushr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    goto :goto_12

    .line 176
    .end local v0    # "dest":[C
    :cond_37
    const/16 v1, 0x7ff

    if-gt p1, v1, :cond_6d

    .line 179
    const/4 v1, 0x6

    new-array v0, v1, [C

    .line 180
    .restart local v0    # "dest":[C
    aput-char v2, v0, v3

    .line 181
    aput-char v2, v0, v6

    .line 182
    const/4 v1, 0x5

    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 183
    ushr-int/lit8 p1, p1, 0x4

    .line 184
    const/4 v1, 0x4

    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 185
    ushr-int/lit8 p1, p1, 0x2

    .line 186
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 187
    ushr-int/lit8 p1, p1, 0x4

    .line 188
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    or-int/lit8 v2, p1, 0xc

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    goto :goto_12

    .line 190
    .end local v0    # "dest":[C
    :cond_6d
    const v1, 0xffff

    if-gt p1, v1, :cond_ba

    .line 193
    const/16 v1, 0x9

    new-array v0, v1, [C

    .line 194
    .restart local v0    # "dest":[C
    aput-char v2, v0, v3

    .line 195
    const/16 v1, 0x45

    aput-char v1, v0, v4

    .line 196
    aput-char v2, v0, v6

    .line 197
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 198
    const/16 v1, 0x8

    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 199
    ushr-int/lit8 p1, p1, 0x4

    .line 200
    const/4 v1, 0x7

    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 201
    ushr-int/lit8 p1, p1, 0x2

    .line 202
    const/4 v1, 0x5

    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 203
    ushr-int/lit8 p1, p1, 0x4

    .line 204
    const/4 v1, 0x4

    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 205
    ushr-int/lit8 p1, p1, 0x2

    .line 206
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    aget-char v1, v1, p1

    aput-char v1, v0, v5

    goto/16 :goto_12

    .line 208
    .end local v0    # "dest":[C
    :cond_ba
    const v1, 0x10ffff

    if-gt p1, v1, :cond_127

    .line 209
    const/16 v1, 0xc

    new-array v0, v1, [C

    .line 212
    .restart local v0    # "dest":[C
    aput-char v2, v0, v3

    .line 213
    const/16 v1, 0x46

    aput-char v1, v0, v4

    .line 214
    aput-char v2, v0, v6

    .line 215
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 216
    const/16 v1, 0x9

    aput-char v2, v0, v1

    .line 217
    const/16 v1, 0xb

    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 218
    ushr-int/lit8 p1, p1, 0x4

    .line 219
    const/16 v1, 0xa

    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 220
    ushr-int/lit8 p1, p1, 0x2

    .line 221
    const/16 v1, 0x8

    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 222
    ushr-int/lit8 p1, p1, 0x4

    .line 223
    const/4 v1, 0x7

    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 224
    ushr-int/lit8 p1, p1, 0x2

    .line 225
    const/4 v1, 0x5

    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 226
    ushr-int/lit8 p1, p1, 0x4

    .line 227
    const/4 v1, 0x4

    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 228
    ushr-int/lit8 p1, p1, 0x2

    .line 229
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    goto/16 :goto_12

    .line 233
    .end local v0    # "dest":[C
    :cond_127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid unicode character value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "end"    # I

    .prologue
    .line 130
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_3
    if-ge p2, p3, :cond_14

    .line 132
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 133
    .local v0, "c":C
    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_15

    .line 137
    .end local v0    # "c":C
    :cond_14
    return p2

    .line 131
    .restart local v0    # "c":C
    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_3
.end method
