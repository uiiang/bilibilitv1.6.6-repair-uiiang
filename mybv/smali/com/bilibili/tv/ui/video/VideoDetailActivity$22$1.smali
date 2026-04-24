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
    .line 2282
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2285
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2344
    :cond_d
    :goto_d
    return-void

    .line 2290
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 2291
    if-eqz v0, :cond_1b

    .line 2292
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2294
    :cond_1b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2295
    if-eqz v0, :cond_28

    .line 2296
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 2299
    :cond_28
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 2300
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2303
    :cond_3d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Ljava/lang/String;)V

    .line 2304
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2305
    if-eqz v0, :cond_5d

    .line 2306
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2309
    :cond_5d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2310
    if-eqz v0, :cond_6a

    .line 2311
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2313
    :cond_6a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2314
    if-eqz v0, :cond_77

    .line 2315
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2318
    :cond_77
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 2321
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateStaffDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2324
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2327
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2330
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2333
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_e4

    .line 2335
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2336
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2337
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 2338
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    goto/16 :goto_d

    .line 2342
    :cond_e4
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto/16 :goto_d
.end method
