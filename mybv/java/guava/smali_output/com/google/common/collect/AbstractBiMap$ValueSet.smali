.class Lcom/google/common/collect/AbstractBiMap$ValueSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractBiMap;

.field final valuesDelegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .registers 3

    .prologue
    .line 253
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$ValueSet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.ValueSet;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 254
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->valuesDelegate:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/AbstractBiMap;
    .param p2, "x1"    # Lcom/google/common/collect/AbstractBiMap$1;

    .prologue
    .line 253
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$ValueSet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.ValueSet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap$ValueSet;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 252
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$ValueSet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.ValueSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$ValueSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 252
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$ValueSet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.ValueSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$ValueSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$ValueSet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.ValueSet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->valuesDelegate:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$ValueSet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.ValueSet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 268
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$ValueSet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.ValueSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$ValueSet;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$ValueSet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.ValueSet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap$ValueSet;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$ValueSet;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.ValueSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$ValueSet;->standardToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
