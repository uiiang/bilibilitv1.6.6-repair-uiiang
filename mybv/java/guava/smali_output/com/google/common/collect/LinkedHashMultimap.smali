.class public final Lcom/google/common/collect/LinkedHashMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "LinkedHashMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,
        Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,
        Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_KEY_CAPACITY:I = 0x10

.field private static final DEFAULT_VALUE_SET_CAPACITY:I = 0x2

.field static final VALUE_SET_LOAD_FACTOR:D = 1.0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field


# instance fields
.field private transient multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient valueSetCapacity:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(II)V
    .registers 6
    .param p1, "keyCapacity"    # I
    .param p2, "valueSetCapacity"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    const/4 v2, 0x0

    .line 227
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 223
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    .line 228
    const-string v0, "expectedValuesPerKey"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 230
    iput p2, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    .line 231
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 232
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 233
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .param p1, "x1"    # Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/LinkedHashMultimap;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .param p1, "x1"    # Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->deleteFromValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->deleteFromMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedHashMultimap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedHashMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/LinkedHashMultimap;
    .registers 5
    .param p0, "expectedKeys"    # I
    .param p1, "expectedValuesPerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/LinkedHashMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/LinkedHashMultimap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/LinkedHashMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;->create(II)Lcom/google/common/collect/LinkedHashMultimap;

    move-result-object v0

    .line 118
    .local v0, "result":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    .line 119
    return-object v0
.end method

.method private static deleteFromMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "entry":Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getPredecessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getSuccessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 148
    return-void
.end method

.method private static deleteFromValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "entry":Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;, "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    invoke-interface {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->getPredecessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 144
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    const/4 v8, 0x0

    .line 579
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 580
    new-instance v6, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    const/4 v7, 0x0

    invoke-direct {v6, v8, v8, v7, v8}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    iput-object v6, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 581
    iget-object v6, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v7, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-static {v6, v7}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 582
    const/4 v6, 0x2

    iput v6, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    .line 583
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 584
    .local v0, "distinctKeys":I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 585
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    if-ge v2, v0, :cond_30

    .line 587
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 588
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/google/common/collect/LinkedHashMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 590
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_30
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 591
    .local v1, "entries":I
    const/4 v2, 0x0

    :goto_35
    if-ge v2, v1, :cond_4b

    .line 593
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 595
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 596
    .local v5, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 591
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 598
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_4b
    invoke-virtual {p0, v4}, Lcom/google/common/collect/LinkedHashMultimap;->setMap(Ljava/util/Map;)V

    .line 599
    return-void
.end method

.method private static succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "pred":Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, "succ":Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->setSuccessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 139
    invoke-virtual {p1, p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->setPredecessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 140
    return-void
.end method

.method private static succeedsInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "pred":Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;, "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    .local p1, "succ":Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;, "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    invoke-interface {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 134
    invoke-interface {p1, p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 135
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 566
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 567
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 568
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_16

    .line 570
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_24
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 571
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 572
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 573
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_33

    .line 575
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_4e
    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 555
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->clear()V

    .line 556
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 557
    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method createCollection()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap$1;-><init>(Lcom/google/common/collect/LinkedHashMultimap;)V

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/Multiset;
    .registers 2

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Z
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/Multimap;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedHashMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .registers 2

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
