.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

.field final synthetic val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2736
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2739
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2800
    :goto_d
    return-void

    .line 2743
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 2744
    if-eqz v0, :cond_1b

    .line 2745
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2747
    :cond_1b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2748
    if-eqz v0, :cond_28

    .line 2749
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 2752
    :cond_28
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 2753
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2756
    :cond_3d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Ljava/lang/String;)V

    .line 2757
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2758
    if-eqz v0, :cond_5d

    .line 2759
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2762
    :cond_5d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2763
    if-eqz v0, :cond_6a

    .line 2764
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2766
    :cond_6a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2767
    if-eqz v0, :cond_77

    .line 2768
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2771
    :cond_77
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 2772
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateSubscribeButtonUI()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 2775
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateStaffDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2778
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2781
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2784
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2787
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_f6

    .line 2789
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2790
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2791
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e9

    .line 2792
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    .line 2799
    :cond_e9
    :goto_e9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v1, v1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcRelatedVideos(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)V

    goto/16 :goto_d

    .line 2796
    :cond_f6
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto :goto_e9
.end method
