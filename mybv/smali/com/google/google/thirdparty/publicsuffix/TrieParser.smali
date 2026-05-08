.class final Lcom/google/thirdparty/publicsuffix/TrieParser;
.super Ljava/lang/Object;
.source "TrieParser.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final PREFIX_JOINER:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, ""

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/thirdparty/publicsuffix/TrieParser;->PREFIX_JOINER:Lcom/google/common/base/Joiner;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doParseTrieToBuilder(Ljava/util/List;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableMap$Builder;)I
    .registers 13
    .param p1, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "stack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/google/thirdparty/publicsuffix/PublicSuffixType;>;"
    const/16 v9, 0x3a

    const/16 v8, 0x21

    const/4 v7, 0x0

    const/16 v6, 0x3f

    const/16 v5, 0x2c

    .line 62
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 63
    .local v2, "encodedLen":I
    const/4 v3, 0x0

    .line 64
    .local v3, "idx":I
    const/4 v0, 0x0

    .line 67
    .local v0, "c":C
    :goto_f
    if-ge v3, v2, :cond_21

    .line 68
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 69
    const/16 v4, 0x26

    if-eq v0, v4, :cond_21

    if-eq v0, v6, :cond_21

    if-eq v0, v8, :cond_21

    if-eq v0, v9, :cond_21

    if-ne v0, v5, :cond_6a

    .line 74
    :cond_21
    invoke-interface {p1, v7, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcom/google/thirdparty/publicsuffix/TrieParser;->reverse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p0, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    if-eq v0, v8, :cond_34

    if-eq v0, v6, :cond_34

    if-eq v0, v9, :cond_34

    if-ne v0, v5, :cond_47

    .line 81
    :cond_34
    sget-object v4, Lcom/google/thirdparty/publicsuffix/TrieParser;->PREFIX_JOINER:Lcom/google/common/base/Joiner;

    invoke-virtual {v4, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_47

    .line 83
    invoke-static {v0}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->fromCode(C)Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 86
    .end local v1    # "domain":Ljava/lang/String;
    :cond_47
    add-int/lit8 v3, v3, 0x1

    .line 88
    if-eq v0, v6, :cond_66

    if-eq v0, v5, :cond_66

    .line 89
    :cond_4d
    if-ge v3, v2, :cond_66

    .line 91
    invoke-interface {p1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lcom/google/thirdparty/publicsuffix/TrieParser;->doParseTrieToBuilder(Ljava/util/List;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableMap$Builder;)I

    move-result v4

    add-int/2addr v3, v4

    .line 92
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_64

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_4d

    .line 94
    :cond_64
    add-int/lit8 v3, v3, 0x1

    .line 99
    :cond_66
    invoke-interface {p0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    return v3

    .line 67
    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f
.end method

.method static parseTrie(Ljava/lang/CharSequence;)Lcom/google/common/collect/ImmutableMap;
    .registers 6
    .param p0, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 38
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/google/thirdparty/publicsuffix/PublicSuffixType;>;"
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 39
    .local v1, "encodedLen":I
    const/4 v2, 0x0

    .line 40
    .local v2, "idx":I
    :goto_9
    if-ge v2, v1, :cond_19

    .line 41
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-interface {p0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/google/thirdparty/publicsuffix/TrieParser;->doParseTrieToBuilder(Ljava/util/List;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableMap$Builder;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 45
    :cond_19
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method private static reverse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
