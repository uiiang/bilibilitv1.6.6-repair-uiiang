.class Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1$1;
.super Ljava/lang/Object;
.source "AreaVideoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1$1;->this$2:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1$1;->this$2:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$3000(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 286
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1$1;->this$2:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;->this$1:Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    iget-object v0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$3100(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_27

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 289
    const-string v0, "AreaVideoListFragment"

    const-string v1, "First precious video card focused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_27
    return-void
.end method
