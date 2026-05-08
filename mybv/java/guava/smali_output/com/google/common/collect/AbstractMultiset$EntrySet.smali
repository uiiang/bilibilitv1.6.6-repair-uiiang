.class Lcom/google/common/collect/AbstractMultiset$EntrySet;
.super Lcom/google/common/collect/Multisets$EntrySet;
.source "AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$EntrySet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultiset;)V
    .registers 2

    .prologue
    .line 194
    .local p0, "this":Lcom/google/common/collect/AbstractMultiset$EntrySet;, "Lcom/google/common/collect/AbstractMultiset<TE;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$EntrySet;-><init>()V

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
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/google/common/collect/AbstractMultiset$EntrySet;, "Lcom/google/common/collect/AbstractMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multiset()Lcom/google/common/collect/Multiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/google/common/collect/AbstractMultiset$EntrySet;, "Lcom/google/common/collect/AbstractMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMultiset;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 207
    .local p0, "this":Lcom/google/common/collect/AbstractMultiset$EntrySet;, "Lcom/google/common/collect/AbstractMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultiset;->distinctElements()I

    move-result v0

    return v0
.end method
