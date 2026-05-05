.class public abstract Lcom/google/common/escape/ArrayBasedUnicodeEscaper;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "ArrayBasedUnicodeEscaper.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final replacements:[[C

.field private final replacementsLength:I

.field private final safeMax:I

.field private final safeMaxChar:C

.field private final safeMin:I

.field private final safeMinChar:C


# direct methods
.method protected constructor <init>(Lcom/google/common/escape/ArrayBasedEscaperMap;IILjava/lang/String;)V
    .registers 6
    .param p1, "escaperMap"    # Lcom/google/common/escape/ArrayBasedEscaperMap;
    .param p2, "safeMin"    # I
    .param p3, "safeMax"    # I
    .param p4, "unsafeReplacement"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    .line 100
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->getReplacementArray()[[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    .line 102
    iget-object v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    array-length v0, v0

    iput v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    .line 103
    if-ge p3, p2, :cond_17

    .line 106
    const/4 p3, -0x1

    .line 107
    const p2, 0x7fffffff

    .line 109
    :cond_17
    iput p2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMin:I

    .line 110
    iput p3, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMax:I

    .line 125
    const v0, 0xd800

    if-lt p2, v0, :cond_29

    .line 128
    const v0, 0xffff

    iput-char v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    .line 129
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    .line 136
    :goto_28
    return-void

    .line 133
    :cond_29
    int-to-char v0, p2

    iput-char v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    .line 134
    const v0, 0xd7ff

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    goto :goto_28
.end method

.method protected constructor <init>(Ljava/util/Map;IILjava/lang/String;)V
    .registers 6
    .param p2, "safeMin"    # I
    .param p3, "safeMax"    # I
    .param p4, "unsafeReplacement"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->create(Ljava/util/Map;)Lcom/google/common/escape/ArrayBasedEscaperMap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;-><init>(Lcom/google/common/escape/ArrayBasedEscaperMap;IILjava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public final escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 147
    .local v0, "c":C
    iget v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    if-ge v0, v2, :cond_18

    iget-object v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    aget-object v2, v2, v0

    if-nez v2, :cond_20

    :cond_18
    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    if-gt v0, v2, :cond_20

    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    if-ge v0, v2, :cond_25

    .line 150
    :cond_20
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 153
    .end local v0    # "c":C
    .end local p1    # "s":Ljava/lang/String;
    :cond_24
    return-object p1

    .line 145
    .restart local v0    # "c":C
    .restart local p1    # "s":Ljava/lang/String;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method protected final escape(I)[C
    .registers 4
    .param p1, "cp"    # I

    .prologue
    .line 178
    iget v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    if-ge p1, v1, :cond_b

    .line 179
    iget-object v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    aget-object v0, v1, p1

    .line 180
    .local v0, "chars":[C
    if-eqz v0, :cond_b

    .line 187
    .end local v0    # "chars":[C
    :goto_a
    return-object v0

    .line 184
    :cond_b
    iget v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMin:I

    if-lt p1, v1, :cond_15

    iget v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMax:I

    if-gt p1, v1, :cond_15

    .line 185
    const/4 v0, 0x0

    goto :goto_a

    .line 187
    :cond_15
    invoke-virtual {p0, p1}, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->escapeUnsafe(I)[C

    move-result-object v0

    goto :goto_a
.end method

.method protected abstract escapeUnsafe(I)[C
.end method

.method protected final nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "end"    # I

    .prologue
    .line 159
    :goto_0
    if-ge p2, p3, :cond_18

    .line 160
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 161
    .local v0, "c":C
    iget v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    aget-object v1, v1, v0

    if-nez v1, :cond_18

    :cond_10
    iget-char v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    if-gt v0, v1, :cond_18

    iget-char v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    if-ge v0, v1, :cond_19

    .line 168
    .end local v0    # "c":C
    :cond_18
    return p2

    .line 166
    .restart local v0    # "c":C
    :cond_19
    add-int/lit8 p2, p2, 0x1

    .line 167
    goto :goto_0
.end method
