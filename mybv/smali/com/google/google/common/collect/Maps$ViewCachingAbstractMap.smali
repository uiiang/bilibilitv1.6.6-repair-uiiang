.class abstract Lcom/google/common/collect/Maps$ViewCachingAbstractMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ViewCachingAbstractMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
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

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3419
    .local p0, "this":Lcom/google/common/collect/Maps$ViewCachingAbstractMap;, "Lcom/google/common/collect/Maps$ViewCachingAbstractMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method abstract createEntrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method createKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3444
    .local p0, "this":Lcom/google/common/collect/Maps$ViewCachingAbstractMap;, "Lcom/google/common/collect/Maps$ViewCachingAbstractMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3456
    .local p0, "this":Lcom/google/common/collect/Maps$ViewCachingAbstractMap;, "Lcom/google/common/collect/Maps$ViewCachingAbstractMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
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
    .line 3431
    .local p0, "this":Lcom/google/common/collect/Maps$ViewCachingAbstractMap;, "Lcom/google/common/collect/Maps$ViewCachingAbstractMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->entrySet:Ljava/util/Set;

    .line 3432
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->entrySet:Ljava/util/Set;

    :cond_a
    return-object v0
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
    .line 3439
    .local p0, "this":Lcom/google/common/collect/Maps$ViewCachingAbstractMap;, "Lcom/google/common/collect/Maps$ViewCachingAbstractMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->keySet:Ljava/util/Set;

    .line 3440
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iput-object v0, p0, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->keySet:Ljava/util/Set;

    :cond_a
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
    .line 3451
    .local p0, "this":Lcom/google/common/collect/Maps$ViewCachingAbstractMap;, "Lcom/google/common/collect/Maps$ViewCachingAbstractMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->values:Ljava/util/Collection;

    .line 3452
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->createValues()Ljava/util/Collection;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iput-object v0, p0, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->values:Ljava/util/Collection;

    :cond_a
    return-object v0
.end method
