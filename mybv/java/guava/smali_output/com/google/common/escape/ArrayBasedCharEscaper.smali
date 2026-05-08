.class public abstract Lcom/google/common/escape/ArrayBasedCharEscaper;
.super Lcom/google/common/escape/CharEscaper;
.source "ArrayBasedCharEscaper.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final replacements:[[C

.field private final replacementsLength:I

.field private final safeMax:C

.field private final safeMin:C


# direct methods
.method protected constructor <init>(Lcom/google/common/escape/ArrayBasedEscaperMap;CC)V
    .registers 5
    .param p1, "escaperMap"    # Lcom/google/common/escape/ArrayBasedEscaperMap;
    .param p2, "safeMin"    # C
    .param p3, "safeMax"    # C

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/common/escape/CharEscaper;-><init>()V

    .line 87
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->getReplacementArray()[[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacements:[[C

    .line 89
    iget-object v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacements:[[C

    array-length v0, v0

    iput v0, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacementsLength:I

    .line 90
    if-ge p3, p2, :cond_17

    .line 93
    const/4 p3, 0x0

    .line 94
    const p2, 0xffff

    .line 96
    :cond_17
    iput-char p2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMin:C

    .line 97
    iput-char p3, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMax:C

    .line 98
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;CC)V
    .registers 5
    .param p2, "safeMin"    # C
    .param p3, "safeMax"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;CC)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->create(Ljava/util/Map;)Lcom/google/common/escape/ArrayBasedEscaperMap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/common/escape/ArrayBasedCharEscaper;-><init>(Lcom/google/common/escape/ArrayBasedEscaperMap;CC)V

    .line 70
    return-void
.end method


# virtual methods
.method public final escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    .local v0, "c":C
    iget v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacementsLength:I

    if-ge v0, v2, :cond_18

    iget-object v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacements:[[C

    aget-object v2, v2, v0

    if-nez v2, :cond_20

    :cond_18
    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMax:C

    if-gt v0, v2, :cond_20

    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMin:C

    if-ge v0, v2, :cond_25

    .line 110
    :cond_20
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/ArrayBasedCharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 113
    .end local v0    # "c":C
    .end local p1    # "s":Ljava/lang/String;
    :cond_24
    return-object p1

    .line 107
    .restart local v0    # "c":C
    .restart local p1    # "s":Ljava/lang/String;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method protected final escape(C)[C
    .registers 4
    .param p1, "c"    # C

    .prologue
    .line 123
    iget v1, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacementsLength:I

    if-ge p1, v1, :cond_b

    .line 124
    iget-object v1, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->replacements:[[C

    aget-object v0, v1, p1

    .line 125
    .local v0, "chars":[C
    if-eqz v0, :cond_b

    .line 132
    .end local v0    # "chars":[C
    :goto_a
    return-object v0

    .line 129
    :cond_b
    iget-char v1, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMin:C

    if-lt p1, v1, :cond_15

    iget-char v1, p0, Lcom/google/common/escape/ArrayBasedCharEscaper;->safeMax:C

    if-gt p1, v1, :cond_15

    .line 130
    const/4 v0, 0x0

    goto :goto_a

    .line 132
    :cond_15
    invoke-virtual {p0, p1}, Lcom/google/common/escape/ArrayBasedCharEscaper;->escapeUnsafe(C)[C

    move-result-object v0

    goto :goto_a
.end method

.method protected abstract escapeUnsafe(C)[C
.end method
