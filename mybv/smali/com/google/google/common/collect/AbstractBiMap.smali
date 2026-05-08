.class abstract Lcom/google/common/collect/AbstractBiMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "AbstractBiMap.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractBiMap$Inverse;,
        Lcom/google/common/collect/AbstractBiMap$EntrySet;,
        Lcom/google/common/collect/AbstractBiMap$BiMapEntry;,
        Lcom/google/common/collect/AbstractBiMap$ValueSet;,
        Lcom/google/common/collect/AbstractBiMap$KeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field


# instance fields
.field private transient delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient inverse:Lcom/google/common/collect/AbstractBiMap;
    .annotation build Lcom/google/j2objc/annotations/RetainedWith;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractBiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient valueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/collect/AbstractBiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "backward":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "forward":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TV;TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    .line 65
    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lcom/google/common/collect/AbstractBiMap;
    .param p3, "x2"    # Lcom/google/common/collect/AbstractBiMap$1;

    .prologue
    .line 50
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "forward":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "backward":Ljava/util/Map;, "Ljava/util/Map<TV;TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->setDelegates(Ljava/util/Map;Ljava/util/Map;)V

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/AbstractBiMap;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Lcom/google/common/collect/AbstractBiMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->removeFromBothMaps(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "x0"    # Lcom/google/common/collect/AbstractBiMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/Object;
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractBiMap;->updateInverseMap(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/AbstractBiMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->removeFromInverseMap(Ljava/lang/Object;)V

    return-void
.end method

.method private putInBothMaps(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->checkKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p0, p2}, Lcom/google/common/collect/AbstractBiMap;->checkValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    .local v0, "containedKey":Z
    if-eqz v0, :cond_17

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 146
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :goto_16
    return-object p2

    .line 139
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    :cond_17
    if-eqz p3, :cond_2b

    .line 140
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/google/common/collect/BiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :goto_20
    iget-object v2, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 145
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/common/collect/AbstractBiMap;->updateInverseMap(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v1

    .line 146
    goto :goto_16

    .line 142
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2b
    invoke-virtual {p0, p2}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const/4 v2, 0x1

    :goto_32
    const-string v3, "value already present: %s"

    invoke-static {v2, v3, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_20

    :cond_38
    const/4 v2, 0x0

    goto :goto_32
.end method

.method private removeFromBothMaps(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractBiMap;->removeFromInverseMap(Ljava/lang/Object;)V

    .line 166
    return-object v0
.end method

.method private removeFromInverseMap(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method private updateInverseMap(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p2, "containedKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTV;TV;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_5

    .line 151
    invoke-direct {p0, p3}, Lcom/google/common/collect/AbstractBiMap;->removeFromInverseMap(Ljava/lang/Object;)V

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method


# virtual methods
.method checkKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    return-object p1
.end method

.method checkValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    return-object p1
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 184
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 185
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 186
    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 115
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
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
    .line 286
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->entrySet:Ljava/util/Set;

    .line 287
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/AbstractBiMap$EntrySet;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractBiMap$EntrySet;-><init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->entrySet:Ljava/util/Set;

    :cond_c
    return-object v0
.end method

.method entrySetIterator()Ljava/util/Iterator;
    .registers 3
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
    .line 319
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 320
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/AbstractBiMap$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractBiMap$1;-><init>(Lcom/google/common/collect/AbstractBiMap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/AbstractBiMap;->putInBothMaps(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->keySet:Ljava/util/Set;

    .line 200
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/AbstractBiMap$KeySet;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractBiMap$KeySet;-><init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->keySet:Ljava/util/Set;

    :cond_c
    return-object v0
.end method

.method makeInverse(Ljava/util/Map;)Lcom/google/common/collect/AbstractBiMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TV;TK;>;)",
            "Lcom/google/common/collect/AbstractBiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "backward":Ljava/util/Map;, "Ljava/util/Map<TV;TK;>;"
    new-instance v0, Lcom/google/common/collect/AbstractBiMap$Inverse;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/AbstractBiMap$Inverse;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/AbstractBiMap;->putInBothMaps(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 178
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/AbstractBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 180
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_20
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->removeFromBothMaps(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method setDelegates(Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "forward":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "backward":Ljava/util/Map;, "Ljava/util/Map<TV;TK;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    if-nez v0, :cond_2e

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 95
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    if-nez v0, :cond_30

    move v0, v1

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 96
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 97
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 98
    if-eq p1, p2, :cond_32

    :goto_22
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 99
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    .line 100
    invoke-virtual {p0, p2}, Lcom/google/common/collect/AbstractBiMap;->makeInverse(Ljava/util/Map;)Lcom/google/common/collect/AbstractBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    .line 101
    return-void

    :cond_2e
    move v0, v2

    .line 94
    goto :goto_7

    :cond_30
    move v0, v2

    .line 95
    goto :goto_f

    :cond_32
    move v1, v2

    .line 98
    goto :goto_22
.end method

.method setInverse(Lcom/google/common/collect/AbstractBiMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/AbstractBiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "inverse":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TV;TK;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    .line 109
    return-void
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->valueSet:Ljava/util/Set;

    .line 249
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/AbstractBiMap$ValueSet;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractBiMap$ValueSet;-><init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->valueSet:Ljava/util/Set;

    :cond_c
    return-object v0
.end method
