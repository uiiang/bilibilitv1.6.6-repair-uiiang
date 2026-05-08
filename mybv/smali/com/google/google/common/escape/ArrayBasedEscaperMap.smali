.class public final Lcom/google/common/escape/ArrayBasedEscaperMap;
.super Ljava/lang/Object;
.source "ArrayBasedEscaperMap.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final EMPTY_REPLACEMENT_ARRAY:[[C


# instance fields
.field private final replacementArray:[[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 83
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[C

    sput-object v0, Lcom/google/common/escape/ArrayBasedEscaperMap;->EMPTY_REPLACEMENT_ARRAY:[[C

    return-void
.end method

.method private constructor <init>([[C)V
    .registers 2
    .param p1, "replacementArray"    # [[C

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/common/escape/ArrayBasedEscaperMap;->replacementArray:[[C

    .line 58
    return-void
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/escape/ArrayBasedEscaperMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/escape/ArrayBasedEscaperMap;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "replacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/common/escape/ArrayBasedEscaperMap;

    invoke-static {p0}, Lcom/google/common/escape/ArrayBasedEscaperMap;->createReplacementArray(Ljava/util/Map;)[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/escape/ArrayBasedEscaperMap;-><init>([[C)V

    return-object v0
.end method

.method static createReplacementArray(Ljava/util/Map;)[[C
    .registers 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;)[[C"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 72
    sget-object v3, Lcom/google/common/escape/ArrayBasedEscaperMap;->EMPTY_REPLACEMENT_ARRAY:[[C

    .line 79
    :cond_b
    return-object v3

    .line 74
    :cond_c
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 75
    .local v2, "max":C
    add-int/lit8 v4, v2, 0x1

    new-array v3, v4, [[C

    .line 76
    .local v3, "replacements":[[C
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 77
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_26
.end method


# virtual methods
.method getReplacementArray()[[C
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/common/escape/ArrayBasedEscaperMap;->replacementArray:[[C

    return-object v0
.end method
