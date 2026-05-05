.class Lcom/google/common/collect/ImmutableMultiset$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMultiset;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field remaining:I

.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultiset;

.field final synthetic val$entryIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 198
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$1;, "Lcom/google/common/collect/ImmutableMultiset.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultiset$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 204
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$1;, "Lcom/google/common/collect/ImmutableMultiset.1;"
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    if-gtz v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/google/common/collect/ImmutableMultiset$1;, "Lcom/google/common/collect/ImmutableMultiset.1;"
    iget v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    if-gtz v1, :cond_18

    .line 210
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 211
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->element:Ljava/lang/Object;

    .line 212
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    .line 214
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    :cond_18
    iget v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    .line 215
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->element:Ljava/lang/Object;

    return-object v1
.end method
