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
    .line 2419
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

    .line 2422
    const-string v0, "PgcInfo"

    const-string v1, "=== runOnUiThread: showPgcInfo ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 2425
    if-eqz v0, :cond_17

    .line 2426
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2428
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2429
    if-eqz v0, :cond_24

    .line 2430
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 2433
    :cond_24
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Ljava/lang/String;)V

    .line 2434
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2435
    if-eqz v0, :cond_44

    .line 2436
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2439
    :cond_44
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2440
    if-eqz v0, :cond_51

    .line 2441
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2443
    :cond_51
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2444
    if-eqz v0, :cond_5e

    .line 2445
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2448
    :cond_5e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 2449
    const-string v0, "PgcInfo"

    const-string v1, "showPgcInfo done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2452
    const-string v0, "PgcInfo"

    const-string v1, "updateBasicVideoInfo done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2455
    const-string v0, "PgcInfo"

    const-string v1, "initDefaultPlayButtons done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2458
    const-string v0, "PgcInfo"

    const-string v1, "loadArchiveRelation done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_e2

    .line 2461
    const-string v0, "PgcInfo"

    const-string v1, "History already set from PGC progress, updating display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2463
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2464
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e1

    .line 2465
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 2471
    :cond_e1
    :goto_e1
    return-void

    .line 2468
    :cond_e2
    const-string v0, "PgcInfo"

    const-string v1, "No history, calling loadHistory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto :goto_e1
.end method
