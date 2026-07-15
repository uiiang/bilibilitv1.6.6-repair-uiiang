.class Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;
.super Lbl/vn;
.source "AreaVideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->fetchPreciousData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 306
    :cond_14
    :goto_14
    return-void

    .line 253
    :cond_15
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$1;-><init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_14
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 246
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 315
    const-string v0, "AreaVideoListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading precious videos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 317
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2$2;-><init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    :cond_3e
    return-void
.end method
