.class Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;
.super Lcom/google/common/collect/Multisets$EntrySet;
.source "DescendingMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/DescendingMultiset;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$EntrySet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/DescendingMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/DescendingMultiset;)V
    .registers 2

    .prologue
    .line 118
    .local p0, "this":Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;, "Lcom/google/common/collect/DescendingMultiset.1EntrySetImpl;"
    iput-object p1, p0, Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;->this$0:Lcom/google/common/collect/DescendingMultiset;

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
    .line 126
    .local p0, "this":Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;, "Lcom/google/common/collect/DescendingMultiset.1EntrySetImpl;"
    iget-object v0, p0, Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;->this$0:Lcom/google/common/collect/DescendingMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/DescendingMultiset;->entryIterator()Ljava/util/Iterator;

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
    .line 121
    .local p0, "this":Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;, "Lcom/google/common/collect/DescendingMultiset.1EntrySetImpl;"
    iget-object v0, p0, Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;->this$0:Lcom/google/common/collect/DescendingMultiset;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 131
    .local p0, "this":Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;, "Lcom/google/common/collect/DescendingMultiset.1EntrySetImpl;"
    iget-object v0, p0, Lcom/google/common/collect/DescendingMultiset$1EntrySetImpl;->this$0:Lcom/google/common/collect/DescendingMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/DescendingMultiset;->forwardMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
