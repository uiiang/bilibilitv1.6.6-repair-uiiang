.class public final Lorg/jsoup/internal/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/internal/StringUtil$StringJoiner;
    }
.end annotation


# static fields
.field private static final MaxCachedBuilderSize:I = 0x2000

.field private static final MaxIdleBuilders:I = 0x8

.field private static final extraDotSegmentsPattern:Ljava/util/regex/Pattern;

.field private static final maxPaddingWidth:I = 0x1e

.field static final padding:[Ljava/lang/String;

.field private static final threadLocalBuilders:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final validUriScheme:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 20
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "   "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "     "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "      "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "       "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "        "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "         "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "          "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "           "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "            "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "             "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "              "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "               "

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "                "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "                 "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "                  "

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "                   "

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "                    "

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    .line 263
    const-string v0, "^/((\\.{1,2}/)+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->extraDotSegmentsPattern:Ljava/util/regex/Pattern;

    .line 307
    const-string v0, "^[a-zA-Z][a-zA-Z0-9+-.]*:"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->validUriScheme:Ljava/util/regex/Pattern;

    .line 309
    new-instance v0, Lorg/jsoup/internal/StringUtil$1;

    invoke-direct {v0}, Lorg/jsoup/internal/StringUtil$1;-><init>()V

    sput-object v0, Lorg/jsoup/internal/StringUtil;->threadLocalBuilders:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 9
    .param p0, "accum"    # Ljava/lang/StringBuilder;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "stripLeading"    # Z

    .prologue
    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "lastWasWhite":Z
    const/4 v4, 0x0

    .line 216
    .local v4, "reachedNonWhite":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 218
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v3, :cond_32

    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 220
    .local v0, "c":I
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isActuallyWhitespace(I)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 221
    if-eqz p2, :cond_17

    if-eqz v4, :cond_19

    :cond_17
    if-eqz v2, :cond_1f

    .line 218
    :cond_19
    :goto_19
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_7

    .line 223
    :cond_1f
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    const/4 v2, 0x1

    goto :goto_19

    .line 226
    :cond_26
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isInvisibleChar(I)Z

    move-result v5

    if-nez v5, :cond_19

    .line 227
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 228
    const/4 v2, 0x0

    .line 229
    const/4 v4, 0x1

    goto :goto_19

    .line 232
    .end local v0    # "c":I
    :cond_32
    return-void
.end method

.method public static borrowBuilder()Ljava/lang/StringBuilder;
    .registers 3

    .prologue
    .line 324
    sget-object v1, Lorg/jsoup/internal/StringUtil;->threadLocalBuilders:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 325
    .local v0, "builders":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/StringBuilder;>;"
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 325
    :goto_15
    return-object v1

    .line 327
    :cond_16
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    goto :goto_15
.end method

.method public static varargs in(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .param p0, "needle"    # Ljava/lang/String;
    .param p1, "haystack"    # [Ljava/lang/String;

    .prologue
    .line 235
    array-length v1, p1

    .line 236
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_11

    .line 237
    aget-object v2, p1, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 238
    const/4 v2, 0x1

    .line 240
    :goto_d
    return v2

    .line 236
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 240
    :cond_11
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static inSorted(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 3
    .param p0, "needle"    # Ljava/lang/String;
    .param p1, "haystack"    # [Ljava/lang/String;

    .prologue
    .line 244
    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isActuallyWhitespace(I)Z
    .registers 2
    .param p0, "c"    # I

    .prologue
    .line 185
    const/16 v0, 0x20

    if-eq p0, v0, :cond_18

    const/16 v0, 0x9

    if-eq p0, v0, :cond_18

    const/16 v0, 0xa

    if-eq p0, v0, :cond_18

    const/16 v0, 0xc

    if-eq p0, v0, :cond_18

    const/16 v0, 0xd

    if-eq p0, v0, :cond_18

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isAscii(Ljava/lang/String;)Z
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 255
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 256
    .local v0, "c":I
    const/16 v2, 0x7f

    if-le v0, v2, :cond_14

    .line 257
    const/4 v2, 0x0

    .line 260
    .end local v0    # "c":I
    :goto_13
    return v2

    .line 254
    .restart local v0    # "c":I
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 260
    .end local v0    # "c":I
    :cond_17
    const/4 v2, 0x1

    goto :goto_13
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 141
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 149
    :cond_9
    :goto_9
    return v2

    .line 144
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 145
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_9

    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 147
    const/4 v2, 0x0

    goto :goto_9

    .line 145
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public static isInvisibleChar(I)Z
    .registers 2
    .param p0, "c"    # I

    .prologue
    .line 190
    const/16 v0, 0x200b

    if-eq p0, v0, :cond_8

    const/16 v0, 0xad

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 158
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 166
    :cond_9
    :goto_9
    return v2

    .line 161
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 162
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_1e

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 166
    :cond_1e
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public static isWhitespace(I)Z
    .registers 2
    .param p0, "c"    # I

    .prologue
    .line 176
    const/16 v0, 0x20

    if-eq p0, v0, :cond_14

    const/16 v0, 0x9

    if-eq p0, v0, :cond_14

    const/16 v0, 0xa

    if-eq p0, v0, :cond_14

    const/16 v0, 0xc

    if-eq p0, v0, :cond_14

    const/16 v0, 0xd

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "sep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "strings":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "sep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "strings":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 43
    const-string v1, ""

    .line 54
    :cond_8
    :goto_8
    return-object v1

    .line 45
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "start":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 49
    new-instance v0, Lorg/jsoup/internal/StringUtil$StringJoiner;

    invoke-direct {v0, p1}, Lorg/jsoup/internal/StringUtil$StringJoiner;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "j":Lorg/jsoup/internal/StringUtil$StringJoiner;
    invoke-virtual {v0, v1}, Lorg/jsoup/internal/StringUtil$StringJoiner;->add(Ljava/lang/Object;)Lorg/jsoup/internal/StringUtil$StringJoiner;

    .line 51
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jsoup/internal/StringUtil$StringJoiner;->add(Ljava/lang/Object;)Lorg/jsoup/internal/StringUtil$StringJoiner;

    goto :goto_1f

    .line 54
    :cond_2d
    invoke-virtual {v0}, Lorg/jsoup/internal/StringUtil$StringJoiner;->complete()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "strings"    # [Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/jsoup/internal/StringUtil;->appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 203
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static padding(I)Ljava/lang/String;
    .registers 5
    .param p0, "width"    # I

    .prologue
    .line 123
    if-gez p0, :cond_a

    .line 124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "width must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_a
    sget-object v2, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    array-length v2, v2

    if-ge p0, v2, :cond_14

    .line 127
    sget-object v2, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    aget-object v2, v2, p0

    .line 132
    :goto_13
    return-object v2

    .line 128
    :cond_14
    const/16 v2, 0x1e

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 129
    new-array v1, p0, [C

    .line 130
    .local v1, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    if-ge v0, p0, :cond_26

    .line 131
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 132
    :cond_26
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    goto :goto_13
.end method

.method public static releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v3, 0x2000

    .line 337
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 338
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v3, :cond_2b

    .line 341
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 345
    .restart local p0    # "sb":Ljava/lang/StringBuilder;
    :goto_14
    sget-object v2, Lorg/jsoup/internal/StringUtil;->threadLocalBuilders:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 346
    .local v0, "builders":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/StringBuilder;>;"
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :goto_1f
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_34

    .line 349
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1f

    .line 343
    .end local v0    # "builders":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/StringBuilder;>;"
    :cond_2b
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 351
    .restart local v0    # "builders":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/StringBuilder;>;"
    :cond_34
    return-object v1
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "relUrl"    # Ljava/lang/String;

    .prologue
    .line 294
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_e

    .line 300
    .local v1, "base":Ljava/net/URL;
    :try_start_5
    invoke-static {v1, p1}, Lorg/jsoup/internal/StringUtil;->resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    .line 304
    .end local v1    # "base":Ljava/net/URL;
    .end local p1    # "relUrl":Ljava/lang/String;
    :cond_d
    :goto_d
    return-object p1

    .line 295
    .restart local p1    # "relUrl":Ljava/lang/String;
    :catch_e
    move-exception v2

    .line 297
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "abs":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_17
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_17} :catch_19

    move-result-object p1

    goto :goto_d

    .line 301
    .end local v0    # "abs":Ljava/net/URL;
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_19
    move-exception v2

    .line 304
    .restart local v2    # "e":Ljava/net/MalformedURLException;
    sget-object v3, Lorg/jsoup/internal/StringUtil;->validUriScheme:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_d

    const-string p1, ""

    goto :goto_d
.end method

.method public static resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 8
    .param p0, "base"    # Ljava/net/URL;
    .param p1, "relUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 273
    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    :cond_1d
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 277
    .local v1, "url":Ljava/net/URL;
    sget-object v2, Lorg/jsoup/internal/StringUtil;->extraDotSegmentsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "fixedFile":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_53
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-direct {v2, v3, v4, v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v2
.end method
