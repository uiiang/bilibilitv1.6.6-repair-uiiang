.class Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1$1;
.super Ljava/lang/Object;
.source "AreaVideoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1$1;->this$2:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 181
    const-string v0, "AreaVideoListFragment"

    const-string v1, "========== Delayed focus request =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v1, "AreaVideoListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutManager in delayed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1$1;->this$2:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$1400(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1$1;->this$2:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$1500(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1$1;->this$2:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$1600(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 186
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1$1;->this$2:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$1700(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    .line 187
    const-string v2, "AreaVideoListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firstItem: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_6f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz v1, :cond_a6

    .line 190
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 191
    const-string v1, "AreaVideoListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v0, "AreaVideoListFragment"

    const-string v1, "First video card focused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_9f
    return-void

    .line 182
    :cond_a0
    const-string v0, "null"

    goto :goto_32

    .line 187
    :cond_a3
    const-string v0, "null"

    goto :goto_6f

    .line 194
    :cond_a6
    const-string v0, "AreaVideoListFragment"

    const-string v1, "firstItem is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 197
    :cond_ae
    const-string v0, "AreaVideoListFragment"

    const-string v1, "layoutManager is null in delayed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f
.end method
