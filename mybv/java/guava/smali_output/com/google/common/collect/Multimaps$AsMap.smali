.class final Lcom/google/common/collect/Multimaps$AsMap;
.super Lcom/google/common/collect/Maps$ViewCachingAbstractMap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$AsMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$ViewCachingAbstractMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private final multimap:Lcom/google/common/collect/Multimap;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1732
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    .local p1, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;-><init>()V

    .line 1733
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multimap;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->multimap:Lcom/google/common/collect/Multimap;

    .line 1734
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/Multimaps$AsMap;)Lcom/google/common/collect/Multimap;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/Multimaps$AsMap;

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->multimap:Lcom/google/common/collect/Multimap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1808
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 1809
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1803
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createEntrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1743
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;-><init>(Lcom/google/common/collect/Multimaps$AsMap;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1729
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1783
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1798
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->isEmpty()Z

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
    .line 1793
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1729
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1788
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method removeValuesForKey(Ljava/lang/Object;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1747
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1748
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1738
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
