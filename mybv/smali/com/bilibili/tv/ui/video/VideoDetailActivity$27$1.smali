.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

.field final synthetic val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2842
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2845
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2906
    :goto_d
    return-void

    .line 2849
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 2850
    if-eqz v0, :cond_1b

    .line 2851
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2853
    :cond_1b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2854
    if-eqz v0, :cond_28

    .line 2855
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 2858
    :cond_28
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 2859
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2862
    :cond_3d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Ljava/lang/String;)V

    .line 2863
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2864
    if-eqz v0, :cond_5d

    .line 2865
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2868
    :cond_5d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2869
    if-eqz v0, :cond_6a

    .line 2870
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2872
    :cond_6a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2873
    if-eqz v0, :cond_77

    .line 2874
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2877
    :cond_77
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 2878
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateSubscribeButtonUI()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 2881
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateStaffDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2884
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2887
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2890
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2893
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_f6

    .line 2895
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2896
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2897
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e9

    .line 2898
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    .line 2905
    :cond_e9
    :goto_e9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v1, v1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcRelatedVideos(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)V

    goto/16 :goto_d

    .line 2902
    :cond_f6
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto :goto_e9
.end method
