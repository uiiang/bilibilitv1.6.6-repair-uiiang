.class abstract Lcom/google/common/collect/Multisets$EntrySet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 988
    .local p0, "this":Lcom/google/common/collect/Multisets$EntrySet;, "Lcom/google/common/collect/Multisets$EntrySet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1028
    .local p0, "this":Lcom/google/common/collect/Multisets$EntrySet;, "Lcom/google/common/collect/Multisets$EntrySet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$EntrySet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->clear()V

    .line 1029
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/Multisets$EntrySet;, "Lcom/google/common/collect/Multisets$EntrySet<TE;>;"
    const/4 v2, 0x0

    .line 993
    instance-of v3, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v3, :cond_e

    move-object v1, p1

    .line 998
    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 999
    .local v1, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-gtz v3, :cond_f

    .line 1005
    .end local v1    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_e
    :goto_e
    return v2

    .line 1002
    .restart local v1    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_f
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$EntrySet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 1003
    .local v0, "count":I
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_e

    const/4 v2, 0x1

    goto :goto_e
.end method

.method abstract multiset()Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/Multisets$EntrySet;, "Lcom/google/common/collect/Multisets$EntrySet<TE;>;"
    const/4 v4, 0x0

    .line 1012
    instance-of v5, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v5, :cond_1a

    move-object v1, p1

    .line 1013
    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 1014
    .local v1, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 1015
    .local v0, "element":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    .line 1016
    .local v2, "entryCount":I
    if-eqz v2, :cond_1a

    .line 1019
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$EntrySet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v3

    .line 1020
    .local v3, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<Ljava/lang/Object;>;"
    invoke-interface {v3, v0, v2, v4}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v4

    .line 1023
    .end local v0    # "element":Ljava/lang/Object;
    .end local v1    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v2    # "entryCount":I
    .end local v3    # "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<Ljava/lang/Object;>;"
    :cond_1a
    return v4
.end method
