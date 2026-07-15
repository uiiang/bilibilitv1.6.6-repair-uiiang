.class Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;
.super Ljava/lang/Object;
.source "AreaVideoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->fetchData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

.field final synthetic val$isLoadMore:Z


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    iput-boolean p2, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->val$isLoadMore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 119
    :try_start_0
    const-string v0, "AreaVideoListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading videos for tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->categoryTid:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$000(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->currentPage:I
    invoke-static {v2}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$100(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    # getter for: Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->categoryTid:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->access$000(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)I

    move-result v0

    invoke-static {v0}, Lmybl/RankingRequest;->getRanking(I)Ljava/util/List;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 209
    :cond_4c
    :goto_4c
    return-void

    .line 128
    :cond_4d
    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$1;-><init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_4c

    .line 195
    :catch_5c
    move-exception v0

    .line 196
    const-string v1, "AreaVideoListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading videos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 200
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;->this$0:Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1$2;-><init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4c
.end method
