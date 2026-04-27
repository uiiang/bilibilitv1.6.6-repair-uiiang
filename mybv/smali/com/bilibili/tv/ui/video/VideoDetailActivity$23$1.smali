.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

.field final synthetic val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0

    .prologue
    .line 2377
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2380
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2440
    :goto_d
    return-void

    .line 2384
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 2385
    if-eqz v0, :cond_1b

    .line 2386
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2388
    :cond_1b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2389
    if-eqz v0, :cond_28

    .line 2390
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 2393
    :cond_28
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 2394
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2397
    :cond_3d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Ljava/lang/String;)V

    .line 2398
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2399
    if-eqz v0, :cond_5d

    .line 2400
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2403
    :cond_5d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2404
    if-eqz v0, :cond_6a

    .line 2405
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2407
    :cond_6a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2408
    if-eqz v0, :cond_77

    .line 2409
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2412
    :cond_77
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 2415
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateStaffDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2418
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2421
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2424
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2427
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_ef

    .line 2429
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2430
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2431
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e2

    .line 2432
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 2439
    :cond_e2
    :goto_e2
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v1, v1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcRelatedVideos(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)V

    goto/16 :goto_d

    .line 2436
    :cond_ef
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto :goto_e2
.end method
