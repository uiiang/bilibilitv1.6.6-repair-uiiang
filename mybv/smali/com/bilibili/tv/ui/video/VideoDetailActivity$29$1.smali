.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->onSuccess(Lcom/bilibili/tv/api/video/PgcInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

.field final synthetic val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3049
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iput-object p2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3052
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3113
    :goto_d
    return-void

    .line 3056
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    .line 3057
    if-eqz v0, :cond_1b

    .line 3058
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3060
    :cond_1b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 3061
    if-eqz v0, :cond_28

    .line 3062
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 3065
    :cond_28
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 3066
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3069
    :cond_3d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Ljava/lang/String;)V

    .line 3070
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 3071
    if-eqz v0, :cond_5d

    .line 3072
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3075
    :cond_5d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 3076
    if-eqz v0, :cond_6a

    .line 3077
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3079
    :cond_6a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 3080
    if-eqz v0, :cond_77

    .line 3081
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 3084
    :cond_77
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 3085
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateSubscribeButtonUI()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 3088
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateStaffDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 3091
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 3094
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 3097
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 3100
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_f6

    .line 3102
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 3103
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 3104
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e9

    .line 3105
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    .line 3112
    :cond_e9
    :goto_e9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->val$pgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v1, v1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcRelatedVideos(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)V

    goto/16 :goto_d

    .line 3109
    :cond_f6
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29$1;->this$1:Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;->val$biliVideoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$5200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    goto :goto_e9
.end method
