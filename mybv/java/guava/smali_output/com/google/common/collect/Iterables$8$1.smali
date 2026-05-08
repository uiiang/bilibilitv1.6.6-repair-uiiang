.class Lcom/google/common/collect/Iterables$8$1;
.super Ljava/lang/Object;
.source "Iterables.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables$8;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field atStart:Z

.field final synthetic this$0:Lcom/google/common/collect/Iterables$8;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Iterables$8;Ljava/util/Iterator;)V
    .registers 4

    .prologue
    .line 851
    iput-object p1, p0, Lcom/google/common/collect/Iterables$8$1;->this$0:Lcom/google/common/collect/Iterables$8;

    iput-object p2, p0, Lcom/google/common/collect/Iterables$8$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Iterables$8$1;->atStart:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/common/collect/Iterables$8$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 861
    iget-object v1, p0, Lcom/google/common/collect/Iterables$8$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 862
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/common/collect/Iterables$8$1;->atStart:Z

    .line 863
    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/google/common/collect/Iterables$8$1;->atStart:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 869
    iget-object v0, p0, Lcom/google/common/collect/Iterables$8$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 870
    return-void

    .line 868
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method
