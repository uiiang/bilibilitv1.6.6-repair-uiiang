.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

.field final synthetic val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0

    .prologue
    .line 2365
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2368
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2424
    :cond_d
    :goto_d
    return-void

    .line 2371
    :cond_e
    const-string v0, "PgcInfo"

    const-string v1, "=== runOnUiThread: showPgcInfo ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 2374
    if-eqz v0, :cond_22

    .line 2375
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2377
    :cond_22
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2378
    if-eqz v0, :cond_2f

    .line 2379
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 2382
    :cond_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 2383
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2386
    :cond_44
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Ljava/lang/String;)V

    .line 2387
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2388
    if-eqz v0, :cond_64

    .line 2389
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2392
    :cond_64
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2393
    if-eqz v0, :cond_71

    .line 2394
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2396
    :cond_71
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2397
    if-eqz v0, :cond_7e

    .line 2398
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2401
    :cond_7e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 2402
    const-string v0, "PgcInfo"

    const-string v1, "showPgcInfo done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2405
    const-string v0, "PgcInfo"

    const-string v1, "updateBasicVideoInfo done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2408
    const-string v0, "PgcInfo"

    const-string v1, "initDefaultPlayButtons done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2411
    const-string v0, "PgcInfo"

    const-string v1, "loadArchiveRelation done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_103

    .line 2414
    const-string v0, "PgcInfo"

    const-string v1, "History already set from PGC progress, updating display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2416
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2417
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 2418
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    goto/16 :goto_d

    .line 2421
    :cond_103
    const-string v0, "PgcInfo"

    const-string v1, "No history, calling loadHistory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto/16 :goto_d
.end method
