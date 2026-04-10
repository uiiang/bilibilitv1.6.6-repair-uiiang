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
    .line 2435
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2438
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2494
    :cond_d
    :goto_d
    return-void

    .line 2441
    :cond_e
    const-string v0, "PgcInfo"

    const-string v1, "=== runOnUiThread: showPgcInfo ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 2444
    if-eqz v0, :cond_22

    .line 2445
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2447
    :cond_22
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2448
    if-eqz v0, :cond_2f

    .line 2449
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 2452
    :cond_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 2453
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2456
    :cond_44
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Ljava/lang/String;)V

    .line 2457
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2458
    if-eqz v0, :cond_64

    .line 2459
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2462
    :cond_64
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2463
    if-eqz v0, :cond_71

    .line 2464
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2466
    :cond_71
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2467
    if-eqz v0, :cond_7e

    .line 2468
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2471
    :cond_7e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 2472
    const-string v0, "PgcInfo"

    const-string v1, "showPgcInfo done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2475
    const-string v0, "PgcInfo"

    const-string v1, "updateBasicVideoInfo done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2478
    const-string v0, "PgcInfo"

    const-string v1, "initDefaultPlayButtons done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2481
    const-string v0, "PgcInfo"

    const-string v1, "loadArchiveRelation done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_103

    .line 2484
    const-string v0, "PgcInfo"

    const-string v1, "History already set from PGC progress, updating display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2486
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2487
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 2488
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    goto/16 :goto_d

    .line 2491
    :cond_103
    const-string v0, "PgcInfo"

    const-string v1, "No history, calling loadHistory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto/16 :goto_d
.end method
