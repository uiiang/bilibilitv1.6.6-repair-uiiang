.class Lbl/adq$2$1;
.super Ljava/lang/Object;
.source "adq.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/adq$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbl/adq$2;

.field final synthetic val$videos:Ljava/util/List;


# direct methods
.method constructor <init>(Lbl/adq$2;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lbl/adq$2$1;->this$1:Lbl/adq$2;

    iput-object p2, p0, Lbl/adq$2$1;->val$videos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    iget-object v0, p0, Lbl/adq$2$1;->this$1:Lbl/adq$2;

    iget-object v0, v0, Lbl/adq$2;->this$0:Lbl/adq;

    invoke-virtual {v0}, Lbl/adq;->a()Lbl/adq$j;

    move-result-object v0

    if-nez v0, :cond_13

    .line 404
    const-string v0, "AreaFragment"

    const-string v1, "[n()] adapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_12
    return-void

    .line 408
    :cond_13
    iget-object v0, p0, Lbl/adq$2$1;->this$1:Lbl/adq$2;

    iget-object v0, v0, Lbl/adq$2;->this$0:Lbl/adq;

    # setter for: Lbl/adq;->k:Z
    invoke-static {v0, v2}, Lbl/adq;->access$202(Lbl/adq;Z)Z

    .line 409
    iget-object v0, p0, Lbl/adq$2$1;->this$1:Lbl/adq$2;

    iget-object v0, v0, Lbl/adq$2;->this$0:Lbl/adq;

    invoke-virtual {v0}, Lbl/adq;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lbl/adq$2$1;->val$videos:Ljava/util/List;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lbl/adq$2$1;->val$videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 412
    :cond_31
    const-string v0, "AreaFragment"

    const-string v1, "[n()] No videos loaded, hiding loading"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lbl/adq$2$1;->this$1:Lbl/adq$2;

    iget-object v0, v0, Lbl/adq$2;->this$0:Lbl/adq;

    # setter for: Lbl/adq;->k:Z
    invoke-static {v0, v2}, Lbl/adq;->access$202(Lbl/adq;Z)Z

    .line 414
    iget-object v0, p0, Lbl/adq$2$1;->this$1:Lbl/adq$2;

    iget-object v0, v0, Lbl/adq$2;->this$0:Lbl/adq;

    invoke-virtual {v0}, Lbl/adq;->k()V

    goto :goto_12

    .line 418
    :cond_47
    const-string v0, "AreaFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[n()] Loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/adq$2$1;->val$videos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " videos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lbl/adq$2$1;->this$1:Lbl/adq$2;

    iget-object v0, v0, Lbl/adq$2;->this$0:Lbl/adq;

    invoke-virtual {v0}, Lbl/adq;->j()V

    .line 420
    iget-object v0, p0, Lbl/adq$2$1;->this$1:Lbl/adq$2;

    iget-object v0, v0, Lbl/adq$2;->this$0:Lbl/adq;

    invoke-virtual {v0}, Lbl/adq;->a()Lbl/adq$j;

    move-result-object v0

    iget-object v1, p0, Lbl/adq$2$1;->val$videos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbl/adq$j;->a(Ljava/util/List;)V

    goto :goto_12
.end method
