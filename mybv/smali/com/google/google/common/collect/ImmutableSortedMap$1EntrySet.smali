.class Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;
.super Lcom/google/common/collect/ImmutableMapEntrySet;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSortedMap;->createEntrySet()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMapEntrySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableSortedMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .registers 2

    .prologue
    .line 553
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lcom/google/common/collect/ImmutableSortedMap.1EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lcom/google/common/collect/ImmutableSortedMap.1EntrySet;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;-><init>(Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;)V

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 556
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lcom/google/common/collect/ImmutableSortedMap.1EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 552
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lcom/google/common/collect/ImmutableSortedMap.1EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lcom/google/common/collect/ImmutableSortedMap.1EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method
