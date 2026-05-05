.class Lcom/google/common/collect/HashBiMap$Inverse$1;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap$Inverse;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$Inverse;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse;)V
    .registers 2

    .prologue
    .line 621
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse$1;, "Lcom/google/common/collect/HashBiMap$Inverse.1;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse$1;, "Lcom/google/common/collect/HashBiMap$Inverse.1;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$Inverse$1$1;-><init>(Lcom/google/common/collect/HashBiMap$Inverse$1;)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse$1;, "Lcom/google/common/collect/HashBiMap$Inverse.1;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    return-object v0
.end method
